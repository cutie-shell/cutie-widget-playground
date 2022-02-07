import QtQuick 2.14
import QtQuick.Window 2.14
import Cutie 1.0

CutieWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

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

        CutieButton {
            width: parent.width
            buttonText: "Toggle dark/light"
            onClicked: {
                themeVariantConfig.value = (themeVariantConfig.value == "dark") ? "light" : "dark";
            }
        }
    }
}
