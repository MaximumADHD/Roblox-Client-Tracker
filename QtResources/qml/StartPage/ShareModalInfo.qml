import QtQuick 2.6
import ".."

// Wraps the ShareModalInfoBox for use on the start page
Item {
    property var startPage: undefined

    property double gameId: 0

    // This acts like a signal but defined as a function pointer so that we can dynamically change what function gets called
    // See setUpForGameNotPublishedDialog() and setUpForGameNotPublicDialog() for setting closeHandler
    // It's called from close()
    property var closeHandler: null

    id: container
    objectName: "ShareModalInfo"
    anchors.fill: parent
    visible: false
    opacity: 0

    Behavior on opacity {
        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad

            onRunningChanged: {
                if (!running && (opacity < 0.1)) {
                    container.visible = false;
                } else {
                    container.visible = true;
                }
            }
        }
    }

    function deprecated_onGameNotPublishedInfoCloseHandler(buttonClicked) {
        if (buttonClicked) {
            shareModalController.onAcceptGameNotPublishedDialog();
        } else {
            shareModalController.onDismissGameNotPublishedDialog();
        }
    }

    function onGameNotPublicInfoCloseHandler(buttonClicked) {
        if (buttonClicked) {
            shareModalController.onAcceptGameNotPublicDialog();
            shareModalController.openGameConfigurePage(gameId);
        } else {
            shareModalController.onDismissGameNotPublicDialog();
        }
    }

    function deprecated_setUpForGameNotPublishedDialog() {
        shareModalInfoBox.deprecated_setUpForGameNotPublishedDialog();
        closeHandler = deprecated_onGameNotPublishedInfoCloseHandler;
    }

    function setUpForGameNotPublicDialog(_gameId) {
        shareModalInfoBox.setUpForGameNotPublicDialog();
        gameId = _gameId;
        closeHandler = onGameNotPublicInfoCloseHandler;
    }

    function show() {
        startPage.onModalOpened();
        container.opacity = 1;
    }

    function hide() {
        container.opacity = 0;
        startPage.onModalClosed();
    }

    function close(buttonClicked) {
        container.hide();
        closeHandler(buttonClicked);
    }

    Rectangle {
        id: blurBackground
        anchors.fill: parent
        color: userPreferences.theme.style("StartPage ShareModal blurBackground")
        opacity: 0.3
    }

    MouseArea {
        id: backgroundMouseArea
        objectName: "ShareModalInfoBackground"
        anchors.fill: parent
        enabled: parent.visible
        visible: parent.visible
        hoverEnabled: parent.visible
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: close(false)
    }

    ShareModalInfoBox {
        id: shareModalInfoBox
        anchors.centerIn: parent
        onCloseRequested: close(buttonClicked)
    }
}
