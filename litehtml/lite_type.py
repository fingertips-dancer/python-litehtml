from . import litehtmlpy
from typing import Callable, Any
from enum import Enum
from .lite_enum import list_style_type, background_repeat, background_attachment


class position(litehtmlpy.position):
    x: int
    y: int
    width: int
    height: int
    right: Callable[[], int]
    left: Callable[[], int]
    top: Callable[[], int]
    bottom: Callable[[], int]
    clear: Callable[[], None]
    move_to: Callable[[int, int], None]
    does_intersect: Callable[['position'], bool]
    empty: Callable[[], bool]
    is_point_inside: Callable[[int, int], bool]


class size(litehtmlpy.size):
    width: int
    height: int


class font_metrics(litehtmlpy.font_metrics):
    font_size: int
    height: int
    ascent: int
    descent: int
    x_height: int
    ch_width: int
    draw_spaces: bool
    base_line: Callable[[], int]


class list_marker(litehtmlpy.list_marker):
    image: str
    baseurl: str
    marker_type: list_style_type
    color: str
    pos: position
    index: int
    font: int


class border_radiuses(litehtmlpy.border_radiuses):
    top_left_x: int
    top_left_y: int
    top_right_x: int
    top_right_y: int
    bottom_right_x: int
    bottom_right_y: int
    bottom_left_x: int
    bottom_left_y: int
    fix_values: Callable[[], None]
    fix_values: Callable[[int, int], None]


class background_layer(litehtmlpy.background_layer):
    border_box: position
    border_radius: border_radiuses
    clip_box: position
    origin_box: position
    attachment: background_attachment
    repeat: background_repeat
    is_root: bool
