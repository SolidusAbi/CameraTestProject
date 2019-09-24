cmake_minimum_required(VERSION 3.5)

project(CameraTest LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Widgets REQUIRED)
include_directories(/home/abian/Workspace/Projects/Cpp/ThermalCameraLib/)
link_directories(/home/abian/Workspace/Projects/Cpp/ThermalCameraLib/build/Debug/)

add_executable(CameraTest
  main.cpp
  mainwindow.cpp
  mainwindow.h
  mainwindow.ui
)


target_link_libraries(CameraTest PRIVATE Qt5::Widgets ThermalCameraLib)
