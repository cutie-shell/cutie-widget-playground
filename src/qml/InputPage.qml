import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Cutie

CutiePage {
    id: root
    ScrollView {
        anchors.fill: parent
        Column {
            width: root.width
            spacing: 10

            CutiePageHeader {
                title: field.text
                width: root.width
            }

            CutieButton {
                x: 20
                width: root.width - 40
                text: qsTr("Click me!")
            }

            Row {
                x: 20
                width: root.width - 40
                spacing: 10

                CutieButton {
                    width: parent.width / 2 - 5
                    text: qsTr("Icon from file")
                    icon.source: "qrc:/icons/cutie.png"
                }

                CutieButton {
                    width: parent.width / 2 - 5
                    text: qsTr("Icon from theme")
                    icon.name: "cutie-widget-playground"
                }
            }

            CutieButton {
                x: 20
                width: root.width - 40
                icon.source: "qrc:/icons/cutie.png"
            }

            Row {
                x: 20
                width: root.width - 40
                CutieToggle {
                    checked: false
                }

                CutieToggle {
                    checked: true
                }
            }

            CutieSlider {
                id: slider1
                x: 20
                width: root.width - 40
            }

            CutieSlider {
                id: slider2
                x: 20
                width: root.width - 40
                value: 1.0 - slider1.value
                onMoved: {
                    slider1.value = 1.0 - value;
                }
            }

            CutieLabel {
                x: 20
                width: root.width - 40
                text: qsTr("To change the header of the page, edit the text field below!")
                wrapMode: Text.Wrap
            }

            CutieTextField {
                id: field
                x: 20
                width: root.width - 40
                text: "Hello, world!"
            }
        }
    }
}
