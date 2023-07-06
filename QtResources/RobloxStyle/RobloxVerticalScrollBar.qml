import QtQuick 2.6

// In Qt 5.6 there is no scroll bar. It was introduced in Qt 5.7. This file is
// a custom scroll bar that we can use until we upgrade. It was designed to work
// with a Flickable, e.g. a GridView. The Flickable and the window must be set
// before use, for example:
//
// RobloxVerticalScrollBar { window: myWindow; flickable: myGridView }
//
// In order to make key scrolling work, keyEventNotifier should be set to
// object that take keyboard input and emit the following signals:
//	- scrollToTop, scrollToBottom
//	- scrollPageUp, scrollPageDown
//	- scrollUp, scrollDown
//
//
Rectangle {
    id: scrollBar
    property var window: undefined
    property var flickable: undefined
    // Initialized keyEventNotifier to null so the connections are ignored when
    // notifier is not set
    property var keyEventNotifier: null
    property var scrollWheelCount: 3
	property var leftBorderVisible: true
	property var scrollBarHandleColor: userPreferences.theme.style("Scrollbar handle")
    anchors.top: window.top
    anchors.bottom: window.bottom
    anchors.right: window.right
    width: 16
    color: userPreferences.theme.style("Scrollbar background")
    // The ratio is 1 when the items fit on screen. Don't show scroll bar if items fit.
    visible: flickable.visibleArea.heightRatio < 1

    Rectangle {
        id: leftBorder
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.left
        width: 1
        color: userPreferences.theme.style("Scrollbar border")
		visible: leftBorderVisible
    }

    // Discard mouse events not on the scroll bar handle
    MouseArea {
        anchors.fill: parent
    }

    Rectangle {
        id: scrollBarHandle
        anchors.horizontalCenter: parent.horizontalCenter
        property int padding: 4 // Top and bottom padding
        property real rawY: parent.flickable.visibleArea.yPosition * parent.window.height
        property real maxY: (1.0-parent.flickable.visibleArea.heightRatio) * parent.window.height
        property var isDraggingScrollBar: false
        y: padding
        width: 8
        height: parent.flickable.visibleArea.heightRatio * parent.window.height
        radius: 4
        color: scrollBarHandleColor

        MouseArea {
            anchors.fill: parent
            property real lastY: 0

            onPressed: {
                lastY = mouseY;
                parent.isDraggingScrollBar = true;
                parent.y =  flickable.visibleArea.yPosition * (flickable.height - (scrollBarHandle.padding * 2)) + scrollBarHandle.padding
            }
            onReleased: {
                parent.isDraggingScrollBar = false;
            }
            // The onMouseYChanged event is only triggered when dragging if hoverEnabled is false.
            onMouseYChanged: {
                var mouseMoved =  mouseY - lastY
                var scrollRatio = mouseMoved / (parent.parent.window.height + parent.padding * 2)
                parent.y += mouseMoved
                if(parent.y > parent.maxY) {
                    parent.y = parent.maxY
                }
                else if (parent.y < parent.padding) {
                    parent.y = parent.padding
                }
                scrollBar.flickable.contentY += scrollRatio * parent.parent.flickable.contentHeight
                scrollBar.flickable.returnToBounds();
            }
        }
    }
    Binding {
        target: scrollBarHandle
        property: "y"
        value: flickable.visibleArea.yPosition * (flickable.height - (scrollBarHandle.padding * 2)) + scrollBarHandle.padding
        when: !scrollBarHandle.isDraggingScrollBar
    }


    // Listen to signals from keyEventNotifier to scroll page
    Connections {
        target: keyEventNotifier
        onScrollToTop: {
            if (scrollBar.visible) {
                scrollBar.flickable.positionViewAtBeginning()
            }
        }
        onScrollToBottom: {
            if (scrollBar.visible) {
                scrollBar.flickable.positionViewAtEnd()
            }
        }
        onScrollPageUp: {
            if (scrollBar.visible) {
                // scroll view one page up
                scrollBar.flickable.contentY -= scrollBar.flickable.height;
                scrollBar.flickable.returnToBounds();
            }
        }
        onScrollPageDown: {
            if (scrollBar.visible) {
                // scroll view one page down
                scrollBar.flickable.contentY += scrollBar.flickable.height;
                scrollBar.flickable.returnToBounds();
            }
        }
        onScrollUp: {
            if (scrollBar.visible) {
                // scroll view one cell (row) up
                scrollBar.flickable.contentY -= (scrollWheelCount * scrollBar.flickable.cellHeight);
                scrollBar.flickable.returnToBounds();
            }
        }
        onScrollDown: {
            if (scrollBar.visible) {
                // scroll view one cell (row) down
                scrollBar.flickable.contentY += (scrollWheelCount * scrollBar.flickable.cellHeight);
                scrollBar.flickable.returnToBounds();
            }
        }
    }
}
