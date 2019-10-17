import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Item {
    readonly property int innerWidth: 165
    readonly property int innerHorizontalMargins: 15
    readonly property int innerVerticalMargins: 15

    property string titleText: qsTr("Studio.App.WhatsNewWindow.PopupTitle");
    property string messageText: qsTr("Studio.App.WhatsNewWindow.PopupDescription");
    property string buttonText: qsTr("Studio.App.WhatsNewWindow.PopupGotIt");

    id: container
    objectName: "WhatsNewPopup"
    width: innerWidth + (2 * innerHorizontalMargins) + 10
    height: background.height + 10

    function getPopupWidth() {
        return background.width;
    }

    function getPopupHeight() {
        return background.height;
    }

    Rectangle {
        id: background
		anchors.verticalCenter: parent.verticalCenter
		anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 8
        radius: 4
        height: childrenRect.height + (2 * innerVerticalMargins)
		color: userPreferences.theme.style("CommonStyle mainBackground")
		width: parent.width - 10

        PlainText {
            id: title
            objectName: "WhatsNewPopupTitle"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: innerVerticalMargins
            anchors.bottomMargin: innerVerticalMargins

            text: titleText
            font.pixelSize: 22
            renderType: Text.NativeRendering
			color: userPreferences.theme.style("CommonStyle mainText")
        }

        PlainText {
            id: description
            objectName: "whatsNewPopupDescription"
            anchors.top: title.visible ? title.bottom : parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: innerHorizontalMargins
            anchors.rightMargin: innerHorizontalMargins
            anchors.topMargin: innerVerticalMargins
            anchors.bottomMargin: innerVerticalMargins
			horizontalAlignment: Text.AlignHCenter

            text: messageText
            wrapMode: Text.Wrap
            font.pixelSize: 16
            renderType: Text.NativeRendering
            color: userPreferences.theme.style("CommonStyle mainText")
        }

        RobloxButton {
            id: acceptButton
            objectName: "WhatsNewPopupAcceptButton"
            text: buttonText
            anchors.top: description.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: innerHorizontalMargins
            anchors.rightMargin: innerHorizontalMargins
            anchors.topMargin: innerVerticalMargins
            anchors.bottomMargin: innerVerticalMargins
            height: 28
            fontSize: 16

            onClicked: {
                whatsNewWindow.closePopup();
				whatsNewWindow.sendPopupAnalytics();
            }
        }
    }

	RectangularGlow {
		id: glow
		width: background.width - 2
		height: background.height - 2
		anchors.horizontalCenter: background.horizontalCenter
		anchors.verticalCenter: background.verticalCenter
		glowRadius: 3
		spread: 0
		color: "#8a8a8a"
		cornerRadius: 4
		z: -1
	}
}
