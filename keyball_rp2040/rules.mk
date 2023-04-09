# This file intentionally left blank
SPLIT_KEYBOARD = yes
SERIAL_DRIVER = vendor

POINTING_DEVICE_ENABLE = yes
POINTING_DEVICE_DRIVER = pmw3360
QUANTUM_LIB_SRC += spi_master.c # Optical sensor use SPI to communicate

# This is unnecessary for processing KC_MS_BTN*.
MOUSEKEY_ENABLE = no

# Enabled only one of RGBLIGHT and RGB_MATRIX if necessary.
RGBLIGHT_ENABLE = no        # Enable RGBLIGHT
# RGBLIGHT_DRIVER = WS2812
RGB_MATRIX_ENABLE = no      # Enable RGB_MATRIX (not work yet)
# RGB_MATRIX_DRIVER = WS2812

#
WS2812_DRIVER = vendor

# Do not enable SLEEP_LED_ENABLE. it uses the same timer as BACKLIGHT_ENABLE
SLEEP_LED_ENABLE = no       # Breathing sleep LED during USB suspend

# To support OLED
OLED_ENABLE = no                # Please Enable this in each keymaps.
OLED_DRIVER     = SSD1306
SRC += lib/oledkit/oledkit.c    # OLED utility for Keyball series.

# Include common library
# SRC += lib/keyball/keyball.c

# Disable other features to squeeze firmware size
SPACE_CADET_ENABLE = no
MAGIC_ENABLE = no