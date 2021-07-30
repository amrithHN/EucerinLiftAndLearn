import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.15
import QtQuick.Window 2.15
import "fileNames.js" as ProductFile

Page {

    width: 1080
    height:1920

Timer {
        interval: ProductFile.timeoutValue; running: true; repeat: false
        onTriggered: {stackMain.pop();stackMain.pop();stackMain.pop();stackMain.pop()}
    }


Connections {
       target: Appcore // Specify the target to connect

onSerialMessageP1:{
    console.log("qml:product1")
    stackMain.push("ProductInfo.qml", { backgroundSource:ProductFile.product_1})
}

onSerialMessageP2:{
    console.log("qml:product1")
    stackMain.push("ProductInfo.qml", { backgroundSource:ProductFile.product_2})
}

onSerialMessageP3:{
    console.log("qml:product1")
    stackMain.push("ProductInfo.qml", { backgroundSource:ProductFile.product_3})
}

onSerialMessageP4:{
    console.log("qml:product1")
    stackMain.push("ProductInfo.qml", { backgroundSource:ProductFile.product_4})
}


        }

    background:Image {
        id: backgrnd
        source: "images/category6/6.png"
        sourceSize.width: parent.width
        sourceSize.height: parent.height
    }

    Rectangle {
        id: p1
        x: 125
        y: 563
        width: 190
        height: 507
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/6_1.png", connectionsStatus:false})

         }
        }
    }

    Rectangle {
        id: p2
        x: 452
        y: 563
        width: 188
        height: 517
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/6_2.png", connectionsStatus:false})

         }
        }
    }

    Rectangle {
        id: p3
        x: 766
        y: 607
        width: 184
        height: 473
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/6_3.png", connectionsStatus:false})

         }
        }
    }

    Rectangle {
        id: p4
        x: 125
        y: 1071
        width: 148
        height: 574
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/6_4.png", connectionsStatus:false})

         }
        }
    }

    Rectangle {
        id: p5
        x: 397
        y: 1183
        width: 268
        height: 452
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
            onClicked: {

                   stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/6_5.png", connectionsStatus:false})

         }
        }
    }

    Rectangle {
        id: p6
        x: 743
        y: 1101
        width: 242
        height: 519
        color: "#00c20202"
        border.color: "#00000000"

        MouseArea {
            id: mouseArea5
            anchors.fill: parent
            onClicked: {

                stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/6_6.png", connectionsStatus:false})

            }
        }
    }

    Button {
        id: button2
        width: 387
        height: 100
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 1744
        anchors.leftMargin: 321
        text:  "<font color='#ffffff'>" + "BACK" + "</font>"
        font.pixelSize: 30
        anchors.horizontalCenter: parent.horizontalCenter
        padding: 10
        display: AbstractButton.TextOnly
        font.family: eucerina.name
        //display: AbstractButton.IconOnly
        //icon.source: "images/back.svg"
        palette {
                                          button: "#A80A2D"
                 }
        onClicked: stackMain.pop()
    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33000001311302185}
}
##^##*/
