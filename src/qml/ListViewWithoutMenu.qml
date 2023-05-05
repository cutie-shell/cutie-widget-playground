import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Cutie

CutiePage {
    CutieListView {
        anchors.fill: parent
        property var dummyModel: Array(50)
        model: dummyModel
        header: CutiePageHeader {
            title: "ListView Demo"
        }

        delegate: CutieListItem {
            icon.source: "qrc:/icons/info.svg"
            text: qsTr("Item number %1").arg(index + 1)
            subText: qsTr("Sample sub-text")
        }
    }
}
