import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Cutie

CutiePage {
    CutiePageHeader {
        title: "Toast Demo"
    }

    CutieButton {
        buttonText: "Show a toast"
        anchors.centerIn: parent
        onClicked: {
            toastHandler.show("Test Toast", 2000);
        }
    }
}