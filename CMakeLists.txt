cmake_minimum_required(VERSION 3.13)
include_directories("${HOME}/vcpkg/installed/x64-linux/include")
# set(CMAKE_TOOLCHAIN_FILE "${HOME}/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE FILEPATH "")

project(simple_example)


set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)

find_package(Boost COMPONENTS)

set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_MULTITHREADED ON)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -Wall")

set(SOURCE_FILES "sources/main.cpp")

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    add_executable(${PROJECT_NAME} ${SOURCE_FILES})
    target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES})
endif()