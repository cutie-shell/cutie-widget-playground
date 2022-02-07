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

    initialPage: CutiePage {
        CutieHeader {
            text: "Cutie Widgets"
        }

        Column {
            anchors.centerIn: parent
            spacing: window.dpi.value
            width: window.width / 2

            CutieButton {
                width: parent.width
                buttonText: "Toggle dark/light"
                onClicked: {
                    themeVariantConfig.value = (themeVariantConfig.value == "dark") ? "light" : "dark";
                }
            }

            CutieButton {
                width: parent.width
                buttonText: "Enter subpage"
                onClicked: {
                    pageStack.push(secondPage);
                }
            }
        }
    }

    Component {
        id: secondPage
        CutiePage {
            CutieHeader {
                text: "A page"
            }

            Column {
                anchors.centerIn: parent
                spacing: window.dpi.value
                width: window.width / 2

                CutieButton {
                    width: parent.width
                    buttonText: "Show a toast"
                    onClicked: {
                        toastHandler.show("Test Toast", 2000);
                    }
                }
            }
        }
    }
}
