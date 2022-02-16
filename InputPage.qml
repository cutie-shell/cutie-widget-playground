import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Cutie 1.0

CutiePage {
    CutieFlickable {
        anchors.fill: parent
        CutieHeader {
            title: field.text
        }

        CutieTextField {
            id: field
            anchors.centerIn: parent
            width: parent.width - CutieTheme.horizontalPageMargin * 2
            text: "Hello, world!"
        }
    }
}
