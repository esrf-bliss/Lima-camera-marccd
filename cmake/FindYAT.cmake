set(YAT_INCLUDE_DIRS)
set(YAT_LIBRARIES)
set(YAT_DEFINITIONS)

find_path(YAT_INCLUDE_DIRS "yat/yat.h" /usr/local/include)
find_library(YAT_LIB yat /usr/local/lib64)
list(APPEND YAT_LIBRARIES ${YAT_LIB})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(YAT DEFAULT_MSG
  YAT_LIBRARIES
  YAT_INCLUDE_DIRS
)
