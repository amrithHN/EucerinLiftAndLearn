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
        source: "images/category2/2.png"
    }

    Rectangle {
        id: p1
        x: 383
        y: 544
        width: 369
        height: 401
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/2_1.png"})

         }
        }
    }

    Rectangle {
        id: p2
        x: 400
        y: 1003
        width: 297
        height: 394
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: {

                stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/2_2.png"})

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
    D{i:0;formeditorZoom:0.33000001311302185}
}
##^##*/
