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

from . import draw


class QHtmlDoc(litehtml.document_container):
    @staticmethod
    def mergeUrl(src: str, base_url: str, root: str) -> str:
        if isinstance(base_url, str) and base_url != '':
            raise Exception()
        elif root is not None:
            url = os.path.join(root, src)
        else:
            url = src
        return url

    def __init__(self):
        super(QHtmlDoc, self).__init__()
        self.hfont = 0
        self.__pixmaps: Dict[str, QPixmap] = {}
        self.__fonts: Dict[int, QFont] = {}

    def setPainter(self, painter: QPainter) -> None:
        self.__painter = painter

    def create_font(self,
                    family: int,
                    size: int,
                    weight: int,
                    italic: int,
                    decoration: int) -> Tuple[int, int, int, int, int]:
        font = QFont(family, 1, weight, italic)
        font.setPixelSize(size)
        font.setBold(font.bold())
        fm = QFontMetrics(font)
        self.hfont += 1
        self.__fonts[self.hfont] = font
        r = [self.hfont, fm.height(), fm.ascent(), fm.descent(), fm.xHeight()]
        return r

    def load_image(self, src: str, base_url: Union[str, None], redraw_on_ready: bool) -> None:
        url = self.mergeUrl(src=src, root=self.root(), base_url=base_url)
        self.__pixmaps[url] = QPixmap(url)

    def text_width(self, text: str, hFont: int) -> int:
        fm = QFontMetrics(self.__fonts[hFont])
        return fm.boundingRect(text).width()

    def get_image_size(self, src: str, base_url: Union[str, None], size: lite_type.size) -> None:
        pixmap = self.__pixmaps[self.mergeUrl(src=src, base_url=base_url, root=self.root())]
        size.width = pixmap.width()
        size.height = pixmap.height()

    def import_css(self, text: str, url: str, base_url: str) -> str:
        with open(self.mergeUrl(src=url, root=self.root(), base_url=base_url), 'r', encoding='utf-8') as f:
            css = f.read()
        return css

    def draw_text(self, hdc: int, text: int, hFont: int, color: str, pos: lite_type.position):
        painter = self.__painter
        font = self.__fonts[hFont]
        painter.setFont(font)
        painter.setPen(QColor(*utils.hex2rgba(color)))
        painter.drawText(QPoint(pos.x, pos.y), text)

    def draw_list_marker(self, hdc: int, marker: lite_type.list_marker):
        draw.draw_list_marker(painter=self.__painter, hdc=hdc, marker=marker)

    def draw_image(self, hdc: int, layer: lite_type.background_layer, url: str, base_url: str):
        painter = self.__painter
        pixmap = self.__pixmaps[self.mergeUrl(base_url=base_url, src=url, root=self.root())]
        rect = QRect(layer.border_box.x,
                     layer.border_box.y,
                     layer.border_box.width,
                     layer.border_box.height, )
        painter.drawPixmap(rect, pixmap)
