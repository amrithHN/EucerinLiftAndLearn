import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.15
import QtQuick.Window 2.15

Page {

    id:productinf
    width: 1080
    height:1920
    property alias backgroundSource: background.source
    Image {
        id: background
        width: parent.width
        height: parent.height
        source: ""
    }
    Button {
        id: button2
        width: 387
        height: 100
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 1749
        anchors.leftMargin: 56
        text: qsTr("Back")
        font.pixelSize: 30
        padding: 10
        display: AbstractButton.TextOnly
        font.family: eucerina.name
        //display: AbstractButton.IconOnly
        //icon.source: "images/back.svg"
        onClicked: stackMain.pop()
    }

    Button {
        id: button3
        width: 387
        height: 100
        text: qsTr("Homepage")
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 30
        display: AbstractButton.TextOnly
        anchors.leftMargin: 656
        anchors.topMargin: 1749
        font.family: eucerina.name
        padding: 10
        onClicked: {stackMain.pop();stackMain.pop();stackMain.pop();stackMain.pop()}
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.20000000298023224}
}
##^##*/
