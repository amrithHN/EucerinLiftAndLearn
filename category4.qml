import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.15
import QtQuick.Window 2.15

Page {

    width: 1080
    height:1920
    property alias mouseArea1Width: mouseArea1.width

    background:Image {
        id: backgrnd
        source: "images/category4/4.png"
    }

    Rectangle {
        id: p1
        x: 123
        y: 800
        width: 185
        height: 424
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/4_1.png"})

         }
        }
    }

    Rectangle {
        id: p2
        x: 393
        y: 780
        width: 247
        height: 456
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/4_2.png"})

         }
        }
    }

    Rectangle {
        id: p3
        x: 734
        y: 682
        width: 242
        height: 574
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: {

                stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/4_3.png"})

            }
        }
    }

    Button {
        id: button2
        width: 329
        height: 144
        text: qsTr("Back")
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 30
        display: AbstractButton.TextOnly
        anchors.leftMargin: 376
        anchors.topMargin: 1670
        font.family: eucerina.name
        padding: 10
         onClicked: stackMain.pop()
    }




}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.20000000298023224}
}
##^##*/
