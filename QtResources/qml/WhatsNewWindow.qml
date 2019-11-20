import QtQuick 2.6
import QtGraphicalEffects 1.0
import "."

Item {
	readonly property int listItemHorizontalMargins: 10
	readonly property int listItemHeight: 45
	readonly property int listItemAdditionalHeight: 20

	readonly property int containerHeight: 215
	readonly property int containerWidth: 315

	readonly property int frameWidth: 300
	readonly property int frameHeight: 150 + listItemHeight

	readonly property int listWidth: 300
	readonly property int listHeight: 150

	readonly property int extraMarginForItemBorders: 13
	readonly property int extraMarginForShrunkWindow: 10
	readonly property int extraMarginForContainer: 30
	readonly property int extraMarginForNotificationIcon: 20

	readonly property int verticalItemTextPadding: 5
	readonly property int horizontalItemTextPadding: 10
	readonly property int spaceBetweenItems: 4
	readonly property int sideBorderMargins: 7
	readonly property int verticalBorderMargins: 5
	readonly property int scrollBarExtraWidth: 10

	readonly property int readOuterBoxSize: 14
	readonly property int readInnerBoxSize: 8
	readonly property int readBoxMultiLineAdjustment: 8

	readonly property int pointSize: 16
	readonly property int pointDistanceFromRight: 40

	readonly property var borderColor: userPreferences.theme.style("StartPage WhatsNew border")
	readonly property var lineColor: userPreferences.theme.style("StartPage WhatsNew lineSeparator")
	readonly property var shadowColor: userPreferences.theme.style("StartPage WhatsNew shadow")

    property bool fflagStudioUpdateWhatsNewDevForumUrl: false;
    property var devForumUrl: "";

    signal closeRequested(bool buttonClicked)

    id: container
    objectName: "WhatsNewBox"
    width: containerWidth
	height: window.childrenRect.height + extraMarginForContainer

	function setContainerDimensions(width, height) {
		containerWidth = width;
		containerHeight = height;
	}

    function setFFlagStudioUpdateWhatsNewDevForumUrl(flag) {
        fflagStudioUpdateWhatsNewDevForumUrl = flag || false;
    }

    function setUpdateDevForumUrl(url)
    {
        devForumUrl = url;
    }

	function getContainerWidth() {
        return containerWidth;
    }

	function getWindowHeight() {
		return window.height;
	}

	function getCount() {
		return updatesList.count
	}

	function appendItem(nameIn, urlIn, newPostIn) {
		updatesList.append({"name": nameIn, "url": urlIn, "newPost": newPostIn})
	}

	function clearList() {
		updatesList.clear()
	}

	MouseArea {
		anchors.fill: parent
		onClicked: {
			if (!triangleMouseArea.containsMouse && !windowMouseArea.containsMouse) {
				whatsNewWindow.closeWindow()
			}
		}
	}

	Rectangle {
		id: window
		width: frameWidth
		height: childrenRect.height
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		color: userPreferences.theme.style("CommonStyle mainBackground")
		radius: 6
		z: 1

		Rectangle {
			id: list
			width: window.width
			height: (childrenRect.height < frameHeight) ? (childrenRect.height + extraMarginForShrunkWindow) : frameHeight - 2
			anchors.top: parent.top
			anchors.topMargin: 2
			anchors.left: parent.left
			color: "transparent"

			Component {
				id: listComponent
				Item {
					id: listItem
					width: window.width
					height: listItemHeight + ((postName.lineCount - 1) * listItemAdditionalHeight)
					anchors.left: parent.left
					Column {
						leftPadding: horizontalItemTextPadding + extraMarginForNotificationIcon
						rightPadding: horizontalItemTextPadding
						topPadding: verticalItemTextPadding + 5
						bottomPadding: verticalItemTextPadding
						spacing: spaceBetweenItems

						Text {
							id: postName
							width: verticalScrollBar.visible ? (itemBorder.width - 70) : (itemBorder.width - 50)
							height: itemBorder.height
							text: name
							color: userPreferences.theme.style("CommonStyle mainText")
							font.pixelSize: 16
							renderType: Text.NativeRendering
							font.family: RobloxStyle.fontSourceSansPro
							wrapMode: Text.WordWrap
							z: 4
						}
					}

					Rectangle {
						id: newPostNotificationDot
						anchors.left: parent.left
						anchors.leftMargin: extraMarginForNotificationIcon / 2
						anchors.verticalCenter: parent.verticalCenter
						anchors.verticalCenterOffset: -3
						width: 8
						height: 8
						radius: 4
						color: "orange"
						visible: newPost
						z: 4
					}

					Rectangle {
						id: itemBorder
						anchors.left: parent.left
						width: window.width
						height: parent.height - verticalBorderMargins
						color: "transparent"
						z: -1

						MouseArea {
							id: mouseArea
							anchors.fill: parent
							hoverEnabled: true
							cursorShape: Qt.PointingHandCursor
							onClicked: {
								whatsNewWindow.launchUrl(url)
								newPost = false
							}
							onEntered: {
								itemBorder.color = userPreferences.theme.style("StartPage WhatsNew highlight")
							}
							onExited: {
								itemBorder.color = "transparent"
							}
						}
					}
				}
			}

			ListView {
				id: listView
				width: window.width
				height: (childrenRect.height >= listHeight) ? (listHeight - extraMarginForItemBorders) : childrenRect.height
				anchors.left: parent.left
				anchors.top: parent.top
				anchors.topMargin: 5
				model: ListModel {
					id: updatesList
				}
				highlightFollowsCurrentItem: true
				delegate: listComponent
				boundsBehavior: Flickable.StopAtBounds
				clip: true
			}
		}

		RobloxVerticalScrollBar {
			id: verticalScrollBar
			window: list
			flickable: listView
			color: "transparent"
			scrollBarHandleColor: userPreferences.theme.style("StartPage WhatsNew scrollBarHandle")
			leftBorderVisible: false
			anchors.right: parent.right
			anchors.rightMargin: 2
			visible: (listView.height == (listHeight - extraMarginForItemBorders)) ? true : false
		}

		Rectangle {
			id: seeAllUpdates
			width: window.width
			height: listItemHeight
			anchors.top: list.bottom
			anchors.topMargin: 1
			anchors.left: parent.left
			color: "transparent"
			Rectangle {
				id: borderTop
				width: parent.width - 40
				anchors.horizontalCenter: parent.horizontalCenter
				height: 1
				anchors.top: parent.top
				color: lineColor
			}

			MouseArea {
				anchors.fill: parent
				cursorShape: Qt.PointingHandCursor
				onClicked: {
                    if(fflagStudioUpdateWhatsNewDevForumUrl)
                    {
                        whatsNewWindow.launchSeeAllUrl(devForumUrl)
                    }
                    else
                    {
					    whatsNewWindow.launchSeeAllUrl("https://devforum.roblox.com/tags/c/public/public-updates-announcements/studio")
                    }
				}
			}

			Text {
				id: updatesBoxText
				width: parent.width
				height: seeAllUpdates.height
				text: qsTr("Studio.App.WhatsNewWindow.SeeAllUpdates");
				color: userPreferences.theme.style("StartPage WhatsNew seeAllText")
				font.pixelSize: 16
				renderType: Text.NativeRendering
				font.family: RobloxStyle.fontSourceSansPro
				wrapMode: Text.WordWrap
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
			}
		}

		Rectangle {
			anchors.fill: parent
			color: "transparent"
			z: -5
			MouseArea {
				id: windowMouseArea
				anchors.fill: parent
			}
		}
	}

	Rectangle {
		id: trianglePointer
		width: pointSize
		height: pointSize
		anchors.verticalCenter: window.top
		anchors.right: parent.right
		anchors.rightMargin: pointDistanceFromRight
		color: userPreferences.theme.style("CommonStyle mainBackground")
		z: -1
		transform: Rotation {
			origin.x: pointSize / 2
			origin.y: pointSize / 2
			angle: 45
		}
	}

	// this item exists so that when you click the pointer, the window won't close
	Rectangle {
		id: mouseAreaRect
		width: pointSize
		height: pointSize
		anchors.verticalCenter: window.top
		anchors.right: parent.right
		anchors.rightMargin: pointDistanceFromRight
		color: "transparent"
		transform: Rotation {
			origin.x: pointSize / 2
			origin.y: pointSize / 2
			angle: 45
		}
		MouseArea {
			id: triangleMouseArea
			anchors.fill: parent
		}
	}

	RectangularGlow {
		id: pointGlow
		width: pointSize
		height: pointSize
		anchors.verticalCenter: window.top
		anchors.right: parent.right
		anchors.rightMargin: pointDistanceFromRight
		glowRadius: 1
		spread: 0
		color: shadowColor
		cornerRadius: 5
		z: -2
		transform: Rotation {
			origin.x: pointSize / 2
			origin.y: pointSize / 2
			angle: 45
		}
	}

	RectangularGlow {
		id: windowGlow
		width: window.width - 6
		height: window.height - 6
		anchors.horizontalCenter: window.horizontalCenter
		anchors.verticalCenter: window.verticalCenter
		anchors.margins: 0
		glowRadius: 5
		spread: 0
		color: shadowColor
		cornerRadius: 4
		z: -2
	}
}
