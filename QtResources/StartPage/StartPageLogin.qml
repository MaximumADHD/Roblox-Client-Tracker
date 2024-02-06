// TODO: Remove file with FFlagStudioNoQmlAtLogin
import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

// This view displays the login widgets, i.e. banner, login fields and login button.
Rectangle {
    id: loginPage
    width: (typeof rootWindow != 'undefined') ? rootWindow.width : 1024
    height: (typeof rootWindow != 'undefined') ? rootWindow.height : 768
    color: userPreferences.theme.style("StartPage LoginPage background")

    readonly property string kStringLoggingIn: qsTr("Studio.App.StartPageLogin.LoggingInElps");

    readonly property string kDefaultState: ""

    property var dropShadowOpacity: 1.0

    Image {
        id: bannerImage
        x: 0
        y: 0
        width: parent.width
        height: 205
        transformOrigin: Item.Center
        fillMode: Image.PreserveAspectCrop
        source: "qrc:/images/StartPage/header_background.png"
        
        Rectangle {
            // Sits on top of the banner image
            id: overlayShadow
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            color: "#a6000000"
            border.color: "#00000000"
            
            Image {
                id: glow
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 0
                smooth: true
                mipmap: FFlagStudioDisableMipMapsOnMac ? false : true
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/StartPage/header_glow.png"
                
                Image {
                    id: logo
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 53
                    smooth: true
                    mipmap: FFlagStudioDisableMipMapsOnMac ? false : true
                    fillMode: Image.Pad
                    source: "qrc:/images/StartPage/roblox_studio_letterfrom_logo.png"
                }
            }
            
            PlainText {
                id: bannerTitle
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 53
                verticalAlignment: Text.AlignBottom
                text: qsTr("Studio.App.StartPageLogin.StartCreatingOwnGames")
                font.pixelSize: 21
                lineHeight: 1.5
                color: "white"
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
            }
        }
    }

    // Group together login widgets
    Item {
        id: loginFormGroup
        width: 320
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: bannerImage.bottom
        anchors.bottom: parent.bottom
        anchors.topMargin: 36

        PlainText {
             // Shows what's happening, e.g. logging in, logging out, or opening a place.
            id: statusText
            text: kStringLoggingIn
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            visible: true
            color: userPreferences.theme.style("StartPage LoginPage statusText")
            font.pixelSize: 18
            renderType: userPreferences.theme.style("CommonStyle textRenderType")
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
        }

        LoadingAnimation {
            id: statusAnimation
            anchors.top: statusText.bottom
            anchors.topMargin: 18
            visible: true
            playing: true
        }

        PlainText {
            id: versionText
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 24
            anchors.bottomMargin: 15
            height: paintedHeight
            text: startPageQmlController.DEPRECATED_getVersionString()
            color: userPreferences.theme.style("StartPage LoginPage versionText")
            font.pixelSize: 12
            renderType: userPreferences.theme.style("CommonStyle textRenderType")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
        }
    }

    Connections {
        target: startPageQmlController
        onDeprecated_updateUserFacingTextRequested: {
            statusText.text = userFacingText;
        }
    }
}
