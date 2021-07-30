import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.15
import QtQuick.Window 2.15

Page {
    implicitWidth:1080
    implicitHeight: 1920
    MediaPlayer {
        id: playerPop
        source: "videos/HfSerum.mp4"
        autoPlay: true
    }

    VideoOutput {
        id: videoOutputPop
        width: parent.width
        height: parent.height
        source: playerPop
        MouseArea{
            anchors.fill: parent
            onClicked: {
                stackMain.pop()
            }
        }

    }


}
