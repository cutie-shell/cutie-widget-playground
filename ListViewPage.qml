import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Cutie 1.0

CutiePage {
    CutieListView {
        anchors.fill: parent

        header: Component {
		    Column {
                width: parent.width
                height: header.height + mainColumn.height + CutieTheme.paddingLarge

                CutieHeader {
                    id: header
                    title: "ListView Demo"
                }

                Column {
                    id: mainColumn
                    width: parent.width
                    spacing: CutieTheme.paddingLarge

                    CutieSlider {
                        id: slider
                        label: "A simple slider"
                        width: parent.width
                        minimumValue: 0; maximumValue: 100; stepSize: 1
                        valueText: value
                    }

                    CutieButton {
                        text: "Save"
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: {
                            listModel.append({"sliderValue": "Value: " + slider.value})
                        }
                    }
                }
            }
        }

        model: ListModel { id: listModel }

        delegate: CutieListItem {
            id: listEntry
            width: parent.width

            CutieLabel {
                color: listEntry.highlighted ? CutieTheme.highlightColor : CutieTheme.primaryColor
                text: model.sliderValue
                x: CutieTheme.horizontalPageMargin
                anchors.verticalCenter: parent.verticalCenter
            }

            menu: CutieContextMenu {
                CutieMenuItem {
                    text: "Remove"
                    onClicked: {
                        listEntry.remorseAction("Deleting", function() {
                            listModel.remove(model.index)
                        })
                    }
                }
            }
        }

        CutiePullDownMenu {
            CutieMenuItem {
                text: "Clear"
                onClicked: listModel.clear()
            }
        }

        CutieVerticalScrollDecorator {}
    }
}