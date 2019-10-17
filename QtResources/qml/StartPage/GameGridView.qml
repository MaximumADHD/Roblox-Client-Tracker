import QtQuick 2.6

//
// To provide a GridView item with common functionalities, e.g. drag-and-drop, etc...
//
GridView {
    property var controller: undefined
    property alias currentlyEditingWindow: _currentlyEditingWindow
    property alias gameToolTip: _gameToolTip
    property alias contextMenuButton: _contextMenuButton
    property alias contextMenuDropdown: _contextMenuDropdown
    property alias preventDoubleClickTimer: _preventDoubleClickTimer

    // The currentlyEditingWindow property is used inside GameWidget.qml. It's in
    // the parent to work around z-ordering not working correctly in the GridView.
    // Otherwise the next game widget will be drawn on top of the currentlyEditingWindow.
    CurrentlyEditingWindow {
        id: _currentlyEditingWindow
    }

    // The gameToolTip property is used inside GameWidget.qml. It's in the parent
    // to work around z-ordering not working correctly in the GridView. Otherwise
    // the next game widget will be drawn on top of the tooltip.
    GameToolTip {
        id: _gameToolTip
    }

    // Context menu and dropdown defined here but used in GameWidget so that they appear on top of widgets
    // Like the tooltips above
    ContextMenuButton {
        id: _contextMenuButton
    }

    ContextMenuDropdown {
        id: _contextMenuDropdown
    }

    Timer {
        id: _preventDoubleClickTimer
        interval: 1000
    }

    DropArea {
        anchors.fill: parent
        onDropped: {
            if (drop.hasUrls) {
                // Need to define controller to enable drag-and-drop
                if (controller) {
                    controller.onDropped(drop.urls);
                    drop.acceptProposedAction();
                }
            }
        }
    }

    // Scroll the hovering items up and down with the grid view
    onContentYChanged: {
        var par;
        var point;

        if (contextMenuButton.attachedParent) {
            par = contextMenuButton.attachedParent
            point = par.mapToItem(gameGridView, contextMenuButton.xToContainer, contextMenuButton.yToContainer);
            contextMenuButton.show(point.x, point.y, par, contextMenuButton.model, contextMenuButton.modelIndex);
        }

        if (contextMenuDropdown.attachedParent) {
            par = contextMenuDropdown.attachedParent;
            point = par.mapToItem(gameGridView, contextMenuDropdown.xToContainer, contextMenuDropdown.yToContainer);
            contextMenuDropdown.show(point.x, point.y, par, contextMenuDropdown.model, contextMenuDropdown.modelIndex);
        }
    }

    function hideContextMenuAndDropdown() {
        contextMenuDropdown.hide();
        contextMenuDropdown.attachedParent = null;

        contextMenuButton.hide();
        contextMenuButton.attachedParent = null;
    }
}

