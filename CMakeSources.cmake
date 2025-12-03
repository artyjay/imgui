#-------------------------------------------------------------------------------
# Copyright (c) Bob Johnson 2025 - All Rights Reserved
#
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.
#-------------------------------------------------------------------------------

set(SRC_BUILD_CONFIG
	"CMakeLists.txt"
	"CMakeSources.cmake"
)

set(SRC_MAIN
	"imconfig.h"
	"imgui.h"
	"imgui_internal.h"
	"imstb_rectpack.h"
	"imstb_textedit.h"
	"imstb_truetype.h"
	"imgui.cpp"
	"imgui_demo.cpp"
	"imgui_draw.cpp"
	"imgui_tables.cpp"
	"imgui_widgets.cpp"
	"misc/cpp/imgui_stdlib.h"
	"misc/cpp/imgui_stdlib.cpp"
)

set(SRC_SDL3_BACKEND
	"backends/imgui_impl_sdl3.h"
	"backends/imgui_impl_sdl3.cpp"
)

set(SRC_SDL3_GPU_BACKEND
	"backends/imgui_impl_sdlgpu3.h"
	"backends/imgui_impl_sdlgpu3_shaders.h"
	"backends/imgui_impl_sdlgpu3.cpp"
)

set(SRC_SDL3_RENDERER_BACKEND
	"backends/imgui_impl_sdlrenderer3.h"
	"backends/imgui_impl_sdlrenderer3.cpp"
)

set(SRC_OPENGL3_BACKEND
	"backends/imgui_impl_opengl3.cpp"
	"backends/imgui_impl_opengl3.h"
)

set(SRC_GLFW_BACKEND
	"backends/imgui_impl_glfw.h"
	"backends/imgui_impl_glfw.cpp"
)

set(SRC_VULKAN_BACKEND
	"backends/imgui_impl_vulkan.h"
	"backends/imgui_impl_vulkan.cpp"
)

set(SRC_NATVIS
	"misc/debuggers/imgui.natvis"
)

#-------------------------------------------------------------------------------
# Group sources for IDE
#-------------------------------------------------------------------------------
source_group("build" FILES ${SRC_BUILD_CONFIG})
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${SRC_MAIN} ${SRC_SDL3_BACKEND} ${SRC_SDL3_GPU_BACKEND} ${SRC_SDL3_OPENGL_BACKEND} ${SRC_NATVIS})
