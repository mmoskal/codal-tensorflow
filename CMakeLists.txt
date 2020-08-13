project(codal-tensorflow)

include("${CODAL_UTILS_LOCATION}")

# find sources and headers

RECURSIVE_FIND_FILE(TOP_LEVEL_SOURCE0 "${CMAKE_CURRENT_SOURCE_DIR}/tensorflow" "*.cc")
RECURSIVE_FIND_FILE(TOP_LEVEL_SOURCE1 "${CMAKE_CURRENT_SOURCE_DIR}/tensorflow" "*.c")

set(INC_DIR ${CMAKE_CURRENT_SOURCE_DIR})
# add them
include_directories(${INC_DIR} ${INCLUDE_DIRS})

# create our target
add_library(codal-tensorflow ${TOP_LEVEL_SOURCE} ${TOP_LEVEL_SOURCE0} ${TOP_LEVEL_SOURCE1})

target_link_libraries(codal-stm32 codal-core ${OBJECT_FILES} ${ARCHIVE_FILES})

# expose it to parent cmake.
target_include_directories(codal-stm32 PUBLIC ${INC_DIR} ${INCLUDE_DIRS})
