import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Cutie 1.0

CutiePage {
    CutieHeader {
        title: "Toast Demo"
    }

    CutieButton {
        text: "Show a toast"
        anchors.centerIn: parent
        onClicked: {
            toastHandler.show("Test Toast", 2000);
        }
    }
}