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
        menu: ListModel {
            ListElement {
                text: "Toggle dark/light theme"
                callback: function () {
                    themeVariantConfig.value = (themeVariantConfig.value == "dark") ? "light" : "dark";
                }
            }
            ListElement {
                text: "Text field page"
                callback: function () {
                    pageStack.push(inputPage);
                }
            }
        }

        CutieHeader {
            id: header
            text: "Cutie Widgets"
        }

        CutieButton {
            buttonText: "Enter subpage"
            anchors.centerIn: parent
            onClicked: {
                pageStack.push(secondPage);
            }
        }
    }

    Component {
        id: secondPage
        CutiePage {
            menu: ListModel {
                ListElement {
                    text: "Test 1"
                }
                ListElement {
                    text: "Test 2"
                }
                ListElement {
                    text: "Test 3"
                }
                ListElement {
                    text: "Another test 1"
                }
                ListElement {
                    text: "Another test 2"
                }
            }

            CutieHeader {
                text: "A page"
            }

            CutieButton {
                buttonText: "Show a toast"
                anchors.centerIn: parent
                onClicked: {
                    toastHandler.show("Test Toast", 2000);
                }
            }
        }
    }

    Component {
        id: inputPage
        CutiePage {
            CutieHeader {
                text: field.text
            }

            CutieTextField {
                id: field
                anchors.centerIn: parent
                width: parent.width / 2
                text: "Hello, world!"
            }
        }
    }
}
