import QtQuick 2.6
import ".."

Item {
    id: conversationThumbnailContainer

    property var userIds
    property int userCount: 0

    property string conversationType: ""
    property int userPresence: 0

    readonly property int borderMargin: 2

    Item {
        id: topLeftContainer
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        visible: false
        clip: true

        Image {
            id: topLeft
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            width: conversationThumbnailContainer.width
            height: conversationThumbnailContainer.height
            smooth: true
        }
    }

    Item {
        id: topRightContainer
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.horizontalCenter
        anchors.right: parent.right
        visible: false
        clip: true

        Image {
            id: topRight
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            width: conversationThumbnailContainer.width
            height: conversationThumbnailContainer.height
            smooth: true
        }
    }

    Image {
        id: bottomRight
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom
        anchors.left: parent.horizontalCenter
        anchors.right: parent.right
        visible: false
        smooth: true
    }

    Image {
        id: bottomLeft
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.horizontalCenter
        visible: false
        smooth: true
    }

    Rectangle {
        id: centralDivider
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: borderMargin
        color: userPreferences.theme.style("StartPage ShareModal imageDivider")
        visible: false
    }

    Rectangle {
        id: rightVerticalDivider
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.horizontalCenter
        anchors.right: parent.right
        height: borderMargin
        color: userPreferences.theme.style("StartPage ShareModal imageDivider")
        visible: false
    }

    Rectangle {
        id: leftVerticalDivider
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.horizontalCenter
        height: borderMargin
        color: userPreferences.theme.style("StartPage ShareModal imageDivider")
        visible: false
    }

    Image {
        id: mask
        anchors.fill: parent
        source: userPreferences.theme.style("StartPage ShareModal conversationMaskImage")
        smooth: true
    }

    Image {
        id: presenceIndicator
        width: 14
        height: 14
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.bottomMargin: -1
        anchors.rightMargin: -1
        source: (["", RobloxStyle.getResource("../images/StartPage/PresenceIndicator_Online.png"),
            RobloxStyle.getResource("../images/StartPage/PresenceIndicator_InGame.png"), RobloxStyle.getResource("../images/StartPage/PresenceIndicator_InStudio.png")])[userPresence]

        visible: (conversationType == "OneToOneConversation") && (userPresence != 0)
        smooth: true
    }

    function setImage(container, image, userId) {
        container.visible = true;
        image.source = shareModalController.getUserHeadshotUrl(userId);
    }

    function setImageToQuarter(container, image) {
        // Update the size now that it's square
        image.width = conversationThumbnailContainer.width / 2;
        image.height = conversationThumbnailContainer.height / 2;
        // Doesn't need to clip now that it's small
        container.clip = false;
    }

    function getUserId(index) {
        return typeof userIds[index] !== "undefined" ? userIds[index] : 0;
    }

    Component.onCompleted: {
        if (userCount >= 1) {
            // Top left icon always visible
            setImage(topLeftContainer, topLeft, getUserId(0));

            if ((userCount == 1) || (conversationType == "OneToOneConversation")) {
                // Turn clip off when there's only the one
                topLeftContainer.clip = false;
                topRightContainer.clip = false;

            } else { // userCount >= 2
                // Split the top-left in half horizontally
                topLeftContainer.anchors.right = conversationThumbnailContainer.horizontalCenter;

                // Set right-half image
                setImage(topRightContainer, topRight, getUserId(1));
                centralDivider.visible = true;

                if (userCount >= 3) {
                    // Split the right image in half vertically
                    topRightContainer.anchors.bottom = conversationThumbnailContainer.verticalCenter;
                    setImageToQuarter(topRightContainer, topRight);

                    // Set bottom right image
                    setImage(bottomRight, bottomRight, getUserId(2));
                    rightVerticalDivider.visible = true;

                    if (userCount >= 4) {
                        // Split top left image in half vertically
                        topLeftContainer.anchors.bottom = conversationThumbnailContainer.verticalCenter;
                        setImageToQuarter(topLeftContainer, topLeft);

                        // Set bottom left image
                        setImage(bottomLeft, bottomLeft, getUserId(3));
                        leftVerticalDivider.visible = true;
                    }
                }
            }
        }
    }
}
