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
        source: "images/category3/3.png"
    }

    Rectangle {
        id: p1
        x: 107
        y: 505
        width: 325
        height: 423
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/3_1.png"})

         }
        }
    }

    Rectangle {
        id: p2
        x: 482
        y: 443
        width: 238
        height: 469
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/3_2.png"})

         }
        }
    }

    Rectangle {
        id: p3
        x: 781
        y: 414
        width: 211
        height: 498
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/3_3.png"})

         }
        }
    }

    Rectangle {
        id: p4
        x: 91
        y: 1195
        width: 189
        height: 493
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/3_4.png"})

         }
        }
    }

    Rectangle {
        id: p5
        x: 335
        y: 1162
        width: 177
        height: 559
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/3_5.png"})

         }
        }
    }

    Rectangle {
        id: p6
        x: 576
        y: 1071
        width: 192
        height: 617
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea5
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/3_6.png"})

         }
        }
    }

    Rectangle {
        id: p7
        x: 800
        y: 1091
        width: 216
        height: 577
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea6
            anchors.fill: parent
            onClicked: {

                stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/3_7.png"})

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
        anchors.topMargin: 1718
        font.family: eucerina.name
        padding: 10
         onClicked: stackMain.pop()
    }




}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
