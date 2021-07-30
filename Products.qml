//this file is not used
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.15
import QtQuick.Window 2.15

Page {
    id: page

    width: 1080/2
    height:1090/2

    Text {
        id: text1
        x: 196
        y: 80
        width: 149
        height: 35
        text: qsTr("All products")
        font.pixelSize: 30
        font.family: "Arial"
    }
    Button {
        id: button2
        width: 93
        height: 64
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 6
        anchors.leftMargin: 0
        display: AbstractButton.IconOnly
        icon.source: "images/back.svg"
        onClicked: stackMain.pop()
    }

    Rectangle{
        id: rect12
        anchors.top: text1.bottom
        anchors.topMargin: 10

        width: 500
        height: 500
        color: "lightgrey"
        anchors.verticalCenter: parent.verticalCenter


    GridView {
        id: gridView
        anchors.fill: rect12
        anchors.topMargin: 10
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        delegate:productDelegate
        model: productsModel
        cellHeight: 100
        cellWidth: 100
        width: 80
        height: 80

       // highlight: highlight
        highlightFollowsCurrentItem: false
        focus: true
        onCurrentIndexChanged: console.log(currentIndex)

    }
}
    ListModel {
        id:productsModel

         ListElement {
           file: "database/images/1.png"
           name: "serum"
          }
         ListElement {
           file: "database/images/2.png"
           name: "serum"
          }
         ListElement {
           file: "database/images/3.png"
           name: "serum"
          }
         ListElement {
           file: "database/images/4.png"
           name: "serum"
          }
         ListElement {
           file: "database/images/5.png"
           name: "serum"
          }
}
         Component {
             id:productDelegate
                         Rectangle {
                             id:card
                             width:90
                             height: 90

                             color: "whitesmoke"

                             Image {
                                 id:delegateImage
                                 width: 80
                                 height: 80
                                 source: file
                                 anchors.horizontalCenter: parent.horizontalCenter
                                 anchors.verticalCenter: parent.verticalCenter
                             }


                             Text {
                                 id:delegateText

                                 text: name
                                 font.bold: true
                                 anchors.horizontalCenter: parent.horizontalCenter
                                 anchors.top: delegateImage.bottom


                             }

                             MouseArea {
                                                anchors.fill: parent
                                                onClicked: {

                                                    gridView.currentIndex = index
                                                    seq12.running=true

                                                }
                                            }

                             SequentialAnimation{
                                 id:seq12
                                         running: false
                                         ScaleAnimator{
                                             id: scaleanim_up
                                             target: card
                                             from: 1
                                             to: 0.7
                                             duration: 300
                                         }
                                         ScaleAnimator{
                                             id: scaleanim_down
                                             target: card
                                             from: 0.7
                                             to: 1
                                             duration: 300
                                         }
                                     }





                     }
                 }
         Component {
             id: highlight
             Rectangle {
                 width: gridView.cellWidth; height: gridView.cellHeight
                 color: "lightsteelblue"; radius: 5
                 x: gridView.currentItem.x
                 y: gridView.currentItem.y
                 Behavior on x { SpringAnimation { spring: 3; damping: 0.2 } }
                 Behavior on y { SpringAnimation { spring: 3; damping: 0.2 } }
             }
         }






}
