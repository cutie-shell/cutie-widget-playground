cmake_minimum_required(VERSION 3.16)
project(cutie-widget-playground VERSION 1.0 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt6 REQUIRED COMPONENTS Core Quick Qml LinguistTools)

qt_standard_project_setup()

set(cutie-widget-playground_SOURCES 
        src/main.cpp
)

qt_add_resources(APP_RESOURCES 
	${CMAKE_SOURCE_DIR}/src/qml/qml.qrc
	${CMAKE_SOURCE_DIR}/icons/icons.qrc)

qt_add_executable(cutie-widget-playground ${cutie-widget-playground_SOURCES} ${APP_RESOURCES})

target_include_directories(cutie-widget-playground PUBLIC src)

target_link_libraries(cutie-widget-playground PUBLIC Qt::Core Qt::Quick Qt::Qml)

install(TARGETS cutie-widget-playground RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}")
install(FILES cutie-widget-playground.desktop DESTINATION "${CMAKE_INSTALL_DATADIR}/applications")
install(FILES cutie-widget-playground.svg DESTINATION "${CMAKE_INSTALL_DATADIR}/icons/hicolor/scalable/apps")