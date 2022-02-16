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
            comp: "InputPage.qml"
        }
        ListElement {
            title: "Toast Demo"
            comp: "ToastPage.qml"
        }
        ListElement {
            title: "ListView Demo"
            comp: "ListViewPage.qml"
        }
    }

    initialPage: CutiePage {
        CutieListView {
            anchors.fill: parent
            header: CutieHeader {
                id: header
                title: "Cutie Widgets"
            }

            model: pages

            delegate: CutieListItem {
		        id: listEntry
                width: parent.width
                CutieBackgroundItem {
                    anchors.fill:parent
                    CutieLabel {
                        color: listEntry.highlighted ? CutieTheme.highlightColor : CutieTheme.primaryColor
                        x: CutieTheme.horizontalPageMargin
                        anchors.verticalCenter: parent.verticalCenter
                        text: model.title
                    }

                    onClicked: {
                        pageStack.push(model.comp);
                    }
                }
            } 

            CutiePullDownMenu {
                CutieMenuItem {
                    text: "Toggle dark/light theme"
                    onClicked: {
                        themeVariantConfig.value = (themeVariantConfig.value == "dark") ? "light" : "dark";
                    }
                }
            }
        }
    }
}