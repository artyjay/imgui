#-------------------------------------------------------------------------------
# Copyright (c) Bob Johnson 2025 - All Rights Reserved
#
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.
#-------------------------------------------------------------------------------

add_library(imgui STATIC)

set_target_properties(imgui
	PROPERTIES
		OUTPUT_NAME     "imgui-$<LOWER_CASE:${BUILD_ARCH_NAME}>-$<LOWER_CASE:$<CONFIG>>"
		LINKER_LANGUAGE CXX
		FOLDER          "Dependencies"
)

# Source
include(CMakeSources.cmake)

target_sources(imgui
	PRIVATE 
		${SRC_BUILD_CONFIG}
		${SRC_MAIN}
)

# Note: Requires SDL linking to the target to compile
if(IMGUI_WITH_SDL3)
	target_sources(imgui
		PRIVATE ${SRC_SDL3_BACKEND}
	)
endif()

# Note: Requires SDL linking to the target to compile
if(IMGUI_WITH_SDL3_GPU)
	target_sources(imgui
		PRIVATE ${SRC_SDL3_GPU_BACKEND}
	)
endif()

if(IMGUI_WITH_NATVIS)
	target_sources(imgui
		PRIVATE ${SRC_NATVIS}
	)
endif()


# Include
target_include_directories(imgui
PUBLIC   ./include
		 ./backends/
		 ./misc/cpp/
)

# Dependencies - note: These are extenally defined targets.
if(IMG_WITH_SDL3 OR IMGUI_WITH_SDL3_GPU)
	# Note: Assumes there is a target named 'dependency::sdl' that links to SDL3
	target_link_libraries(imgui PUBLIC dependency::sdl3)
endif()

# Export the target in dependency namespace as a convention.
add_library(dependency::imgui ALIAS imgui)

#-------------------------------------------------------------------------------

