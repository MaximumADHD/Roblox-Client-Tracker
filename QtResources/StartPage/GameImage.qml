/**
The GameImage is used by the GameWidget on the My Games page and the
templateWidgetContainer on template page (New tab) to show the images.
*/

import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Item {
    width: 150
    height: 150
    property alias source: gameImage.source
    property alias mask: maskImage.source
    property alias dropShadow: imageShadow.visible

    Image {
        id: gameImage
        anchors.fill: parent
        //source: model.thumbnail
        visible: false // False because we show the masked version
    }

    Image {
        id: gameImagePlaceholder
        anchors.fill: parent
        visible: false
        smooth: true
        source: "qrc:/images/StartPage/gameImagePlaceholder.png"
    }

    // The gameImageMask is for rounding the top corners of the game widgets.
    // There is currently not a way to specify the radius for images like
    // there is for rectangles.
    Image {
        id: maskImage
        anchors.fill: parent
        source: "qrc:/images/StartPage/gameImageMask.png"
        smooth: true
        visible: false // False because we show the masked version
    }

    // Round image corners by masking them out
    OpacityMask {
        id: maskedGameImage
        anchors.fill: parent
        // Show the placeholder until the real game image is done loading
        source: (gameImage.status === Image.Loading || gameImage.source == "") ? gameImagePlaceholder : gameImage
        maskSource: maskImage
        smooth: true
    }

    Rectangle {
        id: imageShadow
        anchors.top: maskedGameImage.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: 1
        color: userPreferences.theme.style("StartPage GameWidget border")
    }
}
