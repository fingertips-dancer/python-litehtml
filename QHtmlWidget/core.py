import os.path

from PyQt5.QtWidgets import QWidget, QTextEdit
from PyQt5.QtGui import QTextDocument, QAbstractTextDocumentLayout, QTextCursor, QPaintEvent, QTextCharFormat
from PyQt5.QtGui import QPainter, QFont, QFontMetrics, QScreen, QPaintEvent, QPixmap, QColor
from PyQt5.QtCore import QRectF, Qt, QPointF, QSize, QUrl, QPoint, QRect
import litehtml
from litehtml import lite_type, utils
# import re
# litehtmlpy.litehtmlpy.debuglog(1)
from typing import Any, Dict, Tuple, Union
from .doc import QHtmlDoc


class HtmlWidget(QWidget):
    def __init__(self, parent=None):
        super(HtmlWidget, self).__init__(parent)
        self._cntr = QHtmlDoc()
        self.button = QTextEdit()

    def setHtml(self, html: str):
        self._doc = litehtml.fromString(self._cntr, html, None, None)
        self.update()

    def setUrl(self, url: QUrl):
        self._cntr.setRoot(root=os.path.dirname(url.toLocalFile()))
        with open(url.toLocalFile(), 'r', encoding='utf-8') as f:
            html = f.read()
        self.setHtml(html=html)

    def resizeEvent(self, e) -> None:
        super(HtmlWidget, self).resizeEvent(e)
        self._cntr.setSize(width=self.width(), height=self.height())
        self.update()

    def moveEvent(self, e) -> None:
        super(HtmlWidget, self).moveEvent(e)
        screen = self.screen()
        self._cntr.setPPI(ppi=(screen.physicalDotsPerInchX(), screen.physicalDotsPerInchY()))
        self.update()

    def paintEvent(self, e: QPaintEvent) -> None:
        super(HtmlWidget, self).paintEvent(e)
        painter = QPainter(self)
        painter.setRenderHint(QPainter.SmoothPixmapTransform)
        painter.setRenderHint(QPainter.Antialiasing)
        painter.setRenderHint(QPainter.TextAntialiasing)


        self._cntr.setPainter(painter)
        self._doc.render(self._cntr.size()[0], litehtml.lite_enum.render_type.render_all)
        clip = litehtml.lite_type.position(0, 0, self._doc.width(), self._doc.height())
        self._doc.draw(0, 0, 0, clip)

        painter.end()
