import QtQuick 2.6
import QtGraphicalEffects 1.0
import "StartPage/"
import "."

// This wraps ShareModalInfoBox, puts an animation above it
// And provides an interface to the C++ ShareModalInfoWindow

// Root element needs to be the MouseArea
// If this is an Item with a MouseArea { anchors.fill: parent } as a child
// Then QML errors about a possible property binding loop on height)
MouseArea {
    // TODO: ben.cooper 2018/05/30 remove fflagStudioShareFromRibbonBarUXChanges in QML when removing FFlag::StudioShareFromRibbonBarUXChanges
    property bool fflagStudioShareFromRibbonBarUXChanges: false

    function setFFlagStudioShareFromRibbonBarUXChanges(flag) {
        fflagStudioShareFromRibbonBarUXChanges = flag || false;
    }

    readonly property int extraMarginForDropShadow: 16
    readonly property int deprecated_animFromRight: 40
    readonly property int animRightMargin: fflagStudioShareFromRibbonBarUXChanges ? (buttonCenterFromRight - animRadius) : deprecated_animFromRight
    readonly property int buttonCenterFromRight: 48
    readonly property int moveInfoBoxCloserToAnim: 11

    // Target values for the animation
    readonly property int animRadius: fflagStudioShareFromRibbonBarUXChanges ? 28 : 16
    readonly property real animOpacity: 0.5

    property bool showingAnimation: false

    // For debug purposes to slow down the animation
    readonly property int animTimeMult: 1

    readonly property int timeBetween: animTimeMult * 300
    readonly property int expandTime: animTimeMult * 400
    readonly property int opacityTime: animTimeMult * 200
    readonly property int opacityDelay: expandTime - opacityTime

    // Copy of the enum from ShareModalInfoWindow.h
    readonly property int closeReason_lostFocus: 0
    readonly property int closeReason_accepted: 1
    readonly property int closeReason_shareButton: 2

    function setShowingAnimation(showAnim) {
        showingAnimation = showAnim || false;
    }

    function deprecated_setUpForGameNotPublishedDialog(showAnim) {
        infoBox.deprecated_setUpForGameNotPublishedDialog();
        setShowingAnimation(showAnim || false);
    }

    function setUpForGameNotPublicDialog(showAnim) {
        infoBox.setUpForGameNotPublicDialog();
        setShowingAnimation(showAnim || false);
    }

    function setUpForNewFeatureDialog() {
        infoBox.setUpForNewFeatureDialog();
        setShowingAnimation(true);
    }

    function show() {
        animation.stop();
        deprecated_animation.stop();

        (fflagStudioShareFromRibbonBarUXChanges ? animation : deprecated_animation).start();

        container.visible = true;
    }

    function hide() {
        container.visible = false;

        animation.stop();
        deprecated_animation.stop();
    }

    function close(closeReason) {
        shareModalInfoWindow.hideRequested(closeReason);
    }

    function deprecated_close(buttonClicked) {
        shareModalInfoWindow.DEPRECATED_hide(buttonClicked);
    }

    // Used by C++ to correctly position the window
    function getQmlWidth() {
        return container.width;
    }

    id: container
    objectName: "ShareModalInfoWindow"

    width: infoBox.width + (2 * extraMarginForDropShadow)
    height: childrenRect.height + (2 * extraMarginForDropShadow)

    visible: false

    acceptedButtons: Qt.LeftButton | Qt.RightButton
    onClicked: fflagStudioShareFromRibbonBarUXChanges ? close(closeReason_lostFocus) : deprecated_close(false)

    // This mouse area fills a sibling rather than parent
    // For the same reason as the parent (binding loop on height)
    MouseArea {
        anchors.fill: infoBox
        acceptedButtons: Qt.LeftButton | Qt.RightButton
    }

    Item {
        id: animContainer
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: animRightMargin
        width: animRadius * 2
        height: animRadius * 2
        visible: showingAnimation

        MouseArea {
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            width: 22
            height: 22

            hoverEnabled: parent.visible && fflagStudioShareFromRibbonBarUXChanges
            enabled: parent.visible && fflagStudioShareFromRibbonBarUXChanges

            onReleased: {
                if (!fflagStudioShareFromRibbonBarUXChanges) {
                    return;
                }

                if (containsMouse) {
                    close(closeReason_shareButton);
                }
            }

            // Emulate the button background
            Rectangle {
                property bool isClicked: parent.pressedButtons & Qt.LeftButton
                property bool isHovered: parent.containsMouse

                id: shareButtonBackground
                anchors.fill: parent
                visible: fflagStudioShareFromRibbonBarUXChanges
                color: (isClicked && isHovered) ? RobloxStyle.ribbonButtonBackgroundClicked
                                                : ((isClicked || isHovered) ? RobloxStyle.ribbonButtonBackgroundHovered
                                                                            : RobloxStyle.ribbonButtonBackground)
            }

            // Blur for the animation so the opacity blends better (else it comes it nearly invisible)
            FastBlur {
                visible: fflagStudioShareFromRibbonBarUXChanges
                source: anim
                radius: fflagStudioShareFromRibbonBarUXChanges ? anim.radius / 2 : 0
            }

            // The animation should be ontop of the background, but below the icon
            Rectangle {
                id: anim
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                radius: fflagStudioShareFromRibbonBarUXChanges ? 0 : animRadius
                width: radius * 2
                height: radius * 2
                color: fflagStudioShareFromRibbonBarUXChanges ? "white" : RobloxStyle.colorGray6
                opacity: fflagStudioShareFromRibbonBarUXChanges ? 0 : 0.5

                // TODO: ben.cooper 2018/05/30 remove deprecated_animation when removing FFlag::StudioShareFromRibbonBarUXChanges
                SequentialAnimation on radius {
                    id: deprecated_animation
                    loops: Animation.Infinite
                    PauseAnimation {
                        duration: 600
                    }
                    NumberAnimation {
                        from: 0
                        to: animRadius
                        duration: 600
                        easing.type: Easing.InCubic
                    }
                    NumberAnimation {
                        to: 0
                        duration: 0
                    }
                }

                SequentialAnimation {
                     id: animation
                     loops: Animation.Infinite

                     // Wait between loops
                     PauseAnimation {
                         duration: timeBetween
                     }

                     // Animate the opacity and the radius together
                     ParallelAnimation {
                         // Grow to full size
                         SequentialAnimation {
                             NumberAnimation {
                                 target: anim
                                 properties: "radius"
                                 from: 0
                                 to: animRadius
                                 duration: expandTime
                                 easing.type: Easing.OutCubic
                             }
                         }

                         SequentialAnimation {
                             // Wait before fading out so the circle's nearly full size
                             PauseAnimation {
                                 duration: opacityDelay
                             }

                             // Fade out
                             NumberAnimation {
                                 target: anim
                                 properties: "opacity"
                                 from: animOpacity
                                 to: 0
                                 duration: opacityTime
                                 easing.type: Easing.OutCubic
                             }
                         }
                     }

                     // Reset the values for the next loop
                     PropertyAction {
                         target: anim
                         properties: "radius"
                         value: 0
                     }

                     PropertyAction {
                         target: anim
                         properties: "opacity"
                         value: animOpacity
                     }
                 }
            }

            Image {
                id: shareButtonIcon
                visible: fflagStudioShareFromRibbonBarUXChanges
                source: ((typeof fflagStudioFixShareIcon !== "undefined") && (fflagStudioFixShareIcon === true)) ? RobloxStyle.getResource("/16x16/images/Studio 2.0 icons/16x16/share.png")
                                                                                                                 : RobloxStyle.getResource("/16x16/images/Studio 2.0 icons/16x16/DEPRECATED_share.png")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: -1
                smooth: true

                width: 16
                height: 16
            }
        }
    }

    ShareModalInfoBox {
        id: infoBox
        fflagStudioShareFromRibbonBarUXChanges: container.fflagStudioShareFromRibbonBarUXChanges
        anchors.topMargin: fflagStudioShareFromRibbonBarUXChanges ? -moveInfoBoxCloserToAnim : 0
        anchors.top: animContainer.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        onCloseRequested: fflagStudioShareFromRibbonBarUXChanges ? close(buttonClicked ? closeReason_accepted : closeReason_lostFocus) : deprecated_close(buttonClicked)
    }
}
