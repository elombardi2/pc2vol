if (TARGET DGtal)
  return()
endif()

include(FetchContent)

message(STATUS "Fetching DGtal")

SET(BUILD_EXAMPLES OFF)

FetchContent_Declare(
    DGtal
    GIT_REPOSITORY https://github.com/elombardi2/DGtal.git
    GIT_TAG b4538956276e0c4d3e151e5240d91aa2509f2a25
    )
FetchContent_MakeAvailable(DGtal)

include("${DGtal_BINARY_DIR}/DGtalConfig.cmake")
include_directories("${DGTAL_INCLUDE_DIRS}")
