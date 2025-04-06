import logging, atexit
import warnings

from . import litehtmlpy, lite_type
from typing import Tuple, List, Any, Dict, Union
from dataclasses import dataclass
from PIL import Image, ImageFont, ImageDraw

logger = logging.getLogger(__name__)


class document_container(litehtmlpy.document_container):
    _instances = []

    def __init__(self):
        # super().__init__()
        litehtmlpy.document_container.__init__(self)
        self.hfont = 0
        self.__fonts: Dict[int, Any] = {}
        self.__images = {}
        self.__size = (int(210), int(297))
        self._ppi = (96, 96)
        self.clips = []
        self.__root = ''
        self.__baseUrl = ''
        self._draw_queue = []  # draw queue
        document_container._instances.append(self)

    def setSize(self, width: int, height: int) -> None:
        ''' setter '''
        assert isinstance(width, int) and isinstance(height, int), ''
        self.__size = (width, height)

    def setPPI(self, ppi: Tuple[int, int]) -> None:
        self._ppi = ppi

    def setRoot(self, root: str) -> None:
        self.__root = root

    def create_font(self,
                    family: int,
                    size: int,
                    weight: int,
                    italic: int,
                    decoration: int) -> Tuple[int, int, int, int, int]:
        """
        create a new font
        :param family:
        :param size:
        :param weight:
        :param italic:
        :param decoration:
        :return: the idx of font, height, ascent, descent, x_height
        """
        warnings.warn(f'You need to overload this function <create_font>')
        return [self.hfont, 15, 4, 19, 19]

    def load_image(self, src: str, base_url: Union[str, None], redraw_on_ready: bool) -> None:
        """
        load image
        :param src:
        :param base_url:
        :param redraw_on_ready: whether
        :return:
        """
        warnings.warn(f'You need to overload this function <get_image_size>')

    def text_width(self, text: str, hFont: int) -> int:
        """
        cal the width of text
        :param text: text
        :param hFont: the idx of font
        :return: int
        """
        raise NotImplementedError('You must overload')

    def pt_to_px(self, pt) -> int:
        logger.debug('pt_to_px(%d)', pt)
        pt = int(pt * self._ppi[1] / 72)
        return pt

    def get_default_font_size(self) -> int:
        return 27

    # ----- get -----
    def get_default_font_name(self) -> str:
        return 'Times New Roman'

    def get_client_rect(self, client: lite_type.position) -> None:
        logger.debug('get_client_rect(%s, %s, %s, %s)', client.x, client.y, client.width, client.height)
        client.clear()
        client.width = self.size()[0]
        client.height = self.size()[1]

    def get_image_size(self, src: str, base_url: Union[str, None], size: lite_type.size) -> None:
        """
        cal the size of image
        :param src:
        :param base_url:
        :param size:
        :return:
        """
        warnings.warn(f'You need to overload this function <get_image_size>')

    # ------------ draw ------------
    def draw_text(self, hdc: int, text: int, hFont: int, color: str, pos: lite_type.position) -> None:
        warnings.warn(f'You need to overload this function <draw_text>')

    def draw_list_marker(self, hdc: int, marker: lite_type.list_marker) -> None:
        warnings.warn(f'You need to overload this function <draw_list_marker>')

    def draw_image(self, hdc: int, layer: lite_type.background_layer, url: str, base_url: str) -> None:
        warnings.warn(f'You need to overload this function <draw_image>')

    def draw_solid_fill(self, hdc: int, layer: lite_type.background_layer, color: str) -> None:
        warnings.warn(f'You need to overload this function <draw_solid_fill>')

    def draw_linear_gradient(self, hdc: int, layer: lite_type.background_layer, gradient) -> None:
        warnings.warn(f'You need to overload this function <draw_linear_gradient>')

    def draw_radial_gradient(self, hdc: int, layer: lite_type.background_layer, gradient):
        warnings.warn(f'You need to overload this function <draw_radial_gradient>')

    def draw_conic_gradient(self, hdc: int, layer: lite_type.background_layer, gradient):
        warnings.warn(f'You need to overload this function <draw_conic_gradient>')

    def draw_borders(self, hdc, borders, draw_pos, root):
        warnings.warn(f'You need to overload this function <draw_borders>')

    #  ----- set -----
    def set_caption(self, caption):
        warnings.warn(f'You need to overload this function <set_caption>')
        # logger.debug('set_caption(%s)', caption)

    def set_base_url(self, base_url):
        warnings.warn(f'You need to overload this function <set_base_url>')

    def set_cursor(self, cursor):
        logger.debug('set_cursor(%s)', cursor)

    def set_clip(self, pos, radius):
        logger.debug('set_clip(%s, %s)', pos, radius)
        self.clips.push((pos, radius))

    def link(self, doc, el):
        warnings.warn(f'You need to overload this function <link>')

    # ----- on -----
    def on_mouse_event(self, el, event):
        warnings.warn(f'You need to overload this function <on_mouse_event>')

    # ----- del ----
    def del_clip(self):
        logger.debug('del_clip()')
        if self.clips:
            self.clips.pop()

    def delete_font(self, hFont):
        warnings.warn(f'You need to overload this function <delete_font>')

    def on_mouse_event(self, el, event):
        logger.debug('on_mouse_event(%s, %s)', el, event)

    def transform_text(self, text, tt):
        logger.debug('transform_text(%s, %d)', text, tt)

    def import_css(self, text: str, url: str, base_url: str) -> str:
        """
        :param text:
        :param url:
        :param base_url:
        :return: CSS that needs to be loaded
        """
        warnings.warn(f'You need to overload this function <import_css>')

    def get_media_features(self):
        warnings.warn(f'You need to overload this function <get_media_features>')
        return (
            2,  # media_type_screen
            self.size()[0],
            self.size()[1],
            1024,  # device width (screen width)
            800,  # device height (screen height)
            8,  # color
            0,  # monochrome
            0,  # color index
            96,  # resolution
        )

    def get_language(self):
        logger.debug('get_language()')
        return ('en', '')

    # ---------- User -------------
    def size(self) -> Tuple[int, int]:
        ''' property '''
        return self.__size

    def root(self) -> str:
        ''' property '''
        return self.__root
