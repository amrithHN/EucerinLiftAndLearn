import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.15
import QtQuick.Window 2.15

Page {
    id: page

    width: 1080
    height:1920

    background:Image {
        id: backgrnd
        source: "images/categories_background.png"
    }

    Image {
        id: image
        x: 100
        y: 164
        width: 1550/2
        height: 99/2
        source: "images/category7/HYALURON FILLER RANGE.png"
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
    }

    ScrollView {
        id: scrollView
        x: 440
        y: 296
        width: 800
        height:1409
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        clip: true
        rightPadding: 150
        leftPadding: 50



        Column {
            id: column

            x: 15
            y: -12
            width: parent.width
            height: parent.height
            spacing: 50


            Image {
                source:  "images/category7/Silver_Heading.png"
                height:41/2
                width: parent.width

            }

            Image {
                source:  "images/category7/Silver_Products.png"
                height:800
                width: parent.width

                Rectangle {
                    x: -8
                    y: 162
                    width: 150
                    height: 215
                    color: "#00ffffff"
                    z: 10
                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: 0
                        anchors.bottomMargin: -8
                        anchors.leftMargin: 0
                        anchors.topMargin: 8
                         onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_1.png"})
                    }
                }

                 Rectangle {
                     x: 187
                     y: 162
                     width: 150
                     height: 215
                     color: "#00ffffff"
                     z: 10
                     MouseArea {
                         anchors.fill: parent
                         onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_2.png"})
                     }
                 }

                 Rectangle {
                     x: 365
                     y: -12
                     width: 150
                     height: 381
                     color: "#00ffffff"
                     z: 10
                     MouseArea {
                         anchors.fill: parent
                         onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_3.png"})
                     }
                 }

                 Rectangle {
                     x: 500
                     y: 17
                     width: 150
                     height: 381
                     color: "#00ffffff"
                     z: 10
                     MouseArea {
                         anchors.fill: parent
                         onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_4.png"})
                     }
                 }

                 Rectangle {
                     x: 8
                     y: 400
                     width: 134
                     height: 400
                     color: "#00ffffff"
                     z: 10
                     MouseArea {
                         anchors.fill: parent
                         anchors.rightMargin: 0
                         anchors.leftMargin: 0
                         anchors.topMargin: 0
                         anchors.bottomMargin: 0
                         onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_5.png"})
                     }
                 }

                 Rectangle {
                     x: 158
                     y: 424
                     width: 150
                     height: 381
                     color: "#00ffffff"
                     z: 10
                     MouseArea {
                         anchors.fill: parent
                         anchors.rightMargin: 0
                         anchors.leftMargin: 0
                         anchors.topMargin: 0
                         anchors.bottomMargin: 0
                         onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_6.png"})
                     }
                 }

                 Rectangle {
                     x: 331
                     y: 424
                     width: 150
                     height: 381
                     color: "#00ffffff"
                     z: 10
                     MouseArea {
                         anchors.fill: parent
                         anchors.rightMargin: 0
                         anchors.leftMargin: 0
                         anchors.topMargin: 0
                         anchors.bottomMargin: 0
                         onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_7.png"})
                     }
                 }

                 Rectangle {
                     x: 520
                     y: 419
                     width: 150
                     height: 381
                     color: "#00ffffff"
                     z: 10
                     MouseArea {
                         anchors.fill: parent
                         anchors.rightMargin: 0
                         anchors.leftMargin: 0
                         anchors.topMargin: 0
                         anchors.bottomMargin: 0
                         onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_8.png"})
                     }
                 }

                 
            }
            Image {
                source:  "images/category7/Red_Heading.png"
                height:41/2
                width: parent.width
                
            }
            Image {
                source:  "images/category7/Red_Products.png"
                height:384
                width: parent.width

                Rectangle {
                    x: 8
                    y: 3
                    width: 150
                    height: 381
                    color: "#00ffffff"
                    z: 10
                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_9.png"})
                    }
                }

                Rectangle {
                    x: 255
                    y: 3
                    width: 150
                    height: 381
                    color: "#00ffffff"
                    z: 10
                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_10.png"})
                    }
                }

                 Rectangle {
                     x: 492
                     y: 2
                     width: 150
                     height: 381
                     color: "#00ffffff"
                     z: 10
                     MouseArea {
                         anchors.fill: parent
                         anchors.rightMargin: -12
                         anchors.leftMargin: 12
                         anchors.topMargin: 5
                         anchors.bottomMargin: -5
                         onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_11.png"})
                     }
                 }
            }


            Image {
                source:  "images/category7/Gold_Heading.png"
                height:41/2
                width: parent.width

            }
            Image {
                source: "images/category7/Gold_Products.png"
                height:400
                width: parent.width

                Rectangle {
                    x: 8
                    y: 3
                    width: 150
                    height: 381
                    color: "#00ffffff"
                    z: 10
                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_12.png"})
                    }
                }

                Rectangle {
                    x: 270
                    y: 38
                    width: 150
                    height: 381
                    color: "#00ffffff"
                    z: 10
                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_13.png"})
                    }
                }

                Rectangle {
                    x: 522
                    y: -5
                    width: 150
                    height: 381
                    color: "#00ffffff"
                    z: 10
                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -12
                        anchors.leftMargin: 12
                        anchors.topMargin: 5
                        anchors.bottomMargin: -5
                        onClicked:  stackMain.push("ProductInfo.qml", { backgroundSource:"images/products/7_14.png"})
                    }
                }

            }












        }



    }

    Button {
        id: button2
        width: 329
        height: 84
        text: qsTr("Back")
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 30
        display: AbstractButton.TextOnly
        anchors.leftMargin: 376
        anchors.topMargin: 1799
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
