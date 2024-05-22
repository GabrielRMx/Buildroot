################################################################################
#
# sdl
#
################################################################################

SDL_VERSION = d3f2de7f297d761a7dc5b0dda3c7b5d7bd49eac9
SDL_SITE = https://github.com/libsdl-org/SDL.git
SDL_SITE_METHOD = git
SDL_INSTALL_STAGING = YES
SDL_CONF_OPTS = -DCMAKE_BUILD_TYPE=Release -S $(O)/build/sdl-$(SDL_VERSION)/outoftree/sdl-$(SDL_VERSION) -B $(O)/build/sdl-$(SDL_VERSION)


SDL_DEPENDENCIES += host-automake host-autoconf host-libtool
HOST_SDL_DEPENDENCIES += host-automake host-autoconf host-libtool


define SDL_EXTRACT_CMDS
	mkdir $(@D)/outoftree
	tar xvf $(DL_DIR)/sdl/$(SDL_SOURCE) -C $(@D)/outoftree
endef

$(eval $(cmake-package))