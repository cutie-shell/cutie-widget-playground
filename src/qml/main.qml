import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Cutie 1.0

CutieWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListModel {
        id: pages
        ListElement {
            title: "Text Fields"
            comp: "qrc:/InputPage.qml"
        }
        ListElement {
            title: "Toast Demo"
            comp: "qrc:/ToastPage.qml"
        }
    }

    initialPage: CutiePage {
        ListView {
            anchors.fill: parent
            header: CutiePageHeader {
                id: header
                title: "Cutie Widgets"
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