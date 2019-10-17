import QtQuick 2.6
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
import "."

Rectangle {
	id: container
	opacity: 0.0
	color: "transparent"
	visible: false

	readonly property int displayDuration: 5000
	readonly property int fadeDuration: 200

	readonly property int margin: 12
	readonly property int space: 15
	readonly property int marginForShadow: ToastNotification.marginForShadow

	readonly property int notificationRectRadius: 2

	property double startTime: 0
	property double elapsedTime: 0

	height: notificationRect.height + 2*marginForShadow
    width: notificationRect.width + 2*marginForShadow

	signal actionActivated(int index)

    function qmlContainerWidth() {
        return notificationRect.width;
    }

    function qmlContainerHeight() {
        return notificationRect.height;
    }

	function show() {
		resetDisplayTimer();
		container.visible = true;
		fadeInAnimation.start();
    }

    function hide() {
		container.visible = false;
		displayTimer.stop();
    }

	function close() {
		ToastNotification.close();
	}

	function stopDisplayTimer() {
		displayTimer.stop();
		var currentTime = new Date().getTime();
		elapsedTime = (currentTime - startTime);
	}

	function startDisplayTimer() {
		var updatedInterval = displayDuration - elapsedTime;
		if (updatedInterval > 0) {
			displayTimer.interval = updatedInterval;
			startTime = new Date().getTime();
			displayTimer.start();
		} else {
			displayTimer.stop();
		}
	}

	function resetDisplayTimer() {
		displayTimer.stop();
		elapsedTime = 0;
		displayTimer.interval = displayDuration;
	}

	function actionButtonsWidth() {
		var width = 0;
		for (var i = 0; i < notificationActions.count; ++i) {
			width += notificationActions.itemAt(i).paintedWidth + space;
		}
		return width;
	}

	function notificationWidth() {
		return notificationMessage.paintedWidth + actionButtonsWidth() + 2*margin;
	}

	// returns -1 if we have sufficient space available or else calculate the required width
	function preferredWidth() {
		var width = notificationMessageMetrics.width + actionButtonsWidth() + 5*margin;
		if (ToastNotification.maximumWidth > width) {
			return -1;
		} else {
			return ToastNotification.maximumWidth - actionButtonsWidth() - 5*margin;
		}
	}

	NumberAnimation {
		id: fadeInAnimation
		target: container
		property: "opacity"
        to: 1.0
        duration: fadeDuration
		easing.type: Easing.InOutQuad
		running: false

		// start display timer 
		onStopped: {
			displayTimer.start();
			startTime = new Date().getTime();
        }
    }

	Timer {
        id: displayTimer
        interval: displayDuration
		running: false

		// start fade out animation on time elapsed
        onTriggered: {
			fadeOutAnimation.start();
		}
    }

	NumberAnimation {
		id: fadeOutAnimation
		target: container
		property: "opacity"
		to: 0.0
		duration: fadeDuration
		easing.type: Easing.InOutQuad
		running: false

		// close notification on elapse of display duration
		onStopped: {
            close();
		}
	}

	Rectangle {
		id: notificationRect
		radius: notificationRectRadius

		opacity: parent.opacity
		anchors.centerIn: parent

		height: notificationMessage.height + margin
		width: notificationWidth()

		color: userPreferences.theme.style("ToastNotification background")
		border.color: userPreferences.theme.style("ToastNotification border")

		RowLayout {
			id: notificationLayout
			anchors.centerIn: parent
			anchors.margins: margin
			spacing: space

			PlainText {
				id: notificationMessage
				color: userPreferences.theme.style("ToastNotification messageText")
				elide: Text.ElideRight
				font.pixelSize: 16
				text: ToastNotification.messageText
				Layout.preferredWidth: preferredWidth()

				TextMetrics {
					id: notificationMessageMetrics
					font: notificationMessage.font
					text: notificationMessage.text
				}

				MouseArea {
					hoverEnabled: true
					anchors.fill: parent

					// stop display timer when mouse enters
					onEntered: {
						stopDisplayTimer();
					}

					// again start timer when mouse exits
					onExited: {
						if (container.visible) {
							startDisplayTimer();
						}
					}
				}

				// if text is updated, restart display timer
				onTextChanged: {
					resetDisplayTimer();
					displayTimer.start();
				}
			}

			// notification actions (can have multiple)
			Repeater {
				id: notificationActions
				model: ToastNotification.actionsCount 
				PlainText {
					color: userPreferences.theme.style("ToastNotification actionText")
					text: ToastNotification.actionText(index)
					font.pixelSize: 16
					visible: paintedWidth > 0
					MouseArea {
						hoverEnabled: true
						anchors.fill: parent
						cursorShape: Qt.PointingHandCursor
						acceptedButtons: Qt.LeftButton

						onClicked: {
							container.actionActivated(index);
							close();
						}

						// stop display timer when mouse enters
						onEntered: {
							stopDisplayTimer();
						}

						// again start timer when mouse exits
						onExited: {
							if (container.visible) {
								startDisplayTimer();
							}
						}
					}
				}
			}
		}
	}

	 DropShadow {
        id: dropShadow
        anchors.fill: notificationRect
		opacity: 0.0
        source: notificationRect
        verticalOffset: userPreferences.theme.style("ToastNotification shadow verticalOffset")
        radius: userPreferences.theme.style("ToastNotification shadow radius")
        samples: userPreferences.theme.style("ToastNotification shadow samples")
        color: userPreferences.theme.style("ToastNotification shadow background")
        z: userPreferences.theme.style("ToastNotification shadow zValue")

		Component.onCompleted: NumberAnimation {
			target: dropShadow
			property: "opacity"
			to: userPreferences.theme.style("ToastNotification shadow opacity")
			duration: fadeDuration
			easing.type: Easing.InOutQuad
		}
	}
}