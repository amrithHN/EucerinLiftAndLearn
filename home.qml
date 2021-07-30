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
 height: 1920

Shortcut {
	sequence:"Esc"
	onActivated:Qt.quit()
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

    FontLoader {
          id: eucerina
          source: "fonts/eucerina_ot-regular-webfont.ttf"
      }
    FontLoader{
        id:roboto
        source: "fonts/Roboto-Regular.ttf"
    }

    MediaPlayer {
        id: player
        autoPlay: true
        //autoLoad: true
        source:"videos/all.mp4"
	loops: MediaPlayer.Infinite

      /*  playlist: Playlist {
                   id: playlist
                   PlaylistItem { source: "videos/Acne.mp4"; }
                   PlaylistItem { source: "videos/dualSerum.mp4"; }
                   PlaylistItem { source: "videos/HfSerum.mp4"; }
                   PlaylistItem { source: "videos/vitc2.mp4"; }
                   playbackMode: Playlist.Loop
               }*/
    }

    VideoOutput {
        id: videoOutput
        width: parent.width
        height: parent.height
        source: player
        z:2
    }


    Button{
        id:startButton
        x: 0
        y: 880
        text:qsTr("start")
        anchors.bottom: parent.bottom
        font.family:eucerina.name
        font.pixelSize: 30
        z: 10
        anchors.bottomMargin: -10
        width: parent.width
        height: 80


         onClicked: {

            stackMain.push("options.qml")
        }
    }
    Component.onCompleted: {player.play()}


}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.33000001311302185}
}
##^##*/
