import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import ".."

TableView {

    onModelChanged: {
        gameGridViewContainer.onModelChanged()
        currentSort = ""
        isAscendingSort = true;
        pressedChangedBuffer = false;
    }

    property int lastWidth: -1
    onWidthChanged: {
        var delta = width - lastWidth // Positive if the window got bigger
        // The code here shifts the table contents over if the user expands their window after having scrolled (horizontally) to the right.
        // Without this, the table would just extend blank space to the right without shifting to make any of its content more visible.
        // This may cause the horizontal scrollbar to disappear, once the table is wide enough to fit all of its content. However, the content that has been scrolled away isn't actually on-screen.
        if (delta > 0) {
            flickableItem.contentX = Math.max(0, flickableItem.contentX - delta);
        }
        lastWidth = width
    }

    property string currentSort: ""
    property bool isAscendingSort: true
    property bool pressedChangedBuffer: false
    property int pressedColumn: -1
    
    property bool isShowingSubPlaces: false
    property var subPlaceParentIndex: -1
    property int standardIconSize: 16

    property int ageLabelWidth : 28
    property int ageLabelHeight : 18
    property int standardMargin: 8

    alternatingRowColors: false

    // This function restores customizations made to the TableView's appearance (on a per-tab basis).
    // We reference a list of column ids stored in the user's settings, maintained in the order that the TableView columns should appear in.
    function restoreColumnConfiguration() {
        // Get a map of columnIds (string) to column widths (int)
        var columnWidths = startPageTabController.getListColumnWidths(gameGridViewWithHeader.pageNumber);
        var columnVisibilities = startPageTabController.getListColumnVisibilities(gameGridViewWithHeader.pageNumber);

        // Updates the columns tracked in user settings in case the QML code is changed.
        // Columns removed from the QML will be deleted from settings, and columns added to the QML will be appended to the end of the tracked columns.
        // This ensures that future columns can be added/removed from the QML without breaking users' pre-existing customizations.
        // Simultaneously, we restore the width and visibility of each column based on the user's settings.
        var columnArray = [];
        for (var i = 0; i < columnCount; i++) {
            var tempCol = getColumn(i);
            columnArray.push(tempCol.columnId);

            // If the user has modified the width of this column, restore that.
            if (columnWidths[tempCol.columnId]) {
                tempCol.width = columnWidths[tempCol.columnId];
            }

            // If the user has modified the visibility of this column, restore that.
            if (columnVisibilities[tempCol.columnId] !== undefined) {
                tempCol.visible = columnVisibilities[tempCol.columnId];
            }
        }
        startPageTabController.updateColumnList(columnArray, gameGridViewWithHeader.pageNumber);

        // Bubble sort to rearrange the columns from their default order to the user's custom order.
        var columnIndices = startPageTabController.getListColumnVisualIndices(gameGridViewWithHeader.pageNumber);
        for (var pass = columnCount - 1; pass >= 0; pass--) {
            for (var i = 0; i < pass; i++) {
                if (columnIndices[getColumn(i).columnId] > columnIndices[getColumn(i + 1).columnId]) {
                    moveColumn(i + 1, i);
                }
            }
        }
    }

    onVisibleChanged: {
        // Model is not fully initialized on startup; this avoids null/undefined reference errors
        if (model && model.hideTemporaryItems !== undefined) {
            model.hideTemporaryItems();
            _gameTableView.isShowingSubPlaces = false;
        }
        selection.clear();
    }

    flickableItem.onContentYChanged: () => {
        if (!FFlagContextMenuWithCursor) return;
        if (!contextMenuDropdown.attachedParent) return;
        var par = contextMenuDropdown.attachedParent;
        var point = par.mapToItem(gameGridView, contextMenuDropdown.xToContainer, contextMenuDropdown.yToContainer);
        contextMenuDropdown.initializeAndShow(point.x, point.y, par, contextMenuDropdown.model, contextMenuDropdown.modelIndex);
    }

    Component.onCompleted: {
        restoreColumnConfiguration();
        lastWidth = width;
    }

    style: TableViewStyle {
        backgroundColor: userPreferences.theme.style("StartPage GameTableView background")
        
        frame: Rectangle {
            border.width: 0
            color: "transparent"
        }

        handle: Rectangle {
            anchors.left: parent.left
            anchors.leftMargin: styleData.horizontal ? 0 : 4 // Centers vertical scrollbar horizontally; anchors.horizontalCenter doesn't work because the parent is aligned oddly
            anchors.top: parent.top
            anchors.topMargin: styleData.horizontal ? 4 : 0 // Centers horizontal scrollbar vertically
            color: userPreferences.theme.style("Scrollbar handle")
            implicitWidth: 8
            implicitHeight: 8
            radius: 4
        }

        handleOverlap: -4 // Adds padding between the handle and the edges of the scrollbar
        
        scrollBarBackground: Rectangle {
            color: userPreferences.theme.style("Scrollbar background")
            width: 16
            height: 16
        }

        corner: Rectangle {
            anchors.fill: parent
            color: userPreferences.theme.style("Scrollbar background")
        }

        // Hide buttons for scrolling up/down
        decrementControl: Rectangle {
            implicitWidth: 0
        }

        incrementControl: Rectangle {
            implicitWidth: 0
        }

        rowDelegate: Rectangle {
            property var isSubPlaceParent: styleData.row == (subPlaceParentIndex) && _gameTableView.isShowingSubPlaces
            property var showSubPlaceList: (styleData.selected && model.subPlaceCount > 0) || isSubPlaceParent
            height: {
                if (FFlagTeamCreatePresenceIndicator || FFlagTeamCreatePresenceIndicatorRollout) {
                    return showSubPlaceList ? subPlaceShowHeight + tableRowHeight : tableRowHeight 
                }
                return showSubPlaceList ? 65 : tableRowHeight
            } 

            // Highlights row when clicked
            color: {
                if (styleData.selected) {
                    return userPreferences.theme.style("StartPage GameTableView selectedRow");
                } else {
                    return userPreferences.theme.style("StartPage GameTableView background");
                }
            }
            
            // Horizontal separator between rows
            Rectangle {
                anchors.top: parent.top
                anchors.topMargin: tableRowHeight - 1
                height: 1
                width: parent.width
                color: userPreferences.theme.style("StartPage GameTableView border")
            }

            Item {
                visible: showSubPlaceList
                anchors.bottom: parent.bottom
                width: parent.width
                height: parent.height - tableRowHeight

                Image {
                    id: subPlaceChevron
                    anchors.left: parent.left
                    anchors.leftMargin: tableRowHeight
                    anchors.top: parent.top
                    anchors.topMargin: 5
                    width: 14
                    height: width
                    source: userPreferences.theme.style("StartPage GameTableView sortArrowDescending")
                    transform: Rotation { origin.x: 7; origin.y: 7; angle: _gameTableView.isShowingSubPlaces ? 0 : -90 }
                }

                PlainText {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: subPlaceChevron.right
                    color: userPreferences.theme.style("CommonStyle mainText")
                    font.pixelSize: 12
                    text: model && model.subPlaceCount ? qsTr("Studio.App.ListView.ShowPlaces1").arg(model.subPlaceCount) : "";
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        mouse.accepted = false;
                        if (_gameTableView.isShowingSubPlaces) {
                            _gameTableView.model.hideTemporaryItems();
                        } else {
                            _gameTableView.model.showTemporaryItems(styleData.row);
                        }
                        _gameTableView.isShowingSubPlaces = !_gameTableView.isShowingSubPlaces;
                    }
                }
            }

            property var rowModel: model // Passes the row for this model to the MouseArea
            MouseArea {
                id: _rightClickRow
                anchors.top: parent.top
                height: tableRowHeight - 1
                width: parent.width
                hoverEnabled: true
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onClicked: {
                    var isAlreadySelected = _gameTableView.selection.contains(styleData.row);
                    var isPlaceInSelectedGame = (_gameTableView.selection.contains(styleData.row) || styleData.row == _gameTableView.subPlaceParentIndex || !rowModel.isRootPlace)
                    if (!isPlaceInSelectedGame) {
                        _gameTableView.model.hideTemporaryItems();
                        _gameTableView.isShowingSubPlaces = false;
                        _gameTableView.subPlaceParentIndex = styleData.row;
                    }
                    
                    _gameTableView.selection.clear(); // Deselect all rows
                    _gameTableView.selection.select(styleData.row); // Select this row
                    if (mouse.button == Qt.LeftButton) {
                        if (!isPlaceInSelectedGame && !rowModel.isLocalFile) {
                            _gameTableView.model.getPlacesInUniverse(rowModel.publishedGameId, styleData.row)
                        }
                        contextMenuDropdown.hide()
                    } else {
                        var point = mapToItem(_gameGridViewWithHeader, mouseX, mouseY)
                        contextMenuDropdown.initializeAndShow(point.x + dropdownOffsetX, point.y + dropdownOffsetY, _rightClickRow, rowModel, styleData.row)
                    }
                }
                onDoubleClicked: { if (mouse.button == Qt.LeftButton) { gameGridViewWithHeader.onClicked(styleData.row) } } // Double-click to open a place in IDE

                onEntered: { if (!_gameTableView.selection.contains(styleData.row)) { contextMenuDropdown.hide() } }
            }
        }

        headerDelegate: Rectangle {
            id: _tableHeaderDelegate
            height: tableRowHeight
            color: userPreferences.theme.style("StartPage GameTableView background")
            GameTableViewText {
                color: styleData.value == currentSort ? userPreferences.theme.style("StartPage GameTableView headerTextSelected") : userPreferences.theme.style("StartPage GameTableView headerText")
                text: styleData.value
            }
            
            // Captures right-clicks to display the column toggle dropdown menu
            MouseArea {
                id: headerMouseArea
                anchors.fill: parent;
                acceptedButtons: Qt.RightButton
                onClicked: {
                    var iconColumnIndex = 0; // Don't allow right-clicking on the thumbnail column
                    if (styleData.column == iconColumnIndex) {
                        return;
                    }
                    var point = mapToItem(_gameGridViewWithHeader, mouseX, mouseY)
                    tableViewHeaderDropdown.initializeAndShow(point.x + dropdownOffsetX, point.y + dropdownOffsetY, headerMouseArea)
                }
            }

            // Sort indicator
            Image {
                visible: styleData.value != "" && styleData.value == currentSort
                anchors.right: _tableSeparator.left
                anchors.rightMargin: 6
                anchors.verticalCenter: parent.verticalCenter
                width: 15
                height: 15
                source: isAscendingSort ? userPreferences.theme.style("StartPage GameTableView sortArrowAscending") 
                                        : userPreferences.theme.style("StartPage GameTableView sortArrowDescending")
            }

            // Vertical separator between header fields
            Rectangle {
                id: _tableSeparator
                visible: styleData.column >= 0 && styleData.column < (_gameTableView.columnCount - 1)
                width: 1
                height: headerSeparatorHeight
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                color: userPreferences.theme.style("StartPage GameTableView border")
            }

            // Horizontal bottom border
            Rectangle {
                anchors.bottom: parent.bottom
                height: 1
                width: parent.width
                color: userPreferences.theme.style("StartPage GameTableView border")
            }

            Connections {
                target: styleData
                onPressedChanged: {
                    _gameTableView.selection.clear(); // Deselect all rows
                    _gameTableView.model.hideTemporaryItems(); // Hide non-root places
                    _gameTableView.isShowingSubPlaces = false;
                    contextMenuDropdown.hide() // Hide the dropdown menu if it's there

                    // Don't allow sorting by iconColumn
                    if (styleData.value == "") {
                        return;
                    }

                    if (!styleData.pressed) {
                        // This code block fires twice each time the user clicks the header.
                        // Since a single-click is needed to flip the sort direction, this buffer is needed to "absorb" the first click.
                        if (!_gameTableView.pressedChangedBuffer) {
                            _gameTableView.pressedChangedBuffer = true;
                            return;
                        }

                        // If this condition is true, the user is rearranging their columns
                        // We don't want to modify the sort direction if the user is just rearranging the columns.
                        if (_gameTableView.pressedColumn != styleData.column)
                        {
                            // Tell the controller that the column arrangement has changed.
                            startPageTabController.onListColumnIndexChanged(gameGridViewWithHeader.pageNumber, _gameTableView.pressedColumn, styleData.column);
                            _gameTableView.pressedChangedBuffer = false;
                            _gameTableView.pressedColumn = -1;
                            return;
                        }
                        
                        // Flip the sort direction if the user reselects the same column. Otherwise, sort in ascending order by default.
                        if (styleData.value == _gameTableView.currentSort) {
                            _gameTableView.isAscendingSort = !_gameTableView.isAscendingSort;
                        } else {
                            _gameTableView.isAscendingSort = true;
                        }

                        // Certain sorts (such as TeamCreate status) can only be performed locally, but this requires all games to have been fetched
                        // If we don't have all of the user's games yet:
                            // Check if this column can be sorted in the backend. Make a request to the backend if so.
                            // If not, we display a tooltip asking the user to wait.
                        // If we've already loaded all of the user's games, just sort locally.
                        if (gameGridViewContainer.canFetchMore) {
                            if (!model.performBackendSort(getColumn(styleData.column).columnId, _gameTableView.isAscendingSort)) {
                                var point = mapToItem(_gameGridViewWithHeader, _tableHeaderDelegate.x, _tableHeaderDelegate.y)
                                _tableHeaderToolTip.show(`Please wait... ${model.count} games loaded.`, point.x, point.y - 30, false)
                                return;
                            }
                        } else {
                            model.performLocalSort(getColumn(styleData.column).columnId, _gameTableView.isAscendingSort);
                        }

                        _gameTableView.currentSort = styleData.value;
                        _gameTableView.pressedChangedBuffer = false;
                        _gameTableView.pressedColumn = -1;
                    } else {
                        // Record the index of the column at the beginning of the click. If styleData.column has changed by the
                        // end of the click, the user must have rearranged the columns.
                        _gameTableView.pressedColumn = styleData.column;
                    }
                }

                // The behavior of headerDelegate interferes in a very buggy way with signals that are supposed to be sent/received by MouseAreas,
                // so signal handlers like onEntered/onExited don't work properly.
                // Hence we need to use onContainsMouseChanged instead of onExited.
                onContainsMouseChanged: {
                    if (!styleData.containsMouse) {
                        // We don't want to hide the dropdown menu if the user moves their mouse off the header but is still hovering over the dropdown menu
                        // However, we can't check whether the dropdown menu's MouseArea is being hovered in this function because onContainsMouseChanged runs before
                        // the MouseArea updates (i.e. mouseArea.containsMouse has not updated to "true" yet).
                        // Hence, we call hideIfNotHovered and leave it up to the tableViewHeaderDropdown to wait a bit before checking whether it's safe to hide.
                        tableViewHeaderDropdown.hideIfNotHovered();
                    }
                    contextMenuDropdown.hide();
                }
            }
        }

        itemDelegate: GameTableViewItem {
            itemText: _tableViewItemText
            GameTableViewText {
                id: _tableViewItemText
                text: styleData.value ? styleData.value : "" // Handles undefined values
            }
        }
    }

    TableViewColumn {
        id: _iconCol
        readonly property string columnId: "iconColumn"
        width: tableRowHeight
        delegate: Image {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            width: tableRowHeight
            height: width
            anchors.margins: 1
            source: { 
                if (model) { // TypeError is thrown if the model isn't loaded
                    return model.gameIcon;
                } else {
                    return "qrc:/images/StartPage/gameImagePlaceholder.png";
                }
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    var point = mapToItem(_gameTableView, mouseX, mouseY)
                    iconPopup.show(source, point.y)
                    if (!_gameTableView.selection.contains(styleData.row)) {
                        contextMenuDropdown.hide()
                    }
                }
                onExited: iconPopup.hide()
                onPressed: mouse.accepted = false // Prevents the MouseArea from capturing the mouse click; allows it to propagate to the table
            }
        }
        movable: false
        resizable: false
    }
    
    TableViewColumn {
        id: _nameCol
        readonly property string columnId: "nameColumn"
        readonly property bool canBeShown: true
        role: "name"
        title: qsTr("Studio.App.ListView.ExperienceName")
        width: 175
        onWidthChanged: {
            startPageTabController.onListColumnWidthChanged(columnId, sidebarListView.currentIndex, width);
        }
        delegate: GameTableViewItem {
            itemText: _nameText
            GameTableViewText {
                id: _nameText
                anchors.left: parent.left
                width: parent.width - elideMargin -  ageLabelWidth - standardMargin
                text: model && model.name ? model.name : ""
            }
            Rectangle
            {
                id: minimumAgeLabelContainer
                visible: model && model.minimumAge >= 17
                anchors.right: parent.right
                anchors.rightMargin: standardMargin
                anchors.verticalCenter: parent.verticalCenter
                color: userPreferences.theme.style("Foreground Contrast")
                width: ageLabelWidth
                height: ageLabelHeight
                radius: 2
                PlainText {
                    id: minimumAgeLabel
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    text: qsTr("Studio.App.ListView.AgeVerified")
                    font.pixelSize: 14
                    font.weight: Font.Medium
                    renderType: userPreferences.theme.style("CommonStyle textRenderType")
                    color: userPreferences.theme.style("Text Primary")
                }   
            }   
        }
    }

    TableViewColumn {
        id: _typeCol
        readonly property string columnId: "typeColumn"
        readonly property bool canBeShown: isRecentGamesPage
        visible: isRecentGamesPage // Recent Games is the only page where local files can appear
        role: "isLocalFile"
        title: qsTr("Studio.App.ListView.Type")
        width: 75
        onWidthChanged: {
            startPageTabController.onListColumnWidthChanged(columnId, sidebarListView.currentIndex, width);
        }
        delegate: Rectangle {
            anchors.fill: parent
            color: "transparent"
            Image {
                id: _typeImg
                anchors.left: parent.left
                anchors.leftMargin: textLeftMargin
                anchors.top: parent.top
                anchors.topMargin: (tableRowHeight - tableFontSize) / 2
                width: 15
                height: 15
                fillMode: Image.PreserveAspectFit
                source: {
                    if (model) {
                        if (!model.isRootPlace) {
                            return "";
                        }
                        if (model.isLocalFile) {
                            userPreferences.theme.style("StartPage GameTableView localFileIcon")
                        } else {
                            userPreferences.theme.style("StartPage GameTableView cloudIcon")
                        }
                    } else {
                        return "";
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        var text = model && model.isLocalFile ? qsTr("Studio.App.ListView.TypeLocal") : qsTr("Studio.App.ListView.TypeCloud")
                        var point = mapToItem(_gameTableView, _typeImg.x, _typeImg.y)
                        tableViewToolTip.show(text, point.x + 40, point.y - 30)

                        if (!_gameTableView.selection.contains(styleData.row)) {
                            contextMenuDropdown.hide()
                        }
                    }
                    onExited: tableViewToolTip.hide()
                    onPressed: mouse.accepted = false // Prevents the MouseArea from capturing the mouse click; allows it to propagate to the table
                }
            }
        }
    }

    TableViewColumn {
        id: _descriptionCol
        readonly property string columnId: "descriptionColumn"
        readonly property bool canBeShown: true
        role: "description"
        title: qsTr("Studio.App.ListView.Description")
        width: 175
        onWidthChanged: {
            startPageTabController.onListColumnWidthChanged(columnId, sidebarListView.currentIndex, width);
        }
        delegate: GameTableViewItem {
            itemText: _descriptionText
            GameTableViewText {
                id: _descriptionText
                // Erases newlines from the text and replaces them with spaces, as the TableView can only display one line of text.
                text: model && model.description ? model.description.replace(/(?:\r\n|\r|\n)/g, " ") : ""
            }
        }    
    }

    TableViewColumn {
        id: _timeCreatedCol
        readonly property string columnId: "timeCreatedColumn"
        readonly property bool canBeShown: true
        role: "timeCreated"
        title: qsTr("Studio.App.ListView.DateCreated")
        width: 170
        onWidthChanged: {
            startPageTabController.onListColumnWidthChanged(columnId, sidebarListView.currentIndex, width);
        }
        delegate: GameTableViewItem {
            itemText: _timeCreatedText
            GameTableViewText {
                id: _timeCreatedText
                text: model && model.timeCreated ? model.timeCreated : ""
            }
        }
    }

    TableViewColumn {
        id: _privacyCol
        readonly property string columnId: "privacyColumn"
        readonly property bool canBeShown: true
        role: "isActivating"
        title: qsTr("Studio.App.ListView.Playability")
        width: 100
        onWidthChanged: {
            startPageTabController.onListColumnWidthChanged(columnId, sidebarListView.currentIndex, width);
        }
        delegate: GameTableViewItem {
            itemText: _privacyText
            GameTableViewText {
                id: _privacyText
                text: {
                    if (!model) {
                        return ""
                    }

                    if (!model.isRootPlace) {
                        return "";
                    }

                    var isActivating = (model.isActivating === "activating");
                    var isDeactivating = (model.isActivating === "deactivating");
                    var isPublic = (model.isActive === true);

                    if (isActivating) {
                        return qsTr("Studio.App.StartPage.MakingPublic");
                    } else if(isDeactivating) {
                        return qsTr("Studio.App.StartPage.MakingPrivate");
                    } else if(isPublic) {
                        return qsTr("Studio.App.GameWidget.Public");
                    } else {
                        return qsTr("Studio.App.GameWidget.Private");
                    }						
                }
            }
        }
    }

    TableViewColumn {
        id: _ownerColumn
        readonly property string columnId: "ownerColumn"
        readonly property bool canBeShown: isRecentGamesPage || currentTabElementId === "myGames_SharedWithMe"
        visible: isRecentGamesPage || currentTabElementId === "myGames_SharedWithMe" // This column should only appear in "Recent Games" and "Shared With Me"
        role: "creator"
        title: qsTr("Studio.App.ListView.Owner")
        width: 200
        onWidthChanged: {
            startPageTabController.onListColumnWidthChanged(columnId, sidebarListView.currentIndex, width);
        }
        delegate: GameTableViewItem {
            itemText: _ownerText
            Image {
                id: _ownerIcon
                anchors.left: parent.left
                anchors.leftMargin: textLeftMargin
                anchors.top: parent.top
                anchors.topMargin: (tableRowHeight - tableFontSize) / 2
                source: { 
                    if (model) {
                        if (!model.isRootPlace) {
                            return "";
                        }
                        
                        if (model.isLocalFile || model.creatorType == "User") {
                            return userPreferences.theme.style("StartPage GameTableView userIcon")
                        } else {
                            return userPreferences.theme.style("StartPage GameTableView groupIcon")
                        }
                    } else {
                        return "";
                    }
                }
            }
            GameTableViewText {
                id: _ownerText
                anchors.left: _ownerIcon.right
                text: {
                    if (model) { // Gives the model time to load in
                      if (model.isLocalFile || model.creatorName == startPageQmlController.RESTRICTED_getLoggedInUserName()) {
                          return qsTr("Studio.App.ListView.Owner.You");
                      } else if (model.creatorName) {
                          return model.creatorName;
                      } else {
                          return "";
                      }
                    } else {
                        return "";
                    }
                }
            }
        }
    }

    TableViewColumn {
        id: _teamCreateColumn
        readonly property string columnId: "teamCreateColumn"
        readonly property bool canBeShown: true
        role: "teamCreateEnabled"
        title: qsTr("Studio.App.ListView.TeamCreate")
        width: 150
        onWidthChanged: {
            startPageTabController.onListColumnWidthChanged(columnId, sidebarListView.currentIndex, width);
        }
        delegate: Item {
            anchors.fill: parent
            GameTableViewItem {
                itemText: _typeText
                GameTableViewText {
                    id: _typeText
                    text: {
                        if (!model || !model.isRootPlace) {
                            return "";
                        }

                        return model.teamCreateEnabled ? qsTr("Studio.App.ListView.TeamCreateOn") : qsTr("Studio.App.ListView.TeamCreateOff");
                    }
                }
                Component {
                    id: _tcPresenceIndicatorTableView
                    TeamCreatePresenceIndicator {
                        users: model && model.activeUsers
                        userCount: model && model.activeUsersCount
                        viewComponent: _gameTableView
                        // gameGridViewWithHeader: gameGridViewWithHeader
                        popupYOffset: 127
                    }
                }
                Loader {
                    anchors.top: parent.top
                    anchors.topMargin: (tableRowHeight - 32) / 2
                    anchors.left: parent.left
                    anchors.leftMargin: textLeftMargin
                    active: (FFlagTeamCreatePresenceIndicator || FFlagTeamCreatePresenceIndicatorRollout) && Boolean(model && model.isRootPlace && model.activeUsers && model.activeUsers.length > 0)
                    sourceComponent: _tcPresenceIndicatorTableView
                    
                }
            }
        }
    }
}
