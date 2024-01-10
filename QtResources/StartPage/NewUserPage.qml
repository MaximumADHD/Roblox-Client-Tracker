import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import ".."

Rectangle {
    property var startPage: null
    property var pageNumber: null

    property var leftMargin: 64 
    property var verticalMargin: 24
    property var topMargin: 100
    property var tourButtonWidth : 180
    property var tourButtonHeight : 32

    id: newUserPage
    objectName: "newUserPage"
    color: userPreferences.theme.style("StartPage Page background")

    Item {
        id: bannerTutorial
        anchors.fill: parent
        Image {
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
            source: "qrc:/StudioNonIconImages/TutorialSplash.png"
        }
    }
    PlainText {
        id: headerText
        text:  qsTr("Studio.App.TutorialPage.Header")
        width: parent.width / 1.8
        color: "white"
        anchors.left: parent.left
        anchors.top : parent.top
        anchors.leftMargin: leftMargin
        anchors.topMargin: topMargin
        wrapMode: Text.Wrap
        font.pixelSize: 48
        font.bold: true
        renderType: userPreferences.theme.style("CommonStyle textRenderType")
    }
    PlainText {
        id: subheaderText
        text: qsTr("Studio.App.TutorialPage.SubHeaderText")
        width: parent.width / 2
        color: "white"
        anchors.left: parent.left
        anchors.top : headerText.bottom
        anchors.leftMargin: leftMargin
        anchors.topMargin: verticalMargin
        wrapMode: Text.Wrap
        font.pixelSize: 18
        font.weight: userPreferences.theme.style("CommonStyle fontWeight")
        renderType: userPreferences.theme.style("CommonStyle textRenderType")
    }
    RobloxButton {
        id: refreshButton
        width: tourButtonWidth
        height: tourButtonHeight
        anchors.left: parent.left
        anchors.top : subheaderText.bottom
        anchors.leftMargin: leftMargin
        anchors.topMargin: verticalMargin
        
        text: (FFlagStudioOnboardingStartPageCTA && newUserPageController.hasCompletedTutorial()) ? qsTr("Studio.App.TutorialPage.RestartTour") : qsTr("Studio.App.TutorialPage.StartTour")
        onClicked: {
            if (FFlagStudioOnboardingStartPageCTAAnalytics)
            {
                newUserPageController.reportSourceAnalytics("tab");
            }
            newUserPageController.startTutorial();
        }
    }
    PlainText {
        id: openTemplateLink
        text: qsTr("Studio.App.TutorialPage.OpenTemplate")
        width: parent.width / 2
        color: "white"
        anchors.left: parent.left
        anchors.top : refreshButton.bottom
        anchors.leftMargin: leftMargin
        anchors.topMargin: verticalMargin
        wrapMode: Text.Wrap
        font.pixelSize: 14
        font.weight: userPreferences.theme.style("CommonStyle fontWeight")
        font.underline: true
        renderType: userPreferences.theme.style("CommonStyle textRenderType")
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onPressed: {
                startPageTabController.onNewGameButtonClicked()
            }
            onEntered: {
                openTemplateLink.color = userPreferences.theme.style("CommonStyle linkText")
            }
            onExited: {
                openTemplateLink.color = "white"
            }
        }
    }
}
