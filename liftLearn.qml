import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.15
import QtQuick.Window 2.15

Page {
    id: page
    width: 1080
    height:1920
     Material.theme: Material.Light
     background: Image {
         id: background_image
         source: "images/lift_lean_background.png"
     }



Button {
    id: button2
    width: 329
    height: 144
    text: qsTr("Return to Homepage")
    anchors.left: parent.left
    anchors.top: parent.top
    font.pixelSize: 30
    display: AbstractButton.TextOnly
    anchors.leftMargin: 383
    anchors.topMargin: 1670
    font.family: eucerina.name
    padding: 10
    onClicked: {stackMain.pop();stackMain.pop();stackMain.pop();}
}

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}
}
##^##*/
