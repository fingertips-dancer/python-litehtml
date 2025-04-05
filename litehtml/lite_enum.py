from . import litehtmlpy


class AttributeMeta(type):
    """元类，用于合并基类的 'attributes' 字典到子类。"""

    def __new__(cls, name, bases, namespace):
        if '__annotations__' not in namespace:
            return super().__new__(cls, name, bases, namespace)
        annotations = namespace['__annotations__']
        for key, _ in annotations.items():
            namespace[key] = getattr(getattr(litehtmlpy, name), key)

        # 创建类对象
        return super().__new__(cls, name, bases, namespace)


class LiteEnum(metaclass=AttributeMeta):
    pass


class style_display(LiteEnum):
    display_none: str
    display_block: str
    display_inline: str
    display_inline_block: str
    display_inline_table: str
    display_list_item: str
    display_table: str
    display_table_caption: str
    display_table_cell: str
    display_table_column: str
    display_table_column_group: str
    display_table_footer_group: str
    display_table_header_group: str
    display_table_row: str
    display_table_row_group: str
    display_inline_text: str
    display_flex: str
    display_inline_flex: str


class list_style_type(LiteEnum):
    ''' enum '''
    list_style_type_none: str
    list_style_type_circle: str
    list_style_type_disc: str
    list_style_type_square: str
    list_style_type_armenian: str
    list_style_type_cjk_ideographic: str
    list_style_type_decimal: str
    list_style_type_decimal_leading_zero: str
    list_style_type_georgian: str
    list_style_type_hebrew: str
    list_style_type_hiragana: str
    list_style_type_hiragana_iroha: str
    list_style_type_katakana: str
    list_style_type_katakana_iroha: str
    list_style_type_lower_alpha: str
    list_style_type_lower_greek: str
    list_style_type_lower_latin: str
    list_style_type_lower_roman: str
    list_style_type_upper_alpha: str
    list_style_type_upper_latin: str
    list_style_type_upper_roman: str


class background_repeat(LiteEnum):
    """ enum """
    background_repeat_repeat: str
    background_repeat_repeat_x: str
    background_repeat_repeat_y: str
    background_repeat_no_repeat: str


class draw_flag(LiteEnum):
    """ enum """
    draw_root: str
    draw_block: str
    draw_floats: str
    draw_inlines: str
    draw_positioned: str


class background_attachment(LiteEnum):
    """ enum """
    background_attachment_scroll: str
    background_attachment_fixed: str


class font_size(LiteEnum):
    """ enum """
    font_size_xx_small: str
    font_size_x_small: str
    font_size_small: str
    font_size_medium: str
    font_size_large: str
    font_size_x_large: str
    font_size_xx_large: str
    font_size_smaller: str
    font_size_larger: str


class line_height(LiteEnum):
    """ enum """
    line_height_normal: str


class font_style(LiteEnum):
    """ enum """
    font_style_normal: str
    font_style_italic: str


class font_variant(LiteEnum):
    """ enum """
    font_variant_normal: str
    font_variant_small_caps: str


class font_weight(LiteEnum):
    """ enum """
    font_weight_normal: str
    font_weight_bold: str
    font_weight_bolder: str
    font_weight_lighter: str


class text_transform(LiteEnum):
    """ enum """
    text_transform_none: str
    text_transform_capitalize: str
    text_transform_uppercase: str
    text_transform_lowercase: str


class render_type(LiteEnum):
    """ enum """
    render_all: str
    render_no_fixed: str
    render_fixed_only: str
