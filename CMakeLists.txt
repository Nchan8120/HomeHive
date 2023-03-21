cmake_minimum_required(VERSION 3.10)
project(HomeHive)

set(CMAKE_CXX_STANDARD 11)


## DEPENDENCIES ##
include(FetchContent)

FetchContent_Declare(json URL https://github.com/nlohmann/json/releases/download/v3.11.2/json.tar.xz)
FetchContent_MakeAvailable(json)

find_package(CURL REQUIRED)
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK REQUIRED gtk+-3.0)


## INCLUDE AND LINKING DEPENDENCIES DIRECTORIES ##
include_directories(${CURL_INCLUDE_DIR})
include_directories(${GTK_INCLUDE_DIRS})
link_directories(${GTK_LIBRARY_DIRS})


## BUILD LIBRARIES AND THEIR SOURCES ##
add_library(HomeHiveRequests request/request.cpp request/request.h request/Unsplash.cpp request/Unsplash.h request/UnsplashBackground.cpp request/UnsplashBackground.h request/weather.cpp request/weather.h)
add_library(HomeHiveEvent event/Timer.cpp event/Timer.h)
add_library(HomeHiveGUI gui/BaseView.cpp gui/BaseView.h gui/App.cpp gui/App.h gui/HomeView.cpp gui/HomeView.h gui/settings.cpp gui/settings.h)


## DEFINE EXECUTABLES ##
add_executable(HomeHive main.cpp)
add_executable(test test.cpp)


## COPY RESOURCES ##
add_custom_target(resources
        COMMAND ${CMAKE_COMMAND}
        -E copy_directory
        ${CMAKE_CURRENT_LIST_DIR}/resources
        ${CMAKE_CURRENT_BINARY_DIR}/resources
        )
add_dependencies(HomeHive resources) # this links the resources to main exec, in order to copy every build


## LINK LIBRARIES TO EXECUTABLES ##
target_link_libraries(HomeHiveRequests PRIVATE nlohmann_json::nlohmann_json ${CURL_LIBRARIES})
target_link_libraries(HomeHiveGUI ${GTK_LIBRARIES} HomeHiveRequests HomeHiveEvent)
target_link_libraries(HomeHive ${GTK_LIBRARIES} HomeHiveRequests HomeHiveEvent HomeHiveGUI)
target_link_libraries(test PRIVATE nlohmann_json::nlohmann_json HomeHiveRequests)

