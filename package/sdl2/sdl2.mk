################################################################################
#
# sdl2
#
################################################################################

SDL2_VERSION = 2.0.22
SDL2_SOURCE = SDL2-$(SDL2_VERSION).tar.gz
SDL2_SITE = http://www.libsdl.org/release
SDL2_LICENSE = Zlib
SDL2_LICENSE_FILES = LICENSE.txt
SDL2_CPE_ID_VENDOR = libsdl
SDL2_CPE_ID_PRODUCT = simple_directmedia_layer
SDL2_INSTALL_STAGING = YES
SDL2_CONF_OPTS = -DSDL_TESTS=ON -DSDL_TESTS=ON -DBUILD_EXAMPLE=1 -DBUILD_EXAMPLES=1 -S $(O)/build/sdl2-2.0.22/outoftree -B $(O)/build/sdl2-2.0.22
$(eval $(cmake-package))
