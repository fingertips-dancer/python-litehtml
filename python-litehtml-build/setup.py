import os
import re
import subprocess
import sys
import warnings
from pathlib import Path

from setuptools import Extension, setup, find_packages
from setuptools.command.build_ext import build_ext

from pybind11 import get_include

OUTPUT_DIR = ''
# Convert distutils Windows platform specifiers to CMake -A arguments
PLAT_TO_CMAKE = {
    "win32": "Win32",
    "win-amd64": "x64",
    "win-arm32": "ARM",
    "win-arm64": "ARM64",
}


# A CMakeExtension needs a sourcedir instead of a file list.
# The name must be the _single_ output extension from the CMake build.
# If you need multiple extensions, see scikit-build.
class CMakeExtension(Extension):
    def __init__(self, name: str, sourcedir: str = "") -> None:
        super().__init__(name, sources=[])
        self.sourcedir = os.fspath(Path(sourcedir).resolve())


class CMakeBuild(build_ext):
    def build_extension(self, ext: CMakeExtension) -> None:
        # Must be in this form due to bug in .resolve() only fixed in Python 3.10+
        ext_fullpath = Path.cwd() / self.get_ext_fullpath(ext.name)  # type: ignore[no-untyped-call]
        extdir = ext_fullpath.parent.resolve()
        global OUTPUT_DIR
        OUTPUT_DIR = extdir

        # Using this requires trailing slash for auto-detection & inclusion of
        # auxiliary "native" libs

        debug = int(os.environ.get("DEBUG", 0)) if self.debug is None else self.debug
        cfg = "Debug" if debug else "Release"

        # CMake lets you override the generator - we need to check this.
        # Can be set with Conda-Build, for example.
        cmake_generator = os.environ.get("CMAKE_GENERATOR", "")

        # Set Python_EXECUTABLE instead if you use PYBIND11_FINDPYTHON
        # EXAMPLE_VERSION_INFO shows you how to pass a value into the C++ code
        # from Python.
        cname = ext.name
        cmake_args = [
            f"-DCMAKE_LIBRARY_OUTPUT_DIRECTORY={extdir}{os.sep}{cname}{os.sep}",
            f"-DPYTHON_EXECUTABLE={sys.executable}",
            f"-DCMAKE_BUILD_TYPE={cfg}",  # not used on MSVC, but no harm
            "-DPYBIND11_INCLUDE_DIR={}".format(get_include()),
            "-DLITEHTML_BUILD_TESTING=OFF",
            "-DLITEHTMLPY_BUILD_TESTING=OFF",
            "-Wno-dev",
        ]
        build_args = []
        # Adding CMake arguments set as environment variable
        # (needed e.g. to build for ARM OSx on conda-forge)
        if "CMAKE_ARGS" in os.environ:
            cmake_args += [item for item in os.environ["CMAKE_ARGS"].split(" ") if item]

        if self.compiler.compiler_type != "msvc":
            # Using Ninja-build since it a) is available as a wheel and b)
            # multithreads automatically. MSVC would require all variables be
            # exported for Ninja to pick it up, which is a little tricky to do.
            # Users can override the generator with CMAKE_GENERATOR in CMake
            # 3.15+.
            if not cmake_generator or cmake_generator == "Ninja":
                try:
                    import ninja  # noqa: F401

                    ninja_executable_path = Path(ninja.BIN_DIR) / "ninja"
                    cmake_args += [
                        "-GNinja",
                        f"-DCMAKE_MAKE_PROGRAM:FILEPATH={ninja_executable_path}",
                    ]
                except ImportError:
                    pass

        else:

            # Single config generators are handled "normally"
            single_config = any(x in cmake_generator for x in {"NMake", "Ninja"})

            # CMake allows an arch-in-generator style for backward compatibility
            contains_arch = any(x in cmake_generator for x in {"ARM", "Win64"})

            # Specify the arch if using MSVC generator, but only if it doesn't
            # contain a backward-compatibility arch spec already in the
            # generator name.
            if not single_config and not contains_arch:
                cmake_args += ["-A", PLAT_TO_CMAKE[self.plat_name]]

            # Multi-config generators have a different way to specify configs
            if not single_config:
                cmake_args += [
                    f"-DCMAKE_LIBRARY_OUTPUT_DIRECTORY_{cfg.upper()}={extdir}"
                ]
                build_args += ["--config", cfg]

        if sys.platform.startswith("darwin"):
            # Cross-compile support for macOS - respect ARCHFLAGS if set
            archs = re.findall(r"-arch (\S+)", os.environ.get("ARCHFLAGS", ""))
            if archs:
                cmake_args += ["-DCMAKE_OSX_ARCHITECTURES={}".format(";".join(archs))]

        # Set CMAKE_BUILD_PARALLEL_LEVEL to control the parallel build level
        # across all generators.
        if "CMAKE_BUILD_PARALLEL_LEVEL" not in os.environ:
            # self.parallel is a Python 3 only way to set parallel jobs by hand
            # using -j in the build_ext call, not supported by pip or PyPA-build.
            if hasattr(self, "parallel") and self.parallel:
                # CMake 3.12+ only.
                build_args += [f"-j{self.parallel}"]

        subprocess.run(
            ["cmake", ext.sourcedir, *cmake_args], check=True
        )
        subprocess.run(
            ["cmake", "--build", ".", *build_args], check=True
        )
        print(cmake_args)


# The information here can also be placed in setup.cfg - better separation of
# logic and declaration, and simpler if you include description/version in a file.
r = setup(
    name="litehtmlpy",
    version="0.1.0",
    author="Grzegorz Makarewicz",
    author_email="mak@trisoft.com.pl",
    description="LiteHtmlPy is a solution that helps python developers to create printouts and previews of html5/css3 pages without using a web browser.",
    long_description="",
    ext_modules=[
        CMakeExtension("litehtmlpy")
    ],
    cmdclass={"build_ext": CMakeBuild},
    zip_safe=False,
    #    extras_require={"test": ["pytest>=6.0"]},
    python_requires=">=3.7",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
)

try:
    from pybind11_stubgen import run, to_output_and_subdir, arg_parser, CLIArgs, Printer, stub_parser_from_args, Writer
except ImportError:
    warnings.warn('If you want to auto generate .pyi for litehtml, please install pybind11_stubgen')
    sys.exit(0)
except Exception as e:
    raise e

# prepare
output_dir = OUTPUT_DIR
sys.path.insert(0, str(OUTPUT_DIR))
module_name = 'litehtmlpy'
stub_extension = 'pyi'
print_invalid_expressions_as_is = False
args = arg_parser().parse_args(namespace=CLIArgs())
parser = stub_parser_from_args(args)
printer = Printer(invalid_expr_as_ellipses=not print_invalid_expressions_as_is)

out_dir, sub_dir = to_output_and_subdir(
    output_dir=output_dir,
    module_name=module_name,
    root_suffix=None
)

run(
    parser,
    printer,
    module_name,
    out_dir,
    sub_dir=sub_dir,
    dry_run=args.dry_run,
    writer=Writer(stub_ext=stub_extension),
)


