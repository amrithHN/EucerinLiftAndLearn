import QtQuick 2.12
import QtQuick.Controls 2.12
//import QtQuick.Controls.Universal 2.12
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.15
import QtQuick.Window 2.15

ApplicationWindow {
    id:main
    width: 1080
    height: 1920
    visible: true
   // flags: Qt.FramelessWindowHint | Qt.Window | Qt.SplashScreen
   //  visibility: Qt.WindowFullScreen
  //  Universal.theme: Universal.Light
   // Universal.accent: Universal.Crimson

    FontLoader {
          id: eucerina
          source: "fonts/eucerina_ot-regular-webfont.ttf"
      }
    FontLoader{
        id:roboto
        source: "fonts/Roboto-Regular.ttf"
    }


    StackView {
        id:stackMain
        width: parent.width
        height: parent.height
        initialItem:"home.qml"

        }


}



