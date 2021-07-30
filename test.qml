import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    minimumWidth: 800
    minimumHeight: 480
    title: qsTr("PowerTune")
    color: "lightBlue"

    SwipeView {
        id: view
        currentIndex: 0
        anchors.fill: parent

        function addPage(page) {
            addItem(page)
            page.visible = true
        }

        function removePage(page) {
            for (var n = 0; n < count; n++) { if (page === itemAt(n)) { removeItem(n) } }
            page.visible = false
        }

        SerialSettings {
            id: firstpage
        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Page {
        id: page1
        visible: false;
        background: Rectangle { color: "yellow" }
        Label {
            text: "Page1"
        }
    }

    Page {
        id: page2
        visible: false;
        background: Rectangle { color: "lightGreen" }
        Label {
            text: "Page2"
        }
    }

    Page {
        id: page3
        visible: false;
        background: Rectangle { color: "magenta" }
        Label {
            text: "Page3"
        }
    }
}
