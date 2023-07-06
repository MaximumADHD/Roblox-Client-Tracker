import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

/* 
    Inherits the following properties from ContextMenuDropdown.qml:
        - attachedParent: The MouseArea associated with this dropdown
        - listModel: The ListModel containing the options of the dropdown menu
        - listView: The ListView displaying the ListModel
        - mouseArea: The mouseArea associated with the dropmenu menu

    Inherits the following functions from ContextMenuDropdown.qml:
        - hide(): Hides the dropdown menu
        - moveTo(x, y): Moves the dropdown to the specified position (relative to its parent)
        - becomeVisible(): Makes the dropdown visible with an opacity animation
*/
ContextMenuDropdown {
    readonly property var minWidth: 150
    readonly property var checkmarkSize: 16
    readonly property var marginSpacing: 8
    property var columns: []

    contextDropdownDelegate: Component {
        Rectangle {
            color: "transparent"
            height: listElementHeight
            // There is a rare race condtion where parent is not defined.
            anchors.left: parent ? parent.left : undefined
            anchors.right: parent ? parent.right : undefined
            Image {
                id: dropdownCheckmark
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: marginSpacing
                width: checkmarkSize
                height: width
                // "hide_column" indicates that the column is currently visible, so we show a checkmark.
                source: model.action === "hide_column" ? userPreferences.theme.style("StartPage GameTableView checkmarkIcon") : ""
            }

            PlainText {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: dropdownCheckmark.right
                anchors.leftMargin: marginSpacing
                font.pixelSize: listElementFontPixelSize
                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                color: userPreferences.theme.style("CommonStyle mainText")
                text: model && model.text ? model.text : ""
            }
        }
    }

    initializeAndShow: function initializeAndShow(x, y, gameAttachedParent) {
        populateColumns();

        if (columns.length > 0) {
            show(x, y, gameAttachedParent);
        }
    }
    populateDropdownFunction: function populateDropdown() {
        listModel.clear();
        width = minWidth;
        for (var column of columns) {
            listModel.append({"text": column.title, "action": column.visible ? "hide_column" : "show_column"});
            width = Math.max(width, (column.title.length * 10) + 30);
        }
    }
    handleActionFunction: function handleActionFunction(action) {
        var modifiedColumn = columns[listView.currentIndex];
        if (modifiedColumn) {
            modifiedColumn.visible = !modifiedColumn.visible
            startPageTabController.onListColumnVisibilityChanged(modifiedColumn.columnId, sidebarListView.currentIndex, modifiedColumn.visible);
        }
        hide();
    }

    function populateColumns() {
        columns = [];
        for (var i = 0; i < gameTableView.columnCount; i++) {
            var tempCol = gameTableView.getColumn(i);
            if (tempCol.canBeShown) {
                columns.push(tempCol);
            }
        }
    }
    
    // Checks whether the dropdown is hovered after a tiny delay, giving the ContextMenuDropdown MouseArea the chance to update.
    // If the dropdown is not being hovered, we call hide().
    function hideIfNotHovered() {
        hideTimer.start()
    }

    Timer {
        id: hideTimer
        interval: 10
        onTriggered: {
            if (!tableViewHeaderDropdown.mouseArea.containsMouse) {
                tableViewHeaderDropdown.hide()
            }
        }
    }
}
