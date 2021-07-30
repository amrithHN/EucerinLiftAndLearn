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

    background:Image {
        id: backgrnd
        source: "images/category5/5.png"
    }

    Rectangle {
        id: p1
        x: 122
        y: 510
        width: 230
        height: 558
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/5_1.png"})

         }
        }
    }

    Rectangle {
        id: p2
        x: 450
        y: 522
        width: 218
        height: 522
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/5_2.png"})

         }
        }
    }

    Rectangle {
        id: p3
        x: 773
        y: 522
        width: 195
        height: 546
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/5_3.png"})

         }
        }
    }

    Rectangle {
        id: p4
        x: 103
        y: 1051
        width: 261
        height: 593
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/5_4.png"})

         }
        }
    }

    Rectangle {
        id: p5
        x: 450
        y: 1051
        width: 218
        height: 577
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/5_5.png"})

         }
        }
    }

    Rectangle {
        id: p6
        x: 751
        y: 1168
        width: 259
        height: 542
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea5
            anchors.fill: parent
            onClicked: {

                stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/5_6.png"})

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
        anchors.topMargin: 1690
        font.family: eucerina.name
        padding: 10
         onClicked: stackMain.pop()
    }




}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.10000000149011612}
}
##^##*/
