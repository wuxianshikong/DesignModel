aux_source_directory (. SRC_LIST)

include_directories (../include)
##
##
add_library (testFunc_shared SHARED libhello.cpp)
add_library (testFunc_static STATIC libhello.cpp)
# 设置输出的名称
set_target_properties (testFunc_shared PROPERTIES OUTPUT_NAME "testFunc")
set_target_properties (testFunc_static PROPERTIES OUTPUT_NAME "testFunc")

set (LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

##
##
link_directories (${PROJECT_SOURCE_DIR}/lib)
# 设置可执行文件
add_executable (main ${SRC_LIST})
# add_executable(AbstractFactory AbstractFactory.cpp)
# add_executable(main main.cpp AbstractFactory.cpp Builder.cpp)
# 添加连接器
target_link_libraries (main testFunc)


# 设置输出路径
set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)