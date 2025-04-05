from PyQt5.QtCore import QPointF, QRect
from PyQt5.QtGui import QPainter,QColor
from litehtml import lite_type, utils


def list_style_type_disc(painter: QPainter, hdc: int, marker: lite_type.list_marker):
    painter.setBrush(QColor(*utils.hex2rgba(marker.color)))
    painter.drawEllipse(QRect(
        marker.pos.x,
        marker.pos.y,
        marker.pos.width,
        marker.pos.height,
    ))


def draw_list_marker(painter: QPainter, hdc: int, marker: lite_type.list_marker):
    {
        lite_type.list_style_type.list_style_type_disc: list_style_type_disc
    }[marker.marker_type](painter=painter, hdc=hdc, marker=marker)

