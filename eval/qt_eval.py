import sys

from QHtmlWidget import HtmlWidget

from PyQt5.QtWidgets import QApplication
from PyQt5.QtCore import QUrl
fname = '../rc/demo.html'
if __name__ == "__main__":
    app = QApplication(sys.argv)
    html = open(fname, 'rt', encoding='utf-8').read()
    view = HtmlWidget()
    view.setUrl(url=QUrl.fromLocalFile(fname))
    view.resize(600, 800)
    view.show()
    app.exec()
