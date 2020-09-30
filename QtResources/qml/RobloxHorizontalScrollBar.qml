import QtQuick 2.6

// In Qt 5.6 there is no scroll bar. It was introduced in Qt 5.7. This file is
// a custom scroll bar that we can use until we upgrade. It was designed to work
// with a Flickable, e.g. a GridView. The Flickable and the window must be set
// before use, for example:
//
// RobloxHorizontalScrollBar { window: myWindow; flickable: myGridView }
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
	property var topBorderVisible: true
	property var scrollBarHandleColor: userPreferences.theme.style("Scrollbar handle")
    anchors.bottom: window.bottom
    anchors.left: window.left
    anchors.right: window.right
    height: 16
    color: userPreferences.theme.style("Scrollbar background")
    // The ratio is 1 when the items fit on screen. Don't show scroll bar if items fit.
    visible: flickable.visibleArea.widthRatio < 1

    Rectangle {
        id: topBorder
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: 1
        color: userPreferences.theme.style("Scrollbar border")
		visible: topBorderVisible
    }

    // Discard mouse events not on the scroll bar handle
    MouseArea {
        anchors.fill: parent
    }

    Rectangle {
        id: scrollBarHandle
        anchors.verticalCenter: parent.verticalCenter
        property int padding: 4 // Top and bottom padding
        property real rawX: parent.flickable.visibleArea.XPosition * parent.window.width
        property real maxX: (1.0-parent.flickable.visibleArea.widthRatio) * parent.window.width
        property var isDraggingScrollBar: false
        x: padding
        width: parent.flickable.visibleArea.widthRatio * parent.window.width
        height: 8
        radius: 4
        color: scrollBarHandleColor

        MouseArea {
            anchors.fill: parent
            property real lastX: 0

            onPressed: {
                lastX = mouseX;
                parent.isDraggingScrollBar = true;
                parent.x =  flickable.visibleArea.xPosition * (flickable.width - (scrollBarHandle.padding * 2)) + scrollBarHandle.padding
            }
            onReleased: {
                parent.isDraggingScrollBar = false;
            }
            // The onMouseXChanged event is only triggered when dragging if hoverEnabled is false.
            onMouseXChanged: {
                var mouseMoved =  mouseX - lastX
                var scrollRatio = mouseMoved / (parent.parent.window.width + parent.padding * 2)
                parent.x += mouseMoved
                if(parent.x > parent.maxX) {
                    parent.x = parent.maxX
                }
                else if (parent.x < parent.padding) {
                    parent.x = parent.padding
                }
                scrollBar.flickable.contentX += scrollRatio * parent.parent.flickable.contentWidth
                scrollBar.flickable.returnToBounds();
            }
        }
    }

    Binding {
        target: scrollBarHandle
        property: "x"
        value: flickable.visibleArea.xPosition * (flickable.width - (scrollBarHandle.padding * 2)) + scrollBarHandle.padding
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
                scrollBar.flickable.contentX -= scrollBar.flickable.width;
                scrollBar.flickable.returnToBounds();
            }
        }
        onScrollPageDown: {
            if (scrollBar.visible) {
                // scroll view one page down
                scrollBar.flickable.contentX += scrollBar.flickable.width;
                scrollBar.flickable.returnToBounds();
            }
        }
        onScrollUp: {
            if (scrollBar.visible) {
                // scroll view one cell (row) up
                scrollBar.flickable.contentX -= scrollBar.flickable.cellWidth;
                scrollBar.flickable.returnToBounds();
            }
        }
        onScrollDown: {
            if (scrollBar.visible) {
                // scroll view one cell (row) down
                scrollBar.flickable.contentX += scrollBar.flickable.cellWidth;
                scrollBar.flickable.returnToBounds();
            }
        }
    }
}
