cmake_minimum_required(VERSION 3.5)

project(CameraTest LANGUAGES CXX)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/")

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_package(ThermalCameraLib REQUIRED)

get_target_property(asd ThermalCameraLib IMPORTED_LOCATION_DEBUG)
message("${asd}")

#link_directories(/home/abian/Workspace/tmp/Cpp/build-ThermalCameraLib-Desktop_Qt_5_12_5_GCC_64bit-Debug/)

add_executable(CameraTest
  main.cpp
  mainwindow.cpp
  mainwindow.h
  mainwindow.ui
)


target_link_libraries(CameraTest PUBLIC Qt5::Widgets ThermalCameraLib)
