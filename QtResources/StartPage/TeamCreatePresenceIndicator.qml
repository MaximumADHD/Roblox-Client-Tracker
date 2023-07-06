import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import ".."

 Rectangle {
    readonly property int avatarSize: 26
    readonly property int userWithAvatarOverflowThreshold: 3
    readonly property int userOverflowThreshold: 9
    readonly property int textLeftMargin: 9
    readonly property int indicatorAnimationRestTime: 200
    readonly property int indicatorAnimationChangeTime: 600
    readonly property int activeIndicatorSize: 8
    readonly property int imageBorder: 2
    readonly property int indicatorSize: 32
    readonly property int indicatorBorder: 1
    readonly property int indicatorMargin: 10
    property var parentMouseComponent: null
    property int popupYOffset: 0
    property var users: null
    property var viewComponent: null
    property var userCount: null
    height: indicatorSize
    width: _activeIndicator.width + _multipleUserSection.width + 18 + imageBorder*2
    radius: indicatorSize
    border.width: indicatorBorder
    border.color: userPreferences.theme.style("StartPage TeamCreatePresence border")
    color: userPreferences.theme.style("StartPage TeamCreatePresence background")

    Rectangle {
        id: backCircle
        width: _activeIndicator.width
        height: _activeIndicator.height
        radius: _activeIndicator.radius * 2
        color: userPreferences.theme.style("StartPage TeamCreatePresence indicator")
        opacity: 0.2
        x: _activeIndicator.x
        y: _activeIndicator.y
    }
    Rectangle {
        width: activeIndicatorSize
        height: activeIndicatorSize
        id: _activeIndicator
        radius: activeIndicatorSize / 2
        color: userPreferences.theme.style("StartPage TeamCreatePresence indicator")
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        SequentialAnimation {
            id: circleAnimation
            loops: Animation.Infinite
            running: runningAnimationSync
            ParallelAnimation {
                PropertyAnimation {
                    target: backCircle 
                    property: "x"
                    to: _activeIndicator.x - (_activeIndicator.width * 0.5)
                    duration: indicatorAnimationChangeTime
                }
                PropertyAnimation {
                    target: backCircle 
                    property: "y"
                    to: _activeIndicator.y - (_activeIndicator.height * 0.5)
                    duration: indicatorAnimationChangeTime
                }
                PropertyAnimation {
                    target: backCircle 
                    property: "width"
                    to: (_activeIndicator.width * 2)
                    duration: indicatorAnimationChangeTime
                }
                PropertyAnimation {
                    target: backCircle 
                    property: "height"
                    to: (_activeIndicator.height * 2)
                    duration: indicatorAnimationChangeTime
                }
            }
            ParallelAnimation {
                PropertyAnimation {
                    target: backCircle 
                    property: "x"
                    to: _activeIndicator.x
                    duration: indicatorAnimationChangeTime
                }
                PropertyAnimation {
                    target: backCircle 
                    property: "y"
                    to: _activeIndicator.y
                    duration: indicatorAnimationChangeTime
                }
                PropertyAnimation {
                    target: backCircle 
                    property: "width"
                    to: (_activeIndicator.width)
                    duration: indicatorAnimationChangeTime
                }
                PropertyAnimation {
                    target: backCircle 
                    property: "height"
                    to: (_activeIndicator.height)
                    duration: indicatorAnimationChangeTime
                }
            }

            PauseAnimation {
                duration: indicatorAnimationRestTime
            }
        }
    }
    Row {
        spacing: userCount > userWithAvatarOverflowThreshold ? -5 : 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 2 * indicatorMargin + indicatorBorder + activeIndicatorSize - 2
        id: _multipleUserSection
        
        Repeater {
            model: users
            Rectangle {
                width: avatarSize
                height: width
                radius: width / 2
                id: _collaboratorAvatar
                color: userPreferences.theme.style("StartPage GameTableView background")
                MouseArea {
                    id: _multUserArea
                    enabled: true
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        if(parentMouseComponent) {
                            parentMouseComponent.entered()
                        }
                        var point = mapToItem(viewComponent, _collaboratorAvatar.x, _collaboratorAvatar.y)
                        var pointXOffset = point.x + avatarSize / 2 + indicatorBorder + activeIndicatorSize + 2*indicatorMargin - index*(avatarSize + _multipleUserSection.spacing)
                        avatarPopup.show(modelData.name, pointXOffset, point.y+popupYOffset+3)
                    }
                    onExited: {
                        if(parentMouseComponent) {
                            parentMouseComponent.exited()
                        }
                        avatarPopup.hide();
                    }
                    onPressed: mouse.accepted = false
                }
                Rectangle {
                    anchors.centerIn: parent
                    width: _collaboratorAvatar.width - imageBorder * 2
                    height: width
                    radius: width / 2
                    color: userPreferences.theme.style("StartPage TeamCreatePresence avatarBackground")
                    Image {
                        anchors.fill: parent
                        source: {
                            if (modelData.avatarIcon) { 
                                return modelData.avatarIcon;
                            } else {
                                return "qrc:/images/StartPage/gameImagePlaceholder.png";
                            }
                        }
                        layer.enabled: true
                        layer.effect: OpacityMask {
                            maskSource: Rectangle {
                                height:  _collaboratorAvatar.height - imageBorder * 2
                                width:  _collaboratorAvatar.width - imageBorder * 2
                                radius: ( _collaboratorAvatar.width - imageBorder * 2) / 2
                            }
                            
                        }

                        onStatusChanged: {
                            if (status === Image.Error)
                            {
                                source = "qrc:/images/StartPage/gameImagePlaceholder.png";
                            }
                        }
                    }
                }
            }
        }
        Rectangle {
            width: avatarSize
            height: width
            visible: userCount > userWithAvatarOverflowThreshold+1
            radius: width / 2
            id: _collaboratorOverflowIcon
            color: userPreferences.theme.style("StartPage TeamCreatePresence background")
            MouseArea {
                id: _multUserArea
                enabled: true
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    if(parentMouseComponent) {
                        parentMouseComponent.entered()
                    }
                    var point = mapToItem(viewComponent, _collaboratorOverflowIcon.x, _collaboratorOverflowIcon.y)
                    var pointXOffset = point.x + 42 - (userWithAvatarOverflowThreshold)*21
                    avatarPopup.show(qsTr("Studio.App.TeamCreate.MultipleUsers"), pointXOffset, point.y+popupYOffset+3)
                }
                onExited: {
                    if(parentMouseComponent) {
                        parentMouseComponent.exited()
                    }
                    avatarPopup.hide();
                }
                onPressed: mouse.accepted = false
            }
            
            Rectangle {
                anchors.centerIn: parent
                width: _collaboratorOverflowIcon.width - imageBorder * 2
                height: width
                radius: width / 2
                color: userPreferences.theme.style("StartPage TeamCreatePresence border")
                PlainText {
                    anchors.centerIn: parent
                    font.pixelSize: 10
                    color: userPreferences.theme.style("CommonStyle mainText")
                    text: userCount > userOverflowThreshold ? "9+" : (userCount - userWithAvatarOverflowThreshold).toString()
                }
            }
    }

    }
}
