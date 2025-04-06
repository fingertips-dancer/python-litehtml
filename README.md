# python-litehtml

## 这是做什么的？？？

这是一款基于pybind11的python package，这是对于litehtml的python实现。

python-litehtml可以解析html+css其中的元素,并计算元素所在的位置。

python-litehtml仅解析元素的位置,而不会提供具体的渲染功能。如果需要，可以搭配其他库完成渲染功能。

## 构建 .pyd 文件

为了使用python-litehtml, 你需要执行一下代码

```bat
cd ./python-litehtml-build
python setup.py build
```

你会在 ***./python-litehtml-build/bulid*** 中找到构建好的 **.pyd** 文件。

如果已安装 [pybind11-stubgen](https://github.com/sizmailov/pybind11-stubgen) 程序会试图生成对应的 **.pyi**。(由 [pybind11-stubgen](https://github.com/sizmailov/pybind11-stubgen) 生成的 **.pyi** 可靠性还未验证)

如果你希望使用预编写好的python-package，请将构建后的 **.pyd**(**.pyi**) 文件复制到 ***./litehtml*** 中
## 正在施工！！！

### 通过 python-litehtml实现的PyQt-Html-Widget

![img](https://github.com/fingertips-dancer/python-litehtml/blob/main/doc/img/pyqt-html-widget.png)

你可以在 ***eval/qt_eval.py*** 找到它

# 项目依赖

本项目来源以下项目

- [litehtml](https://github.com/litehtml/litehtml)
- [litehtmlpy](https://github.com/m32/litehtmlpy)
