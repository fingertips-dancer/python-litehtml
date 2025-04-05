import re


def hex2rgba(hex_color):
    hex_color = str(hex_color)

    # rgba
    return (
        int(hex_color[0:2], 16),
        int(hex_color[2:4], 16),
        int(hex_color[4:6], 16),
        int(hex_color[6:8], 16)
    )


