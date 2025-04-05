# Install script for directory: E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/litehtmlpy")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/Debug/litehtml.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/Release/litehtml.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/MinSizeRel/litehtml.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/RelWithDebInfo/litehtml.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/litehtml" TYPE FILE FILES
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/background.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/borders.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/codepoint.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/css_length.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/css_margins.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/css_offsets.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/css_position.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/css_selector.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/css_parser.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/css_tokenizer.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/document.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/document_container.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_anchor.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_base.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_before_after.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_body.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_break.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_cdata.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_comment.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_div.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_font.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_image.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_link.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_para.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_script.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_space.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_style.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_table.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_td.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_text.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_title.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/el_tr.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/element.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/encodings.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/html.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/html_tag.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/html_microsyntaxes.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/iterators.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/media_query.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/os_types.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/style.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/stylesheet.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/table.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/tstring_view.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/types.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/url.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/url_path.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/utf8_strings.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/web_color.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/num_cvt.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/css_properties.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/line_box.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/render_item.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/render_flex.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/render_image.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/render_inline.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/render_table.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/render_inline_context.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/render_block_context.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/render_block.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/master_css.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/string_id.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/formatting_context.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/flex_item.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/flex_line.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/include/litehtml/gradient.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/cmake/litehtmlConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml/litehtmlTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml/litehtmlTargets.cmake"
         "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/CMakeFiles/Export/1858d3296707c77b4f85418fd0121701/litehtmlTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml/litehtmlTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml/litehtmlTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/CMakeFiles/Export/1858d3296707c77b4f85418fd0121701/litehtmlTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/CMakeFiles/Export/1858d3296707c77b4f85418fd0121701/litehtmlTargets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/CMakeFiles/Export/1858d3296707c77b4f85418fd0121701/litehtmlTargets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/CMakeFiles/Export/1858d3296707c77b4f85418fd0121701/litehtmlTargets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/litehtml" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/CMakeFiles/Export/1858d3296707c77b4f85418fd0121701/litehtmlTargets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/cmake_install.cmake")

endif()

