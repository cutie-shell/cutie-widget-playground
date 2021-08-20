import QtQuick 2.14
import QtQuick.Window 2.14
import Cutie     1.0

Window {
    width: 640
    height: 480
    visible: true
    color: "black"
    title: qsTr("Hello World")
    Atmosphere {
        id: atmosphereHandler
    }

    CutieToastHandler {
        id: toastHandler
    }

    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            toastHandler.show("HesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdnyHesdkfjkdnkjrengkjrengkjrengljfdngjfdny!", 2000);
        }
    }

}
