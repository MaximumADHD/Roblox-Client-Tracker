import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Item {
    property bool hovered: false
    id: gameWidgetContainer
	objectName: isTemplateWidget ? "gameWidget_" + model.gameId : "gameWidget_" + (model.isLocalFile ? model.localFileName : model.publishedGameId)
    opacity: 1.0
    width: 150
    height: 228
    readonly property int marginSize: 8
    readonly property int selectBorderSize: 8
    property bool showCreatorName: false
    property bool showCurrentlyEditing: model.numberCurrentlyEditing > 0
    property bool isTemplateWidget: false
    property bool isMyGameWidget: false
    property bool isRecentWidget: false
    property bool isSelectable: false
    property bool isSelected: false
    property alias gameName: gameText.text

    signal clicked(int index)

	function getEditor() {
		return model.creatorName;
	}

    // Returns true if this widget can have the dropdown attached to it
    function canShowDropdown() {
        if (isTemplateWidget) {
            return false;
        }

        if (model.isLocalFile && !isRecentWidget) {
            return false;
        }

        return true;
    }

    // Setting layer.enabled to true improves the performance of the game widget
    // But it can't be in the parent of the drop shadow, else the drop shadow doesn't show
    // So it's set on the the target of the drop shadow, but the content needs to be placed inside another rectangle
    // Else weird visual bugs occur
    Item {
        id: gameWidgetOuterRectangle
        layer.enabled: true
        anchors.fill: parent

        Rectangle {
            id:gameSelectedHighlight
            anchors.fill: parent
            color: "transparent"
            border.color: userPreferences.theme.style("StartPage GameWidget backgroundSelected")
            border.width: isSelected ? selectBorderSize - 2 : 0 // -2 So there is a 2px gap between the outline and the inner rectangle
            radius: 3
        }

        Rectangle {
            id: gameWidgetRectangle
            anchors.fill: parent
            anchors.margins: isSelectable ? selectBorderSize : 0
            radius: 3
			color: userPreferences.theme.style("StartPage GameWidget background")


            MouseArea {
                id: mouseArea
                hoverEnabled: true
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor

                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onEntered: {
                    gameWidgetContainer.hovered = true;

                    var button = gameGridView.contextMenuButton;
                    if (button.isShowingDropdown && (button.attachedParent !== mouseArea)) {
                        button.closeDropdown();
                    }

                    if (canShowDropdown()) {
                        // Position button in top right corner
                        var point = mouseArea.mapToItem(gameGridView, x + width - button.width, y);
                        button.show(point.x, point.y, mouseArea, model, index);
                    }
                }

                onExited: {
                    gameWidgetContainer.hovered = false;
                }

                onClicked: {
                    if (mouse.button === Qt.LeftButton) {
                        gameGridViewWithHeader.setFocusTo("");

                        // Emit a signal with the model index of the clicked game
                        if (isSelectable || !gameGridView.preventDoubleClickTimer.running) {
                            gameGridView.preventDoubleClickTimer.start();
                            gameWidgetContainer.clicked(index);
                        }

                    } else if (mouse.button === Qt.RightButton) {
                        if (canShowDropdown()) {
							// attached parent can be set to null from gameGridView.hideContextMenuAndDropdown()
							// since onClicked is getting called means cursor is still inside the GameWidget, make sure we have the correct parent attached
							var button = gameGridView.contextMenuButton;
							if ((button.attachedParent !== mouseArea)) {
								button.attachedParent = mouseArea;
							}
                            gameGridView.contextMenuButton.contextButtonClicked(mouse);
                        } else {
                            gameGridViewWithHeader.setFocusTo("");
                            gameGridViewWithHeader.setGridViewScrollable(true);
                        }
                    }
                }
            }
            GameImage {
                id: maskedGameImage
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                source: model.gameIcon
                Item {
                    anchors.fill: parent
                    Component{
                        id: _tcPresenceIndicatorGameWidget
                        TeamCreatePresenceIndicator {
                            users: model && model.activeUsers
                            userCount: model && model.activeUsersCount
                            viewComponent: gameGridView
                            parentMouseComponent: mouseArea
                            popupYOffset: 152
                        }
                    }
                    Loader {
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 4
                        anchors.right: parent.right
                        anchors.rightMargin: 4
                        active: (FFlagTeamCreatePresenceIndicator || FFlagTeamCreatePresenceIndicatorRollout) && Boolean(model && model.activeUsers && model.activeUsers.length > 0)
                        sourceComponent: _tcPresenceIndicatorGameWidget 
                    }
                }
            }

            PlainText {
                id: gameText
                anchors.top: maskedGameImage.bottom
                anchors.left: parent.left
                anchors.right: templateBookIcon.visible ? templateBookIconItem.left : parent.right
                anchors.margins: marginSize
                anchors.topMargin: 5
                text: model.name
				color: userPreferences.theme.style("CommonStyle mainText")
				objectName: "GameName"
                font.pixelSize: 16
                height: isTemplateWidget ? 18 : 42
                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                wrapMode: Text.Wrap
                elide: Text.ElideRight // Show ... if text is too long to fit
                z: 1

                MouseArea {
                    id: gameTextToolTipMouseArea
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    hoverEnabled: true
                    propagateComposedEvents: true
                    onEntered: {
                        // Manually propagate the entered event to the parent MouseArea.
                        // Overwise the game image dropshadow will not show at the same
                        // time as the tooltip. The reason is that even though propagateComposedEvents
                        // is set to true you normally have to set mouse.accepted to false
                        // in the mouse event handler to continue the event propagation.
                        // Unfortunately, the entered and exited events do not pass the
                        // mouse event object, so it's not possible to set mouse.accepted
                        // to false. We therefore have to propagate the event manually.
                        mouseArea.entered();
                        var point = gameTextToolTipMouseArea.mapToItem(gameGridView,
                            x + (width / 2), y + height);
                        gameGridView.gameToolTip.show(model.isLocalFile
                                                      && (typeof model.localFileName !== "undefined") && (model.localFileName !== "") ? model.localFileName
                                                                                                                                      : model.name,
                            point.x, point.y);
                    }
                    onExited: {
                        // Manually propagate the exited event to the parent MouseArea
                        // to work around the dropshadow not showing issue.
                        mouseArea.exited();
                        gameGridView.gameToolTip.hide();
                    }
                }
            }

            // Put Image inside Item so it can be centered
            Item {
                id: templateBookIconItem
                width: 16
                anchors.top: gameText.top
                anchors.right: parent.right
                anchors.bottom: gameText.bottom
                anchors.rightMargin: 6
                readonly property string tooltipText: qsTr("Studio.App.GameWidget.TemplateHasInstruction")

                Image {
                    id: templateBookIcon
                    width: parent.width
                    height: parent.width
                    source: userPreferences.theme.style("StartPage GameWidget templateBookIcon")
                    anchors.verticalCenter: parent.verticalCenter
                    visible: isTemplateWidget && model.hasTutorial

                    MouseArea {
                        id: templateBookIconMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                        propagateComposedEvents: true
                        onEntered: {
                            // Show tooltip offset from the lower right corner.
                            var point = templateBookIconMouseArea.mapToItem(gameGridView,
                                x + width, y + height);
                            gameGridView.gameToolTip.show(templateBookIconItem.tooltipText,
                                point.x, point.y);
                        }
                        onExited: {
                            gameGridView.gameToolTip.hide();
                        }
                    }
                }
            }

            PlainText {
                id: creatorNameText
                anchors.top: gameText.bottom
                anchors.left: gameText.left
                anchors.right: gameText.right
                anchors.bottomMargin: 2
                text: (showCreatorName && model.creatorName) ? qsTr("Studio.App.StartPage.By1").arg(model.creatorName) : ""
                font.pixelSize: 14
                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                color: userPreferences.theme.style("StartPage GameWidget dimmedText")
                visible: showCreatorName
                elide: Text.ElideRight
            }

            Rectangle {
                id: gameWidgetDivider
                anchors.top: creatorNameText.visible ? creatorNameText.bottom : gameText.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: marginSize
                anchors.rightMargin: marginSize
                anchors.topMargin: 2
                height: 1
                color: userPreferences.theme.style("StartPage GameWidget border")
                visible: !isTemplateWidget
            }

            Image {
                id: localFileIcon
                width: 14
                height: 14
                source: "image://QmlImage/LocalFile"
                cache: false
                sourceSize.width: 16
                sourceSize.height: 16
                anchors.left: parent.left
                anchors.top: gameWidgetDivider.bottom
                anchors.margins: marginSize
                anchors.topMargin: marginSize - 2
                visible: !isTemplateWidget && model.isLocalFile
                smooth: true
                mipmap: FFlagStudioDisableMipMapsOnMac ? false : true
            }

            PlainText {
                id: localFileText
                anchors.top: localFileIcon.top
                anchors.left: localFileIcon.right
                anchors.bottom: localFileIcon.bottom
                anchors.leftMargin: 3
                anchors.topMargin: -1
                text: qsTr("Studio.App.GameWidget.LocalFile")
                font.pixelSize: 14
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                color: userPreferences.theme.style("StartPage GameWidget subText")
                visible: !isTemplateWidget && model.isLocalFile
            }

            Image {
                id: currentlyEditingIcon
                width: 14
                height: 14
                source: "qrc:/images/StartPage/UsersIcon.png"
                anchors.left: localFileIcon.left
                anchors.top: localFileIcon.top
                anchors.bottom: localFileIcon.bottom
                visible: gameWidgetContainer.showCurrentlyEditing
                fillMode: Image.PreserveAspectCrop
                horizontalAlignment: Image.AlignLeft
                smooth: true
                mipmap: FFlagStudioDisableMipMapsOnMac ? false : true
                MouseArea {
                    id: currentlyEditingMouseArea
                    enabled: gameWidgetContainer.showCurrentlyEditing
                    hoverEnabled: true
                    cursorShape: Qt.ArrowCursor
                    anchors.fill: parent
                    propagateComposedEvents: true
                    onEntered: {
                        // Manually propagate the entered event to the parent MouseArea.
                        // Overwise the game image dropshadow will not show at the same
                        // time as the window. The reason is that even though propagateComposedEvents
                        // is set to true you normally have to set mouse.accepted to false
                        // in the mouse event handler to continue the event propagation.
                        // Unfortunately, the entered and exited events do not pass the
                        // mouse event object, so it's not possible to set mouse.accepted
                        // to false. We therefore have to propagate the event manually.
                        mouseArea.entered();
                        gameGridView.currentlyEditingWindow.opacity = 1;
                        gameGridView.currentlyEditingWindow.text = model.currentlyEditing;

                        var point = currentlyEditingMouseArea.mapToItem(gameGridView,
                            x + width, y + height);
                        gameGridView.currentlyEditingWindow.x = point.x;
                        gameGridView.currentlyEditingWindow.y = point.y + 6;
                    }
                    onExited: {
                        mouseArea.entered();
                        gameGridView.currentlyEditingWindow.opacity = 0;
                    }
                }
            }

            PlainText {
                id: currentlyEditingNumber
                anchors.top: localFileText.top
                anchors.left: localFileText.left
                anchors.bottom: localFileText.bottom
                anchors.leftMargin: 0
                anchors.topMargin: 0
                text: !isTemplateWidget ? model.numberCurrentlyEditing : "0"
                font.pixelSize: 14
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                color: userPreferences.theme.style("StartPage GameWidget messageText")
                visible: gameWidgetContainer.showCurrentlyEditing
            }

            PlainText {
				function calculateLeftOrRight()
				{
					return gameWidgetDivider.right
				}
                readonly property var showActiveChangingText: (model.isActivating === "activating") || (model.isActivating === "deactivating")
                id: activeText
                anchors.top: localFileText.top
                anchors.bottom: localFileText.bottom
                anchors.right: undefined
                anchors.left: parent.left
                anchors.leftMargin: marginSize
                text: getPrivacyText()
                font.pixelSize: 14
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                color: getColor()
                visible: !isTemplateWidget && !model.isLocalFile;
				function getPrivacyText() {
                    var isActivating = model.isActivating === "activating";
                    var isDeactivating = model.isActivating === "deactivating";
                    var isPublic = (model.isActive === true);

					if(isActivating){
						return qsTr("Studio.App.StartPage.MakingPublic");
					} else if(isDeactivating) {
						return qsTr("Studio.App.StartPage.MakingPrivate");
					} else if(isPublic) {
						return qsTr("Studio.App.GameWidget.Public");
					} else {
						return qsTr("Studio.App.GameWidget.Private");
					}						
				}
				function getColor()
				{
					return (showActiveChangingText || !(model.isActive)) ? userPreferences.theme.style("StartPage GameWidget subText") : userPreferences.theme.style("StartPage GameWidget greenText");
				}
            }

            Rectangle
            {
                id: minimumAgeLabelContainer
                visible: model.minimumAge >= 17
                anchors.bottom: localFileText.bottom
                anchors.right: parent.right
                anchors.rightMargin: marginSize
                color: userPreferences.theme.style("Foreground Contrast")
                width: 28
                height: 18
                radius: 2
                PlainText {
                    id: minimumAgeLabel
                    anchors.fill: parent
                    text: qsTr("Studio.App.ListView.AgeVerified")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 14
                    font.weight: Font.Medium
                    renderType: userPreferences.theme.style("CommonStyle textRenderType")
                    color: userPreferences.theme.style("Text Primary")
                }
                MouseArea {
                    id: ageRestrictedToolTipMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    propagateComposedEvents: true
                    onEntered: {
                        // Show tooltip offset from the lower right corner.
                        var point = ageRestrictedToolTipMouseArea.mapToItem(gameGridView,
                            x + width, y + height);
                        gameGridView.gameToolTip.show(qsTr("Studio.App.StartPage.RestrictedExperienceTooltip"),
                            point.x, point.y);
                    }
                    onExited: {
                        gameGridView.gameToolTip.hide();
                    }
                }   
            }    

        }
    }

    DropShadow {
        anchors.fill: gameWidgetContainer
        anchors.margins: isSelectable ? selectBorderSize : 0
        horizontalOffset: userPreferences.theme.style("StartPage GameWidget shadowHOffset")
        verticalOffset: userPreferences.theme.style("StartPage GameWidget shadowVOffset")
        radius: userPreferences.theme.style("StartPage GameWidget shadowRadius")
        samples: userPreferences.theme.style("StartPage GameWidget shadowSamples")
        color: userPreferences.theme.style("StartPage GameWidget shadow")
        opacity: gameWidgetContainer.hovered ? 1.0 : userPreferences.theme.style("StartPage GameWidget shadowOpacity")
        source: gameWidgetRectangle
        z: -1 // Using opacity messes up the z ordering, so it has to be set manually
        // Fade in darker drop shadow on hover
        Behavior on opacity {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
    }
}
