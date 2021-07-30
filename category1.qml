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
        source: "images/category1/1.png"
    }

    Rectangle {
        id: p1
        x: 130
        y: 399
        width: 198
        height: 649
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea
            anchors.fill: parent

               onClicked: {

                      stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/1_1.png"})

            }
        }
    }

    Rectangle {
        id: p2
        x: 444
        y: 431
        width: 224
        height: 597
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/1_2.png"})

         }
        }
    }

    Rectangle {
        id: p3
        x: 783
        y: 561
        width: 193
        height: 487
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/1_3.png"})

         }
        }
    }

    Rectangle {
        id: p4
        x: 111
        y: 1046
        width: 237
        height: 590
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/1_4.png"})

         }
        }
    }

    Rectangle {
        id: p5
        x: 455
        y: 1051
        width: 229
        height: 609
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/1_5.png"})

            }
        }
    }

    Rectangle {
        id: p6
        x: 763
        y: 1089
        width: 213
        height: 563
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea5
            anchors.fill: parent

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
    D{i:0;formeditorZoom:0.20000000298023224}
}
##^##*/
