import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import ".."

Rectangle {
    // *** ONLY VISIBLE WHEN FFlagStudioOnboardingStartPageCTA is TRUE
    id: tutorialBanner
    visible: FFlagStudioOnboardingStartPageCTA

    property int bannerWidth: 0
    property int bannerHeight: 0
    property int cornerRadius: 10

    property color backgroundColor: userPreferences.theme.style("StartPage TutorialBanner BannerBackground")
    property color textColor: "black"

    property color buttonColor: RobloxStyle.colorBluePrimary
    property color disabledColor: RobloxStyle.colorBlueDisabled
    property color hoverColor: RobloxStyle.colorBlueHover

    property string sourceImage: ""
    property string mainText: ""
    property string secondaryText: ""
    property string buttonText: ""

    width: tutorialBox.width
    height: bannerHeight
    color: backgroundColor
    radius: cornerRadius

    function onButtonClicked() {}  // empty dummy

    RowLayout {
        id: tutorialBox
        height: parent.height - 2 * anchors.topMargin
        width: Math.max(bannerWidth - 2 * anchors.leftMargin, tutorialSplashImage.width * 2)
        anchors.top: tutorialBanner.top
        anchors.topMargin: 24
        anchors.left: tutorialBanner.left
        anchors.leftMargin: 20
        spacing: 30

        ColumnLayout {
            id: textBlockAndButton
            Layout.preferredWidth: parent.width/2
            Layout.alignment: Qt.AlignTop
            Layout.fillHeight: true

            PlainText {
                id: takeTheStudioTourText
                text: mainText
                Layout.fillWidth: true
                font.weight: Font.DemiBold
                font.pixelSize: 20
                color: textColor
                clip: true
            }

            PlainText {
                id: takeTheStudioTourDesc
                Layout.fillWidth: true
                wrapMode: "WordWrap"
                text: secondaryText
                font.pixelSize: 14
                color: textColor
                clip: true
            }

            Item
            {
                id: buttonCell
                Layout.fillWidth: true
                Layout.fillHeight: true
                RobloxButton {
                    id: button
                    anchors.bottom: buttonCell.bottom
                    fontSize: 16
                    fontColor: "Black"
                    text: buttonText
                    color: buttonColor
                    onClicked: {
                        onButtonClicked()
                    }
                }
            }
        }

        Item {
            id: tutorialSplashImageContainer
            Layout.fillHeight: true
            Layout.preferredWidth: parent.width/2

            Image {
                id: tutorialSplashImage
                anchors.right: parent.right
                anchors.rightMargin: 40
                source: sourceImage
                fillMode: Image.Pad
                cache: false
            }
        }
    }
}