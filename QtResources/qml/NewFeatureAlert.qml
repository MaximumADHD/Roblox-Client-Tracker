import QtQuick 2.6
import QtGraphicalEffects 1.0
import "."

MouseArea {
    readonly property int extraMarginForDropShadow: 16
    readonly property int innerHorizontalMargins: 20
    readonly property int innerVerticalMargins: 20
    readonly property int boxWidth: 200

    function show() {
        container.visible = true;
    }

    function hide() {
        container.visible = false;
    }

    function close()
    {
        newFeatureAlert.hideRequested();
    }

    id: container
    objectName: "NewFeatureAlertWindow"


    width: boxWidth + (2 * extraMarginForDropShadow)
    height: background.height + (2 * extraMarginForDropShadow)

    visible: false

    acceptedButtons: Qt.LeftButton | Qt.RightButton
    onClicked: close()

    // This mouse area fills a sibling rather than parent
    // For the same reason as the parent (binding loop on height)
    MouseArea {
        anchors.fill: background
        acceptedButtons: Qt.LeftButton | Qt.RightButton
    }

    Rectangle {
        id: background
        anchors.topMargin: 8
        anchors.horizontalCenter: parent.horizontalCenter
        radius: 4
        width: boxWidth
        height: childrenRect.height + (2 * innerVerticalMargins)
        color: userPreferences.theme.style("StartPage ShareModal background")

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

        Item {
            id: closeButtonContainer
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.topMargin: 5
            width: 24
            height: 24

            Image {
                id: closeButton
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: 18
                height: 18
                smooth: true
                mipmap: true
                source: RobloxStyle.getResource("../images/StartPage/CloseIcon.png");
            }

            MouseArea {
                objectName: "NewFeatureAlertCloseButton"
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: close();
            }
        }

        PlainText {
            id: title
            objectName: "NewFeatureAlertTitle"
            anchors.top: closeButtonContainer.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: innerVerticalMargins

            text: nfaTitle
            font.pixelSize: 20
            font.family: RobloxStyle.fontSourceSansPro
            renderType: Text.NativeRendering
            color: userPreferences.theme.style("CommonStyle mainText")
            visible: nfaTitle.length > 0
        }

        PlainText {
            id: description
            objectName: "NewFeatureAlertDescription"
            anchors.top: title.visible ? title.bottom : parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: innerHorizontalMargins
            anchors.rightMargin: innerHorizontalMargins
            anchors.topMargin: innerVerticalMargins
            anchors.bottomMargin: innerVerticalMargins

            text: nfaMessage
            wrapMode: Text.Wrap
            font.pixelSize: 14
            font.family: RobloxStyle.fontSourceSansPro
            renderType: Text.NativeRendering
            color: userPreferences.theme.style("StartPage ShareModal messageText")
        }

        Image {
            id: nfaIcon
            objectName: "NewFeatureAlertIcon"
            anchors.top: description.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: innerVerticalMargins
            anchors.bottomMargin: innerVerticalMargins
            height: nfaImageHeight
            width: nfaImageWidth
            source: RobloxStyle.getResource(nfaIconName)
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
