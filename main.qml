import QtQuick 2.14
import QtQuick.Window 2.14
import Cutie 1.0

CutieWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    CutieButton {
        buttonText: "Test Button"
        onClicked: {
            toastHandler.show("Test Toast", 2000)
        }
        anchors.centerIn: parent
    }

}
