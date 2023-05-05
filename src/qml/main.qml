import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Cutie

CutieWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Widget Playground")

    ListModel {
        id: pages
        ListElement {
            title: qsTr("Controls Demo")
            comp: "qrc:/InputPage.qml"
        }
        ListElement {
            title: qsTr("Toast Demo")
            comp: "qrc:/ToastPage.qml"
        }
        ListElement {
            title: qsTr("ListView without menu")
            comp: "qrc:/ListViewWithoutMenu.qml"
        }
        ListElement {
            title: qsTr("ListView with global menu")
            comp: "qrc:/ListViewWithGlobalMenu.qml"
        }
        ListElement {
            title: qsTr("ListView with context menus")
            comp: "qrc:/ListViewWithContextMenus.qml"
        }
        ListElement {
            title: qsTr("ListView with highlighted selection")
            comp: "qrc:/ListViewWithHighlighting.qml"
        }
    }

    initialPage: CutiePage {
        ListView {
            anchors.fill: parent
            header: CutiePageHeader {
                id: header
                title: qsTr("Cutie Widgets")
            }

            model: pages

            delegate: CutieListItem {
		        id: listEntry
                width: parent.width                     
                text: model.title

                onClicked: {
                    pageStack.push(model.comp);
                }
            }
        } 
    }
}