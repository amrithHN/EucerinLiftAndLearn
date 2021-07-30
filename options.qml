import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.15
import QtQuick.Window 2.15
import "fileNames.js" as ProductFile

Page {

    id:optionsPage
    width:1080
    height: 1920

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

    background: Image {
        id: background_image
        source: "images/main_screen_background.png"
        sourceSize.width: parent.width
        sourceSize.height: parent.height
    }

    FontLoader {
          id: eucerina
          source: "fonts/eucerina_ot-regular-webfont.ttf"
      }
    FontLoader{
        id:roboto
        source: "fonts/Roboto-Regular.ttf"
    }


Text {
    id: text1
    x: 126
    y: 418
    width: 308
    height: 84
    color: "#6c4f4f"
    text: qsTr("Select any option <br> to continue")
    anchors.verticalCenter: parent.verticalCenter
    font.pixelSize: 40
    horizontalAlignment: Text.AlignHCenter
    anchors.verticalCenterOffset: 318
    anchors.horizontalCenterOffset: 0
    font.family: eucerina.name
    anchors.horizontalCenter: parent.horizontalCenter
    minimumPixelSize: 40
}

Button {
    id: button
    x: 347
    y: 1374
    width: 388
    height: 114
    text: "<font color='#ffffff'>" + "LIFT AND LEARN" + "</font>"
    font.pixelSize: 30
    padding: 10
    font.bold: false
    display: AbstractButton.TextOnly
    font.family: eucerina.name
    palette {
                                      button: "#545557"
             }
    onClicked:  stackMain.push("liftLearn.qml")
}

Button {
    id: button1
    x: 303
    y: 1534
    width: 475
    height: 114
    text: "<font color='#ffffff'>" + "EXPLORE EUCERIN PRODUCTS" + "</font>"
    font.pixelSize: 30

    padding: 10
    display: AbstractButton.TextOnly
    font.family: eucerina.name
    onClicked:  stackMain.push("categories.qml")
    palette {
                                      button: "#2A3642"
             }
}




}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}
}
##^##*/
