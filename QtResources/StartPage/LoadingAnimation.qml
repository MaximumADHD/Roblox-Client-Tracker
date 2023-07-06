/**
This file implements the loading animation we show on the native login page and
the native start page. It should always use the same animated image and use the
same image which is why it was abstracted.
*/
import QtQuick 2.6
import ".."

AnimatedImage {
    anchors.horizontalCenter: parent.horizontalCenter
    width: 82
    height: 24
    visible: false
    playing: false
    fillMode: Image.PreserveAspectFit
    source: "qrc:/images/StartPage/ThreeBoxLoadingAnimation.gif"
}
