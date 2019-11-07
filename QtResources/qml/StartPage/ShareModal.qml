import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import ".."

Item {
    readonly property bool onFirstPage: shareStackLayout.currentIndex == 0
    readonly property bool onSecondPage: shareStackLayout.currentIndex == 1

    // Should the grey header be visible
    property bool showHeader: true
    // "point" refers to the triangle in the top right corner when opened from the ribbon
    property bool showPoint: false

    readonly property int cornerRadius: 8
    readonly property int listElementHeight: 58
    readonly property int headerHeight: showHeader ? 44 : 0
    readonly property int bodyMargin: 8
    readonly property int frameWidth: 400
    readonly property int frameHeight: onFirstPage ? headerHeight + (bodyMargin * 2) + (listElementHeight * shareModalListModel.count)
                                                   : 652
    readonly property int iconSize: 28
    readonly property int friendItemHeight: 56

    // Where the right side of the point should be from the right of the widget
    readonly property int pointDistanceFromRight: 40
    readonly property int pointSize: 16

    readonly property string backgroundColour: userPreferences.theme.style("CommonStyle mainBackground")
	readonly property string headerColour: userPreferences.theme.style("CommonStyle mainBackground")

    // Make the background bigger when displayed in a window so that the drop shadow is visible
    readonly property int extraMarginForDropShadow: 16

    property var gameModel: undefined
    property double gameId: 0
    property string gameLink: ""
    property string gameLinkWithGameName: ""
    property string creatorName: ""
    property string gameIcon: ""

    // startPage is undefined if this was opened from the ribbon
    property var startPage: undefined

    id: shareContainer
    objectName: "ShareModalContainer"

    width: 0
    height: 0
    opacity: 0
    visible: false

    // Set the size of the container from C++ so the "window" scales with it
    function setContainerSize(width, height) {
        shareContainer.width = width;
        shareContainer.height = height;
    }

    // Return how big the widget itself will be so that C++ knows where to position it
    function getFrameWidth() {
        return frameWidth + (2 * extraMarginForDropShadow);
    }

    function getFrameHeight() {
        return frameHeight + (2 * extraMarginForDropShadow);
    }

    function swapToShareWithFriends() {
        shareModalController.onOpenShareToRobloxFriends(shareContainer.gameId);
        shareHeaderText.text = qsTr("Studio.App.ShareModal.ShareWithRobloxFriends");
        shareStackLayout.currentIndex = 1;

        if ((typeof shareModalWindow != "undefined") && shareModalWindow) {
            // Tell the window to move to the center of the screen
            shareModalWindow.onSwapToShareWithFriends();

            // And replace the point with the header
            showPoint = false;
            showHeader = true;
        }
    }

    function returnToDefaultShareModal() {
        shareHeaderText.text = qsTr("Studio.App.ShareModal.ShareGame");
        shareStackLayout.currentIndex = 0;
    }

    function reset() {
        shareContainer.gameModel = undefined;
        shareContainer.gameId = 0;
        shareContainer.gameLink = "";
        shareContainer.gameLinkWithGameName = "";
        shareContainer.creatorName = "";
        shareContainer.gameIcon = "";

        searchText.focus = false;
        searchText.text = "";
        shareModalListModel.clear();

        returnToDefaultShareModal();
    }

    // Encode a game name into a URL safe but user displayable format
    function encodeGameName(gameName) {
        return encodeURI(gameName)
            .replace(/%\w\w/g, "-")     // Replace any encoded characters with -
            .replace(/[`~!@#\$%\^&\*\(\)_\+\[\{\]\}\\\|;:",<\.>\/\?]/g, "-") // Replace other punctuation with -
            .replace(/'/g, "")          // Remove any '
            .replace(/^\-+/g, "")       // Remove any - at the start of string
            .replace(/\-+$/g, "")       // Remove any - at the end of string
            .replace(/\-\-*/g, "-")     // Replace 2 or more consecutive - with 1
    }

    // The ribbon doesn't have a game model in the same way as the start page so calls this directly with the data it needs
    function showFromRibbon(placeId, name, creatorName, gameIcon) {
        // Fake a game model like the start page so the rest of the share code is the same
        var gameModel = {
            "publishedRootPlaceId": placeId,
            "name": name,
            "creatorName": creatorName,
            "gameIcon": gameIcon,
        };

        // The first page of the ribbon-share window points to the share icon
        showPoint = true;
        showHeader = false;

        return show(gameModel);
    }

    // Called from C++ when the icon loads after the qml
    function setGameIcon(gameIcon) {
        shareContainer.gameIcon = gameIcon;
    }

    function show(_gameModel) {
        reset();

        shareModalController.handleSuggestedRefresh();

        shareContainer.gameModel = _gameModel;
        shareContainer.gameId = shareContainer.gameModel.publishedRootPlaceId;
        shareModalController.setRootPlaceId(shareContainer.gameId);

        // Append the game name to the end of the url
        shareContainer.gameLink = shareModalController.getPlacePageUrl(shareContainer.gameId);
        shareContainer.gameLinkWithGameName = shareContainer.gameLink;
        if (shareContainer.gameLinkWithGameName.slice(-1) !== '/') {
            shareContainer.gameLinkWithGameName += '/';
        }
        shareContainer.gameLinkWithGameName += encodeGameName(shareContainer.gameModel.name);

        shareContainer.gameIcon = shareContainer.gameModel && shareContainer.gameModel.gameIcon ? shareContainer.gameModel.gameIcon : ""

        if ((typeof startPage !== "undefined") && startPage && (startPage.getCurrentTabElementId() === "myGames_GroupGames")) {
            shareContainer.creatorName = groupGamesPageController.getCurrentGroupName();
        } else {
            shareContainer.creatorName = shareContainer.gameModel && shareContainer.gameModel.creatorName ? shareContainer.gameModel.creatorName : loginManager.getLoggedInUser().getUsername();
        }

        shareModalListModel.append({"text": qsTr("Studio.App.ShareModal.ShareWithRobloxFriends"), "icon": RobloxStyle.getResource("../images/StartPage/icon_roblox.png"), "action": "friends"});
        shareModalListModel.append({"text": qsTr("Studio.App.ShareModal.CopyLink"), "icon": RobloxStyle.getResource("../images/StartPage/icon_copylink.png"),
                                       "clickedIcon": RobloxStyle.getResource("../images/StartPage/icon_linkcopied.png"), "subText": shareContainer.gameLinkWithGameName, "action": "copy"});

        if (!loginManager.getLoggedInUser().getIsUnder13()) {
            shareModalListModel.append({"text": qsTr("Studio.App.StartPage.ShareOnTwitter"), "icon": RobloxStyle.getResource("../images/StartPage/icon_twitter.png"), "action": "twitter", "url": shareModalController.getTwitterShareUrl(shareContainer.gameModel.name, gameLink)});
            shareModalListModel.append({"text": qsTr("Studio.App.StartPage.ShareOnFacebook"), "icon": RobloxStyle.getResource("../images/StartPage/icon_fb.png"), "action": "facebook", "url": shareModalController.getFacebookShareUrl(shareContainer.gameLink)});
        }

        if (startPage) {
            startPage.onModalOpened();
        }

        shareContainer.visible = true;
        shareContainer.opacity = 1;

        shareModalController.onShowShareModal();
    }

    function hide() {
        if (startPage) {
            startPage.onModalClosed();
            shareModalController.onCloseShareModal();
        }

        shareContainer.opacity = 0;
    }

    function onCloseClicked() {
        shareContainer.hide();

        if ((typeof shareModalWindow != "undefined") && shareModalWindow) {
            // Tell the C++ to close the window this widget's in
            shareModalWindow.onCloseButtonClicked();
            shareContainer.reset();
        }
    }

    Behavior on opacity {
        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad

            onRunningChanged: {
                if (!running && (shareContainer.opacity == 0)) {
                    shareContainer.visible = false;
                    reset();
                }
            }
        }
    }

    Rectangle {
        id: blurBackground
        anchors.fill: parent
        color: RobloxStyle.colorGray1
        // Show if on start page, or not on start page but on roblox friends page
        opacity: (shareContainer.visible && ((startPage !== undefined) || onSecondPage)) ? 0.3 : 0

        Behavior on opacity {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
    }

    MouseArea {
        id: backgroundMouseArea
        objectName: "ShareModalBackground"
        anchors.fill: parent
        hoverEnabled: true
        visible: shareContainer.visible
        acceptedButtons: Qt.LeftButton | Qt.RightButton

        onClicked: {
            onCloseClicked();
            mouse.accepted = true;
        }
    }

    Rectangle {
        id: shareBackground
        width: frameWidth
        height: frameHeight
        anchors.centerIn: parent
        color: backgroundColour
        radius: cornerRadius

        MouseArea {
            // Cancels out backgroundMouseArea
            // Otherwise clicking the modal would pass through onto backgroundMouseArea and close the modal
            anchors.fill: parent
            enabled: shareContainer.visible
            visible: shareContainer.visible
            acceptedButtons: Qt.LeftButton | Qt.RightButton

            onClicked: {
                searchText.focus = false;
            }
        }

        // The "point" is just a rotated rectangle that matches the colour of the header/background
        Rectangle {
            id: headerPoint
            visible: showPoint
            anchors.verticalCenter: parent.top
            anchors.right: parent.right
            anchors.rightMargin: pointDistanceFromRight
            width: pointSize
            height: pointSize
            transform: Rotation {
                origin.x: pointSize / 2
                origin.y: pointSize / 2
                angle: 45
            }
            color: showHeader ? headerColour : backgroundColour
        }

        DropShadow {
            visible: headerPoint.visible
            anchors.fill: headerPoint
            radius: 8.0
            samples: 17
            color: "#B0000000"
            opacity: (startPage === undefined && onFirstPage) ? 4/11 : 1
            source: headerPoint
            z: -1
            // The drop shadow needs to rotate with point. Qt complains if you use "transform: headerPoint.transform" so need to duplicate the code
            transform: Rotation {
                origin.x: pointSize / 2
                origin.y: pointSize / 2
                angle: 45
            }
        }

        Item {
            id: shareHeader
            visible: showHeader
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: headerHeight

            // Needs 2 background rectangles because only the top corners are curved, but QML applies radius to all 4 corners
            Rectangle {
                anchors.fill: parent
                color: headerColour
                radius: cornerRadius
            }

            Rectangle {
                anchors.fill: parent
                anchors.topMargin: cornerRadius
                color: headerColour
            }

            PlainText {
                id: shareHeaderText
                objectName: "ShareModalTitle"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 15
                text: qsTr("Studio.App.ShareModal.ShareGame");
                font.pixelSize: 18
                font.family: RobloxStyle.fontSourceSansPro
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
				color: userPreferences.theme.style("CommonStyle mainText")
            }

            Item {
                id: shareHeaderCloseButtonContainer
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 5
                width: 24
                height: 24

                Image {
                    id: shareHeaderCloseButton
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    width: 18
                    height: 18
                    smooth: true
                    mipmap: true
                    source: RobloxStyle.getResource("../images/StartPage/CloseIcon.png");
                }

                MouseArea {
                    objectName: "ShareModalCloseButton"
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: onCloseClicked();
                }
            }
        }

        Item {
            id: shareBody
            anchors.top: shareHeader.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            StackLayout {
                id: shareStackLayout
                anchors.fill: parent
                currentIndex: 0

                ListView {
                    objectName: "ShareModalActionListView"
                    anchors.fill: parent
                    anchors.topMargin: bodyMargin
                    anchors.bottomMargin: bodyMargin
                    interactive: false

                    model: ListModel {
                        id: shareModalListModel
                    }

                    delegate: Item {
                        anchors.left: parent ? parent.left : undefined
                        anchors.right: parent ? parent.right : undefined
                        height: listElementHeight

                        Image {
                            id: shareIcon
                            width: iconSize
                            height: iconSize
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: 30
                            source: model.icon
                            smooth: true
                            mipmap: true
                        }

                        PlainText {
                            id: shareText
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: shareIcon.right
                            anchors.leftMargin: 15
                            anchors.verticalCenterOffset: 1
                            text: model.text
                            color: userPreferences.theme.style("StartPage ShareModal shareText")
                            font.pixelSize: 16
                            font.family: RobloxStyle.fontSourceSansPro
                            renderType: userPreferences.theme.style("CommonStyle textRenderType")
                        }

                        PlainText {
                            visible: model.subText !== undefined
                            anchors.left: shareText.left
                            anchors.top: shareText.bottom
                            anchors.topMargin: -1
                            anchors.right: parent.right
                            anchors.rightMargin: 16
                            text: model.subText !== undefined ? model.subText : ""
                            color: userPreferences.theme.style("StartPage ShareModal subText")
                            font.pixelSize: 12
                            font.family: RobloxStyle.fontSourceSansProLight
                            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                            renderType: userPreferences.theme.style("CommonStyle textRenderType")
                            elide: Text.ElideRight
                        }

                        Timer {
                            // This timer disables the copy to clipboard button for 3 seconds after a click
                            // Then resets it to be active again
                            id: timer
                            interval: 3000
                            onTriggered: {
                                if (model.action === "copy") {
                                    shareIcon.source = model.icon;
                                    shareText.text = qsTr("Studio.App.ShareModal.CopyLink");
                                    shareText.color = RobloxStyle.colorBluePrimary;
                                }
                            }
                        }

                        MouseArea {
                            objectName: "ShareModalAction_" + model.action
                            anchors.fill: parent
                            anchors.margins: 4
                            cursorShape: Qt.PointingHandCursor

                            onClicked: {
                                if (model.action === "copy") {
                                    if (!timer.running) {
                                        shareModalController.onCopyLinkClicked();

                                        shareModalController.copyToClipboard(model.subText);
                                        shareIcon.source = model.clickedIcon;
                                        shareText.text = qsTr("Studio.App.ShareModal.LinkCopied");
                                        shareText.color = RobloxStyle.colorGray3;
                                        timer.restart();
                                    }

                                } else if (model.action === "friends") {
                                    swapToShareWithFriends();

                                } else {
                                    if (action == "twitter") {
                                        shareModalController.onShareToTwitter();
                                    } else if (action == "facebook") {
                                        shareModalController.onShareToFacebook();
                                    }

                                    var url = model.url;
                                    if (!url) {
                                        console.log("No url for action " + model.action);
                                    } else {
                                        Qt.openUrlExternally(url);
                                    }
                                }
                            }
                        }
                    }
                }

                Item {
                    anchors.fill: parent

                    Item {
                        id: gameDetails
                        anchors.top: parent.top
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height: 78

                        GameImage {
                            id: shareGameIcon
                            anchors.left: parent.left
                            anchors.leftMargin: (parent.height - height) / 2
                            anchors.verticalCenter: parent.verticalCenter
                            width: 48
                            height: 48
                            source: shareContainer.gameIcon
                            mask: RobloxStyle.getResource("../images/StartPage/GameIconMask.png");
                            dropShadow: false
                        }

                        PlainText {
                            id: shareGameName
                            anchors.top: shareGameIcon.top
                            anchors.left: shareGameIcon.right
                            anchors.right: parent.right
                            anchors.leftMargin: 12
                            anchors.rightMargin: 12
                            text: shareContainer.gameModel && shareContainer.gameModel.name ? shareContainer.gameModel.name : "Unnamed game"
                            color:  userPreferences.theme.style("StartPage ShareModal messageText")
                            font.pixelSize: 18
                            font.family: RobloxStyle.fontSourceSansPro
                            renderType: userPreferences.theme.style("CommonStyle textRenderType")
                            elide: Text.ElideRight
                        }

                        PlainText {
                            anchors.top: shareGameName.bottom
                            anchors.left: shareGameName.left
                            anchors.right: shareGameName.right
                            text: qsTr("Studio.App.ShareModal.By1").arg(shareContainer.creatorName)
                            color: userPreferences.theme.style("StartPage ShareModal subText")
                            font.pixelSize: 14
                            font.family: RobloxStyle.fontSourceSansProLight
                            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                            renderType: userPreferences.theme.style("CommonStyle textRenderType")
                            elide: Text.ElideRight
                        }
                    }

                    Rectangle {
                        id: grayBackground
                        anchors.top: gameDetails.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height:  13
                        color: userPreferences.theme.style("StartPage ShareModal grayBackground")
                    }

                    Rectangle {
                        id: topGrayBar
                        anchors.top: grayBackground.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height: 1
                        color: userPreferences.theme.style("StartPage ShareModal stripeBackground")
                    }

                    Rectangle {
                        id: searchBar
                        anchors.top: topGrayBar.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height: 44
                        color:  userPreferences.theme.style("CommonStyle inputFieldBackground")

                        MouseArea {
                            anchors.fill: parent
                            anchors.topMargin: 2
                            anchors.bottomMargin: 2
                            anchors.leftMargin: 8
                            anchors.rightMargin: 8

                            onClicked: {
                                searchText.forceActiveFocus();
                            }
                        }

                        Image {
                            id: searchIcon
                            anchors.left: parent.left
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.leftMargin: 17
                            width: 22
                            height: 22
                            smooth: true
                            mipmap: true
                            source: RobloxStyle.getResource("../images/StartPage/SearchIconGray.png");
                        }

                        TextField {
                            id: searchText
                            objectName: "ShareModalSearchFriendsField"
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.verticalCenterOffset: 1
                            anchors.left: searchIcon.right
                            anchors.right: searchClearButton.left
                            anchors.leftMargin: 21 - 8
                            anchors.rightMargin: 0
                            placeholderText: "Search for friends"
                            font.pixelSize: 18
                            font.family: RobloxStyle.fontSourceSansProLight
                            font.weight: userPreferences.theme.style("CommonStyle fontWeight")

                            style: TextFieldStyle {
                                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                                placeholderTextColor: userPreferences.theme.style("CommonStyle dimmedText")
                                textColor: userPreferences.theme.style("StartPage ShareModal messageText")
                                background: Rectangle {
                                    color: userPreferences.theme.style("CommonStyle inputFieldBackground")
                                }
                            }

                            onTextChanged: {
                                shareModalController.getConversationProxyModel().setFilter(text);
                            }
                        }

                        Button {
                            readonly property int searchClearButtonSize: 20
                            readonly property int extraSpace: 2
                            id: searchClearButton
                            objectName: "ShareModalClearSearchFriendsButton"
                            width: searchClearButtonSize + extraSpace * 2
                            height: searchClearButtonSize + extraSpace * 2
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.rightMargin: 12
                            anchors.right: parent.right
                            style: ButtonStyle {
                                background: Rectangle {
                                    color: "transparent"
                                }
                            }
                            visible: searchText.text.length > 0

                            Component.onCompleted: __behavior.cursorShape = Qt.PointingHandCursor

                            Image {
                                id: clearIcon
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                visible: !searchClearButton.hovered
                                width: searchClearButton.searchClearButtonSize
                                height: searchClearButton.searchClearButtonSize
                                smooth: true
                                mipmap: true
                                scale: Image.PreserveAspectFit
                                source: RobloxStyle.getResource("../images/StartPage/ClearIcon.png")
                            }

                            Image {
                                id: clearIconHover
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                visible: searchClearButton.hovered
                                width: searchClearButton.searchClearButtonSize
                                height: searchClearButton.searchClearButtonSize
                                smooth: true
                                mipmap: true
                                scale: Image.PreserveAspectFit
                                source: RobloxStyle.getResource("../images/StartPage/ClearIconHover.png");
                            }

                            onClicked: {
                                searchText.text = "";
                            }
                        }
                    }

                    Rectangle {
                        id: bottomGrayBar
                        anchors.top: searchBar.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height: 1
                        color: userPreferences.theme.style("StartPage ShareModal stripeBackground")
                    }

                    LoadingAnimation {
                        id: shareModalPopulatingAnimation
                        anchors.bottom: parent.bottom
                        visible: false
                    }

                    ListView {
                        id: shareFriendsListView
                        objectName: "ShareModalConversationListView"
                        anchors.top: bottomGrayBar.bottom
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: cornerRadius
                        anchors.left: parent.left
                        anchors.right: parent.right
                        clip: true
                        boundsBehavior: Flickable.StopAtBounds

                        model: shareModalController.getConversationProxyModel()

                        onAtYEndChanged: {
                            if (atYEnd) {
                                shareModalController.onScrollToBottom();
                            }
                        }

                        Connections {
                            target: shareFriendsListView.model
                            onPopulatingChanged: {
                                shareModalPopulatingAnimation.visible = populating;
                                shareModalPopulatingAnimation.playing = populating;
                            }
                        }

                        delegate: Item {
                            objectName: "ShareModalConversation_" + model.id
                            anchors.left: parent ? parent.left : undefined
                            anchors.right: parent ? parent.right : undefined
                            height: friendItemHeight

                            ConversationThumbnail {
                                id: avatarHeadshot
                                anchors.left: parent.left
                                anchors.leftMargin: 12
                                anchors.verticalCenter: parent.verticalCenter
                                width: 36
                                height: 36

                                userIds: model.userIds ? model.userIds : [ ]
                                userCount: model.userIds ? (model.userIds.length ? model.userIds.length : (model.userIds.count ? model.userIds.count : 0)) : 0
                                conversationType: model.conversationType
                                userPresence: model.presenceType
                            }

                            Item {
                                id: conversationNameAndPresence
                                anchors.left: avatarHeadshot.right
                                anchors.leftMargin: 12
                                anchors.top: avatarHeadshot.top
                                anchors.topMargin: -1
                                anchors.bottom: avatarHeadshot.bottom
                                anchors.right: shareButtonContainer.left
                                anchors.rightMargin: 4

                                property bool showingPresenceText: (model.conversationType === "OneToOneConversation") && (model.presenceType !== 0)

                                PlainText {
                                    id: conversationName
                                    anchors.top: parent.top
                                    anchors.topMargin: conversationNameAndPresence.showingPresenceText ? 0 : 9
                                    anchors.left: parent.left
                                    anchors.right: parent.right
                                    text: model.title
                                    color:  userPreferences.theme.style("StartPage ShareModal messageText")
                                    font.pixelSize: 18
                                    font.family: RobloxStyle.fontSourceSansPro
                                    renderType: userPreferences.theme.style("CommonStyle textRenderType")
                                    elide: Text.ElideRight
                                }

                                PlainText {
                                    anchors.top: conversationName.bottom
                                    anchors.left: parent.left
                                    anchors.right: parent.right
                                    anchors.topMargin: -1
                                    visible: conversationNameAndPresence.showingPresenceText
                                    text: shareModalController.userPresenceToText(model.presenceType, model.lastLocation)
                                    color: ([RobloxStyle.colorGray2, RobloxStyle.colorGray2, "#02b757", "#f68802"])[model.presenceType]
                                    font.pixelSize: 14
                                    font.family: RobloxStyle.fontSourceSansProLight
                                    font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                                    renderType: userPreferences.theme.style("CommonStyle textRenderType")
                                    elide: Text.ElideRight
                                }
                            }

                            Item {
                                objectName: "ShareToConversationButton"
                                id: shareButtonContainer
                                anchors.right: parent.right
                                anchors.rightMargin: 27
                                anchors.verticalCenter: parent.verticalCenter
                                width: 63
                                height: 32

                                Rectangle {
                                    anchors.fill: parent
                                    radius: 3
                                    border.width: userPreferences.theme.style("StartPage ShareModal shareButtonBorderWidth")
                                    border.color: RobloxStyle.colorGray3
									color: userPreferences.theme.style("StartPage ShareModal shareButtonBackground")
                                    visible: model.shareStatus === 0
                                }

                                PlainText {
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.verticalCenterOffset: 1
                                    text: ([qsTr("Studio.Common.Action.Share"), "", qsTr("Studio.App.ShareModal.Shared"), qsTr("Studio.App.ShareModal.Failed")])[model.shareStatus]
                                    color: model.shareStatus === 0 ? userPreferences.theme.style("StartPage ShareModal messageText") : userPreferences.theme.style("CommonStyle dimmedText")
                                    font.pixelSize: 16
                                    font.family: RobloxStyle.fontSourceSansPro
                                    renderType: userPreferences.theme.style("CommonStyle textRenderType")
                                    visible: model.shareStatus !== 1
                                }

                                LoadingAnimation {
                                    width: 28
                                    height: 8
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    visible: model.shareStatus === 1
                                    playing: model.shareStatus === 1
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    cursorShape: model.shareStatus === 0 ? Qt.PointingHandCursor : Qt.ArrowCursor
                                    visible: model.shareStatus === 0
                                    onClicked: {
                                        // Check that this game hasn't been shared/isn't being shared
                                        if (model.shareStatus === 0) {
                                            shareModalController.onShareToFriendClicked(index, shareContainer.creatorName, shareContainer.gameLink, shareContainer.gameId);
                                        }
                                    }
                                }
                            }

                            Rectangle {
                                id: bottomStripe
                                anchors.left: conversationNameAndPresence.left
                                anchors.right: parent.right
                                anchors.top: parent.bottom
                                height: 1
                                color: userPreferences.theme.style("StartPage ShareModal stripeBackground")
                            }
                        }
                    }

                    RobloxVerticalScrollBar {
                        id: verticalScrollBar
                        window: shareFriendsListView
                        flickable: shareFriendsListView
                    }
                }
            }
        }
    }

    DropShadow {
        anchors.fill: shareBackground
		verticalOffset: userPreferences.theme.style("StartPage ShareModal shadowVerticalOffset")
        radius: userPreferences.theme.style("StartPage ShareModal shadowRadius")
        samples: userPreferences.theme.style("StartPage ShareModal shadowSamples")
        color: userPreferences.theme.style("StartPage ShareModal shadow")
        opacity: (startPage === undefined && onFirstPage) ? userPreferences.theme.style("StartPage ShareModal shadowOpacity") : 1
        source: shareBackground
        z: userPreferences.theme.style("StartPage ShareModal shadowZValue") // Using opacity messes up the z ordering, so it has to be set manually
    }
}
