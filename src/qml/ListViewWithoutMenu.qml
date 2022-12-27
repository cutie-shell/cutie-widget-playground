import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Cutie 1.0

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
