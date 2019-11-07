import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Item {
    property bool fflagStudioShareFromRibbonBarUXChanges: false
    readonly property int innerWidth: fflagStudioShareFromRibbonBarUXChanges ? 165 : 185
    readonly property int innerHorizontalMargins: fflagStudioShareFromRibbonBarUXChanges ? 20 : 18
    readonly property int innerVerticalMargins: 20

    property string titleText: ""
    property string messageText: ""
    property string buttonText: ""

    signal closeRequested(bool buttonClicked)

    id: container
    objectName: "ShareModalInfoBox"
    width: innerWidth + (2 * innerHorizontalMargins)
    height: background.height

    function setMessage(title, message, button) {
        titleText = title;
        messageText = message;
        buttonText = button;
    }

    // Set the text correctly for the purpose of the info dialog
    function deprecated_setUpForGameNotPublishedDialog() {
        setMessage("", qsTr("Studio.App.StartPage.PublishYourGame"), qsTr("Studio.Common.Action.Okay"));
    }

    function setUpForGameNotPublicDialog() {
        setMessage("", qsTr("Studio.App.ShareModalInfoBox.MakeGamePublicToShare"), qsTr("Studio.App.RobloxRibbonMainWindow.GameSettings"));
    }

    function setUpForNewFeatureDialog() {
        setMessage(qsTr("Studio.App.StartPage.ShareYourGame"), qsTr("Studio.App.StartPage.ClickShareIcon"), qsTr("Studio.App.StartPage.GotIt"));
    }

    Rectangle {
        id: background
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 8
        radius: 4
        height: childrenRect.height + (2 * innerVerticalMargins)
		color: userPreferences.theme.style("CommonStyle mainBackground")

        opacity: parent.visible ? 1 : 0
        Behavior on opacity {
            NumberAnimation {
                duration: 200
                onRunningChanged: {
                    if (parent.visible) {
                        if (!running) {
                            dropShadow.visible = true;
                        }
                    } else {
                        dropShadow.visible = false;
                    }
                }
            }
        }

        PlainText {
            id: title
            objectName: "ShareModalInfoBoxTitle"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: innerVerticalMargins
            anchors.bottomMargin: innerVerticalMargins

            text: titleText
            font.pixelSize: fflagStudioShareFromRibbonBarUXChanges ? 20 : 22
            font.family: RobloxStyle.fontSourceSansPro
            renderType: Text.NativeRendering
			color: userPreferences.theme.style("CommonStyle mainText")
            visible: titleText.length > 0
        }

        PlainText {
            id: description
            objectName: "ShareModalInfoBoxDescription"
            anchors.top: title.visible ? title.bottom : parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: innerHorizontalMargins
            anchors.rightMargin: innerHorizontalMargins
            anchors.topMargin: innerVerticalMargins
            anchors.bottomMargin: innerVerticalMargins

            text: messageText
            wrapMode: Text.Wrap
            font.pixelSize: fflagStudioShareFromRibbonBarUXChanges ? 14 : 16
            font.family: RobloxStyle.fontSourceSansPro
            renderType: Text.NativeRendering
            color: userPreferences.theme.style("StartPage ShareModal messageText")
        }

        RobloxButton {
            id: acceptButton
            objectName: "ShareModalInfoBoxAcceptButton"
            text: buttonText
            anchors.top: description.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: (fflagStudioShareFromRibbonBarUXChanges ? 1.5 : 2) * innerHorizontalMargins
            anchors.rightMargin: (fflagStudioShareFromRibbonBarUXChanges ? 1.5 : 2) * innerHorizontalMargins
            anchors.topMargin: innerVerticalMargins
            anchors.bottomMargin: innerVerticalMargins
            height: fflagStudioShareFromRibbonBarUXChanges ? 24 : 28
            fontSize: fflagStudioShareFromRibbonBarUXChanges ? 14 : 18

            onClicked: {
                closeRequested(true);
            }
        }
    }

    DropShadow {
        visible: false
        id: dropShadow
        anchors.fill: background
		verticalOffset: userPreferences.theme.style("StartPage ShareModal shadowVerticalOffset")
        radius: userPreferences.theme.style("StartPage ShareModal shadowRadius")
        samples: userPreferences.theme.style("StartPage ShareModal shadowSamples")
        color: userPreferences.theme.style("StartPage ShareModal shadow")
        opacity: userPreferences.theme.style("StartPage ShareModal shadowOpacity")
        source: background
        z: userPreferences.theme.style("StartPage ShareModal shadowZValue")
    }
}
