from . import litehtmlpy
from typing import Callable, Any, List
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


class background_layer_image(litehtmlpy.background_layer_image):
    url: str
    base_url: str


class background_layer_color(litehtmlpy.background_layer_color):
    color: str


class background_layer_color_point(litehtmlpy.background_layer_color_point):
    offset: str
    color: str
    hint: str


class color_point:
    offset: float
    color: str
    hint: float


class background_layer(litehtmlpy.background_layer):
    border_box: position
    border_radius: border_radiuses
    clip_box: position
    origin_box: position
    attachment: background_attachment
    repeat: background_repeat
    is_root: bool

    class image:
        url: str
        base_url: str

    color_point: color_point

    class color:
        color: str

    class gradient_base:
        color_points: List[color_point]


class background(litehtmlpy.background):
    m_image: List
    # m_baseurl
    # m_color
    # m_attachment
    # m_position_x
    # m_position_y
    # m_size
    # m_repeat
    # m_clip
    # m_origin

    is_empty: Callable[[], bool]
    get_layers_number: Callable[[], int]
    get_layer: Callable[[int, position, Any, background_layer], bool]
    get_layer_type: Callable
    get_image_layer: Callable
    get_color_layer: Callable
    get_linear_gradient_layer: Callable
    get_radial_gradient_layer: Callable
    get_conic_gradient_layer: Callable
    draw_layer: Callable[[int, int, background_layer, 'document_container'], None]
