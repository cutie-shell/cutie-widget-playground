import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Cutie 1.0

CutiePage {
    Flickable {
        anchors.fill: parent
        CutiePageHeader {
            title: field.text
        }

        CutieTextField {
            id: field
            anchors.centerIn: parent
            width: parent.width - 40
            text: "Hello, world!"
        }
    }
}
