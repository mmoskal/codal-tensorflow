project(codal-tensorflow)

include("${CODAL_UTILS_LOCATION}")

# find sources and headers

RECURSIVE_FIND_FILE(TOP_LEVEL_SOURCE0 "${CMAKE_CURRENT_SOURCE_DIR}/tensorflow" "*.cc")
RECURSIVE_FIND_FILE(TOP_LEVEL_SOURCE1 "${CMAKE_CURRENT_SOURCE_DIR}/tensorflow" "*.c")

set(INC_DIR 
    "${CMAKE_CURRENT_SOURCE_DIR}" 
    "${CMAKE_CURRENT_SOURCE_DIR}/third_party/gemmlowp"
    "${CMAKE_CURRENT_SOURCE_DIR}/third_party/flatbuffers/include"
    "${CMAKE_CURRENT_SOURCE_DIR}/third_party/ruy"
    "${CMAKE_CURRENT_SOURCE_DIR}/tensorflow/lite/micro/tools/make/downloads"
    "${CMAKE_CURRENT_SOURCE_DIR}/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/DSP/Include"
)
# add them
include_directories(${INC_DIR} ${INCLUDE_DIRS})

# create our target
add_library(codal-tensorflow ${TOP_LEVEL_SOURCE} ${TOP_LEVEL_SOURCE0} ${TOP_LEVEL_SOURCE1})

target_link_libraries(codal-tensorflow codal-core ${OBJECT_FILES} ${ARCHIVE_FILES})

# expose it to parent cmake.
target_compile_options(codal-tensorflow PUBLIC "-DTF_LITE_STATIC_MEMORY")
target_include_directories(codal-tensorflow PUBLIC ${INC_DIR} ${INCLUDE_DIRS})
