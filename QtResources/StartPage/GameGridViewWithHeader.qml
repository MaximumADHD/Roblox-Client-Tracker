import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import ".."

Item {
    readonly property alias gameGridView: _gameGridView
    readonly property alias gameTableView: _gameTableView
    readonly property alias searchWidget: _searchWidget
    readonly property alias groupGamesComboBox: _groupGamesComboBox
    readonly property alias sortOptionsComboBox: _sortOptionsComboBox
    readonly property alias contextMenuDropdown: _contextMenuDropdown
    readonly property alias tableViewHeaderDropdown: _tableViewHeaderDropdown
    readonly property alias avatarPopup: _avatarPopup

    id: gameGridViewWithHeader
    objectName: gamePageName + "_GameGridViewWithHeader"
    layer.enabled: true

    // The game widgets can have different heights depending on if there is an
    // owner of the game. We show the owner name in the "Shared with Me" and "Recent Games" tab. The
    // code changes the height of the game widgets depending on which tab is shown.
    // And the template game widgets are shorter too.
    property int currentGameWidgetWidth: 150
    property int currentGameWidgetHeight: 227

    property var gamePage;
    property string gamePageName;
    property var model;
    property var controller;
    property var onClicked;
    property var gameTabBarModel;
    property bool runningAnimationSync: false;
    property bool useSelectionMode: false;

    property int pageNumber;
    property bool disableHeader: false // *** Only with FFlagStudioOnboardingStartPageCTA

    readonly property bool isTemplatePage: gamePageName == "templatePage"
    readonly property bool isMyGamesPage: gamePageName == "myGamesPage"
    readonly property bool isRecentGamesPage: gamePageName == "recentGamesPage"
    readonly property bool isArchivedGamesPage: gamePageName == "archivedGamesPage"

    function getGroupGamesPageController() {
        return isArchivedGamesPage ? archivedGroupGamesPageController : groupGamesPageController;
    }

    function isCurrentTabGroupGamesTab() {
        return (currentTabElementId === "myGames_GroupGames" || currentTabElementId == "archivedGames_GroupGames");
    }

    function getShouldDisplayCreatorName() {
        return isRecentGamesPage || currentTabElementId === "myGames_SharedWithMe"
    }

    readonly property var groupModel: getGroupGamesPageController().getGroupModel()

    function calculateShowGroups() {
            return isCurrentTabGroupGamesTab() && (groupModel && groupModel.count > 0) 
    }
    readonly property bool showGroups: calculateShowGroups()
    readonly property bool showSearch: !isTemplatePage
    readonly property bool showSort: !isTemplatePage && !isRecentGamesPage
    readonly property bool showGameTabBarLowerRectangle: showGroups || showSearch || showSort

    readonly property int marginSize: 24
    readonly property int gridViewOuterMarginSize: 36
    readonly property int gameTabBarLowerVerticalMargins: 12
    readonly property int gameTabBarLowerHorizontalInnerMargins: 24
    readonly property int gameTabBarLowerHorizontalOuterMargins: gridViewOuterMarginSize

    // Add up the width of all the elements in the header
    readonly property int widthToWrapGroups: gameTabBarLowerHorizontalOuterMargins + searchWidget.width + gameTabBarLowerHorizontalInnerMargins + groupGamesComboBox.width + gameTabBarLowerHorizontalOuterMargins
    // For sort wrapping, add the group dropdown width too if that's visible
    readonly property int widthToWrapSort: gameTabBarLowerHorizontalOuterMargins + searchWidget.width + (showGroups ? gameTabBarLowerHorizontalInnerMargins + groupGamesComboBox.width : 0)
                                           + gameTabBarLowerHorizontalInnerMargins + sortOptionsComboBoxContainer.width + gameTabBarLowerHorizontalOuterMargins
    readonly property bool isWrappingGroups: showSearch && showGroups && (gameGridViewWithHeader.width < widthToWrapGroups)
    readonly property bool isWrappingSort: showSort && (gameGridViewWithHeader.width < widthToWrapSort)

    readonly property int gameTabBarUpperHeight: 48
    readonly property int gameTabBarUpperTabWidth: 160
    readonly property int gameTabBarUpperSelectedTabHeight: 2
    readonly property int gameTabBarUpperHorizontalOuterMargins: gridViewOuterMarginSize
    readonly property int gameTabBarUpperHorizontalInnerMargins: 24

    readonly property int gameTabBarLowerRowItemHeight: 38
    // If wrapping both then 3 rows; if wrapping either (but not both) then 2 rows; else 1 row
    readonly property int gameTabBarLowerRowCount: ((isWrappingGroups && isWrappingSort) ?
        3 :
        (isWrappingGroups || isWrappingSort ? 2 : 1))

    readonly property int gameTabBarLowerHeight: (gameTabBarLowerRowCount * gameTabBarLowerRowItemHeight) + ((gameTabBarLowerRowCount + 1) * gameTabBarLowerVerticalMargins)
    readonly property int gameTabBarHeight: gameTabBarUpperHeight + (showGameTabBarLowerRectangle ? gameTabBarLowerHeight : 0)

    readonly property int hoverAnimationTime: 200
    readonly property int refreshButtonWidth: 120
    readonly property int refreshButtonHeight: 32

    property string currentTabElementId: ""
    property bool useListView: startPageTabController.isListView();

    // The page models and controllers can unfortunately not be in the gameTabBarModel.
    // Got error message: "ListElement: cannot use script for property value".
    // Defining them separately here.
    property variant gamesPageControllers: [myGamesPageController,
        groupGamesPageController,
        sharedWithMeGamesPageController]

    function showPopulatingAnimation() {
        populatingAnimation.visible = true;
        populatingAnimation.playing = true;
    }

    function hidePopulatingAnimation() {
        populatingAnimation.visible = false;
        populatingAnimation.playing = false;
    }

    function onTabClicked(index) {
        gameGridViewWithHeader.setFocusTo("");

        if ((index < 0) || (index >= gameTabBarListView.model.count)) {
            return;
        }

        if ((gameTabBarListView.currentIndex !== index)
                || (currentTabElementId == "")) {
            gameTabBarListView.currentIndex = index;

            startPageTabController.onTabOnPageClicked(pageNumber, index);

            var listElement = gameTabBarListView.model.get(gameTabBarListView.currentIndex);
            var previousTabElementId = currentTabElementId;
            currentGameWidgetHeight = listElement.gameWidgetHeight;
            if (listElement.gameWidgetWidth) {
                currentGameWidgetWidth = listElement.gameWidgetWidth;
            }
            currentTabElementId = listElement.elementId;

            if (isTemplatePage) {
                controller.onTemplateCategoryClicked(index);
            } else if (isMyGamesPage) {
                // Each category on the myGamesPage has a different controller, model and click handler
                gameGridViewWithHeader.controller = gamesPageControllers[index];
                gameGridViewWithHeader.model = gameGridViewWithHeader.controller.getGamesPageModel();
                gameGridViewWithHeader.onClicked = gameGridViewWithHeader.controller.onGameClicked;
            }
            else if (isArchivedGamesPage) {
                 // Each category on the myGamesPage has a different controller, model and click handler
                gameGridViewWithHeader.controller = (index == 0) ? myArchivedGamesPageController : archivedGroupGamesPageController;
                gameGridViewWithHeader.model = gameGridViewWithHeader.controller.getGamesPageModel();
                gameGridViewWithHeader.onClicked = gameGridViewWithHeader.controller.onGameClicked;
            }

            // Tell the grid view about the new controller and model
            gameGridView.controller = gameGridViewWithHeader.controller;
            gameGridView.model = gameGridViewWithHeader.model;

            if (isMyGamesPage || isArchivedGamesPage) {
                // First save the state for the previous
                // Then load the state for the new

                if (previousTabElementId !== "") {
                    controller.saveSearchTermForTab(previousTabElementId, searchWidget.getSearchTerm());
                    controller.saveLastSentSearchTermForTab(previousTabElementId, searchWidget.getLastSentSearchTerm());
                    controller.saveShowingNoMatchesForTab(previousTabElementId, createNewGameWidget.state === createNewGameWidget.stateNoGamesMatchFilter);
                    controller.saveSortIndexForTab(previousTabElementId, sortOptionsComboBox.currentIndex);
                }

                if (currentTabElementId !== "") {
                    var searchTerm = controller.restoreSearchTermForTab(currentTabElementId);
                    searchWidget.setSearchTerm(searchTerm,
                                               previousTabElementId === "" ? searchTerm : controller.restoreLastSentSearchTermForTab(currentTabElementId));
                    sortOptionsComboBox.currentIndex = controller.restoreSortIndexForTab(currentTabElementId);
                }
            }
        }
    }

    // Focus on: "", "ContextMenu", "GroupComboBox", "SortComboBox", "SearchWidget"
    // Does not set focus = true on the object
    // Only focus = false on the other objects
    function setFocusTo(focusName) {
        focusName = focusName || "";

        if (focusName !== "ContextMenu") {
            // Clicking the background between widgets hides the dropdown
            gameGridView.hideContextMenuAndDropdown();
        }

        if (focusName !== "GroupComboBox") {
            // Close the group games combo box on clicked
            groupGamesComboBox.checked = false;
        }

        if (focusName !== "SortComboBox") {
            sortOptionsComboBox.checked = false;
        }

        gameGridView.gameToolTip.hide();
    }

    function setGridViewScrollable(scrollable) {
        gameGridView.interactive = scrollable;
    }

    Component.onCompleted: {
        gameGridView.model = gameGridViewWithHeader.model;
        gameGridView.controller = gameGridViewWithHeader.controller;
    }

    LoadingAnimation {
        id: populatingAnimation
        objectName: "gamesLoadingAnimation"
        anchors.top: gameTabBarContainer.bottom
        // Hardcode this topmargin to 18 because there is also a margin on the loading gif
        // and it will affect the alignment.
        anchors.topMargin: 18
        anchors.bottom: undefined
        visible: false
    }

    // The tooltip must be at this level in the hierarchy, otherwise it will
    // not be on top of the game widgets.
    TabTooltip {
        id: tabTooltip
        // TODO: Use mapToGlobal instead of hard coding coordinates once we updgrade to Qt 5.7+
        x: 477 - marginSize
        y: 55 - marginSize
        z: 5
    }

    Item {
        id: gameTabBarContainer
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: FFlagStudioOnboardingStartPageCTA && disableHeader ? 0 : gameTabBarHeight
        visible: !FFlagStudioOnboardingStartPageCTA || !disableHeader
        z: 3

        Rectangle {
            id: gameTabBarUpperRectangle
            color: userPreferences.theme.style("CommonStyle mainBackground")
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: gameTabBarUpperHeight
            z: 5

            ListView {
                id: gameTabBarListView
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: _refreshButton.left
                anchors.rightMargin: gameTabBarUpperHorizontalInnerMargins
                interactive: false // ListViews are flickable, so disable that.
                highlightFollowsCurrentItem: false // Hightlight bounces in a odd way
                orientation: ListView.Horizontal

                model: gameTabBarModel

                Component {
                    id: gameTabComponent

                    Rectangle {
                        property bool isSelected: gameTabBarListView.currentIndex === index
                        property bool isHovered: false

                        id: gameTabComponentRectangle
                        objectName: model.elementId + "_Category"
                        width: Math.max(gameTabBarUpperTabWidth, textMetrics.width + 20)
                        height: parent.height
                        color: userPreferences.theme.style("CommonStyle mainBackground")

                        Rectangle { // Blue bar at bottom of component
                            id: gameTabSelectedBar
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            color: userPreferences.theme.style("StartPage HeaderTab selectedMarker")

                            height: gameTabBarUpperSelectedTabHeight
                            opacity: (isSelected) ? 1.0 : 0.0
                            Behavior on opacity {
                                NumberAnimation {
                                    duration: hoverAnimationTime
                                }
                            }
                        }

                        Item {
                            width: gameTabComponentText.paintedWidth + gameTabComponentIcon.width
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            TextMetrics
                            {
                                id: textMetrics
                                text: model.text
                                font.weight: Font.Bold
                                font.pixelSize: 18
                            }
                            PlainText {
                                id: gameTabComponentText
                                anchors.left: parent.left
                                anchors.verticalCenter: parent.verticalCenter
                                text: textMetrics.text
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: textMetrics.font.weight
                                font.pixelSize: textMetrics.font.pixelSize
                                color: (isHovered || isSelected) ? userPreferences.theme.style("StartPage HeaderTab hoverText") : userPreferences.theme.style("StartPage HeaderTab text")
                                renderType: Text.QtRendering

                                Behavior on color {
                                    ColorAnimation {
                                        duration: hoverAnimationTime
                                    }
                                }
                            }

                            Image {
                                function getImagePath(modelIconPath) {
                                    if (modelIconPath === undefined) {
                                        return "";
                                    }
                                    else if (typeof themeManager != "undefined") {
                                        return modelIconPath;
                                    }
                                    else {
                                        return RobloxStyle.getResource(modelIconPath);
                                    }
                                }

                                id: gameTabComponentIcon
                                property bool hovered: false
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: gameTabComponentText.right
                                anchors.leftMargin: 6
                                visible: (model.icon !== undefined) && (model.icon !== "")
                                height: 18
                                width: visible ? height : 0
                                source: getImagePath(model.icon)
                                // Image has two versions side by side: normal and hovered.
                                horizontalAlignment: hovered ? Image.AlignRight : Image.AlignLeft
                                fillMode: Image.PreserveAspectCrop
                                smooth: true
                                mipmap: FFlagStudioDisableMipMapsOnMac ? false : true

                                onHoveredChanged: {
                                    if (model.tooltipText === undefined) {
                                        return;
                                    }

                                    if (hovered) {
                                        tabTooltip.opacity = 1;
                                        if (tabTooltip.text !== model.tooltipText) {
                                            tabTooltip.text = model.tooltipText;
                                        }
                                    } else {
                                        tabTooltip.opacity = 0;
                                    }
                                }
                            }
                        }

                        MouseArea {
                            id: gameTabComponentMouseArea
                            hoverEnabled: true
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            propagateComposedEvents: true

                            onEntered: {
                                parent.isHovered = true;
                            }

                            onExited: {
                                parent.isHovered = false;
                                gameTabComponentIcon.hovered = false;
                            }

                            function handleOnMouseChanged(mouseX, mouseY) {
                                if (!gameTabComponentIcon.visible) {
                                    return;
                                }

                                // Couldn't get MouseArea hover inside the icon Image to work
                                // so doing the hover behavior here.
                                var point = gameTabComponentMouseArea.mapToItem(gameTabComponentIcon, mouseX, mouseY);
                                if (gameTabComponentIcon.contains(point)) {
                                    gameTabComponentIcon.hovered = true;
                                } else {
                                    gameTabComponentIcon.hovered = false;
                                }
                            }

                            onMouseXChanged: handleOnMouseChanged(mouseX, mouseY)
                            onMouseYChanged: handleOnMouseChanged(mouseX, mouseY)

                            onClicked: onTabClicked(index);
                        }
                    }
                }

                delegate: gameTabComponent
            }

            DropShadow {
                anchors.fill: gameTabBarUpperRectangle
                horizontalOffset: 0
                verticalOffset: 1
                radius: 8.0
                samples: 17
                color: userPreferences.theme.style("StartPage HeaderTab shadow")
                source: gameTabBarUpperRectangle
                 // Fade in when the grid view has been scrolled below the header
                opacity: userPreferences.theme.style("StartPage HeaderTab shadowOpacity")
                z: -1
                Behavior on opacity {
                    NumberAnimation {
                        duration: hoverAnimationTime
                        easing.type: Easing.InOutQuad
                    }
                }
            }
            
            RobloxButton {
                id: _refreshButton
                width: refreshButtonWidth
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: gameTabBarUpperHorizontalOuterMargins
                visible: !gameGridViewWithHeader.isTemplatePage
                text: qsTr("Studio.App.GameGridViewWithHeader.Refresh")
                onClicked: {
                    gameTableView.subPlaceParentIndex = -1;
                    // Only these two sorts are supported by the backend; on refresh, items will not be returned in order
                    // for other sort options.
                    if (gameTableView.currentSort !==  qsTr("Studio.App.ListView.ExperienceName") && gameTableView.currentSort !== qsTr("Studio.App.ListView.DateCreated")) {
                        gameTableView.currentSort = ""; // Hides the sort arrow
                    }
                    gameGridViewWithHeader.controller.handleSuggestedRefresh()
                }
            }
        }

        Rectangle {
            id: gameTabBarLowerRectangle
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: gameTabBarUpperRectangle.bottom
            color: userPreferences.theme.style("StartPage Page background")
            z: 4

            SearchWidget {
                id: _searchWidget
                z: 7
                function calculateAnchorRight() {
                    if (isRecentGamesPage || useListView)
                    {
                        return _viewModeSwitch.left;
                    }
                    else
                    {
                        return sortOptionsComboBoxContainer.left
                    }
                }
                anchors.right: calculateAnchorRight()
                anchors.top: parent.top
                anchors.leftMargin: gameTabBarLowerHorizontalOuterMargins
                anchors.rightMargin: gameTabBarLowerHorizontalInnerMargins
                anchors.topMargin: gameTabBarLowerVerticalMargins
                anchors.bottomMargin: gameTabBarLowerVerticalMargins
                width: 400

                onSearchCleared: gamePage.searchCleared(gameGridViewWithHeader.currentTabElementId, fromButton)
                onSearchClicked: gamePage.searchClicked(searchTerm, gameGridViewWithHeader.currentTabElementId, fromButton)
                visible: showSearch

                // Tells C++ to save the text that was typed into the search widget
                saveSearchWidgetState: function (searchTerm, lastSentSearchTerm) {
                    if (!showSearch) {
                        return;
                    }

                    controller.saveSearchTermForTab(currentTabElementId, searchTerm);
                    controller.saveLastSentSearchTermForTab(currentTabElementId, lastSentSearchTerm);
                }

                onHasFocusChanged: {
                    if (!showSearch) {
                        return;
                    }

                    if (hasFocus) {
                        gameGridViewWithHeader.setFocusTo("SearchWidget");
                    }
                }
            }

            Item {
                id: _groupGamesComboBoxContainer
                // Text + dropdown + some padding between the two
                width: ownerTextMetrics.width + 10 + groupGamesComboBox.width
                height: gameTabBarLowerRowItemHeight

                anchors.left: parent.left

                // If searching is on and we are wrapping groups, then go under search. If search is off or we aren't wrapping groups, then go to top of screen
                anchors.top: showSearch && isWrappingGroups ? searchWidget.bottom
                                                            : parent.top
                // If searching is off or we are wrapping (i.e. groups at left of screen), then use the outer margins, else use the inner margins
                anchors.leftMargin: !showSearch || isWrappingGroups ? gameTabBarLowerHorizontalOuterMargins
                                                                    : gameTabBarLowerHorizontalInnerMargins
                    
                anchors.rightMargin: gameTabBarLowerHorizontalInnerMargins

                anchors.topMargin: showGroups ? gameTabBarLowerVerticalMargins
                                                  : -3 * gameTabBarLowerRowItemHeight
                anchors.bottomMargin: gameTabBarLowerVerticalMargins
                z: 6 // The group combo box needs a higher Z than the sort combo box for when they wrap
                visible: true

                PlainText {
                    id: ownerLabel
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Studio.App.GameGridViewWithHeader.Owner")
                    font.pixelSize: 18
                    font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                    renderType: userPreferences.theme.style("CommonStyle textRenderType")
                    color: userPreferences.theme.style("StartPage Page labelText")
                }

                TextMetrics {
                    id: ownerTextMetrics
                    font: ownerLabel.font
                    text: ownerLabel.text
                }

                RobloxComboBox {
                    id: _groupGamesComboBox
                    objectName: "GroupGamesComboBox"
                    height: gameTabBarLowerRowItemHeight
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.verticalCenter: parent.verticalCenter
                    // Only visible on the games page, group games tab
                    // This fixes a bug where you could click through the upper bar on the recent games page
                    // Also can't be tied to currentTabElementId because then the animations wouldn't work
                    function calculateVisibility() {
                        return isMyGamesPage || isArchivedGamesPage
                    }

                    visible: calculateVisibility()

                    checkable: showGroups

                    model: getGroupGamesPageController().getGroupModel()

                    onCurrentIndexChanged: {
                        if (!isMyGamesPage && !isArchivedGamesPage) {
                            return;
                        }                    
                        if (FFlagContextMenuWithCursor) {
                            contextMenuDropdown.hide();
                        } else {
                            gameGridView.gridContextMenuDropdown.hide();
                        }

                        getGroupGamesPageController().onGroupChanged(currentIndex);

                        // Because the current index can be changed when populating is changed, check here before changing which model to render
                        // Still send the update to C++ though (above)
                        if (isCurrentTabGroupGamesTab()) {
                            gameGridViewWithHeader.model = getGroupGamesPageController().getGamesPageModel();
                            gameGridView.model = gameGridViewWithHeader.model;
                        }
                    }

                    onCheckedChanged: {
                        if (checked) {
                            gameGridViewWithHeader.setFocusTo("GroupComboBox");
                        }

                        gameGridViewWithHeader.setGridViewScrollable(!checked);
                    }

                    // If the GroupModel gets refreshed then we need to get the group
                    // GamesPageModel manually because the old one has been completely
                    // deleted instead of cleared. This Connection handles that.
                    Connections {
                        target: getGroupGamesPageController().getGroupModel()
                        onRowsRemoved: {
                            if (isCurrentTabGroupGamesTab()) {
                                // The GroupGamesModel will return an empty model if all of them
                                // have been removed. That way the view doesn't get assigned a NULL
                                // pointer. It's using the Null Object design pattern.
                                gameGridView.model = getGroupGamesPageController().getGamesPageModel();
                            }
                        }
                        onPopulatingChanged: {
                            if ((isMyGamesPage || isArchivedGamesPage) && !populating && _groupGamesComboBox.model.count > 0) {
                                _groupGamesComboBox.currentIndex = getGroupGamesPageController().getLastGroupIndex();
                            }
                        }
                    }
                } //combobox
            }
            
            Item {
                id: sortOptionsComboBoxContainer
                // Text + dropdown + some padding between the two
                width: sortTextMetrics.width + 10 + sortOptionsComboBox.width
                height: gameTabBarLowerRowItemHeight
                // If we're wrapping sort then use outer margin, else calculate distance from left of screen to left of sort widget when widget is docked to the right of the screen

                anchors.right: _viewModeSwitch.left
                anchors.rightMargin: gameTabBarLowerHorizontalInnerMargins
                // Always anchor sort to the bottom of the container so this will be fine when the container gets taller because of wrapping
                anchors.bottom: parent.bottom
                anchors.topMargin: gameTabBarLowerVerticalMargins
                anchors.bottomMargin: gameTabBarLowerVerticalMargins

                z: 5
                visible: showSort && !useListView // Sort options should never show in list view, since you can sort using the column headers.

                PlainText {
                    id: sortText
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Studio.App.GameGridViewWithHeader.Sort")
                    font.pixelSize: 18
                    font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                    renderType: userPreferences.theme.style("CommonStyle textRenderType")
                    color: userPreferences.theme.style("StartPage Page labelText")
                }

                TextMetrics {
                    id: sortTextMetrics
                    font: sortText.font
                    text: sortText.text
                }

                RobloxComboBox {
                    id: _sortOptionsComboBox
                    width: _groupGamesComboBox.width
                    height: gameTabBarLowerRowItemHeight
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.verticalCenter: parent.verticalCenter

                    model: ListModel {
                        id: sortOptionsModel
                    }

                    Component.onCompleted: {
                        // Populate the model with options from C++
                        if (showSort) {
                            for (var i = 0; i < gameGridViewWithHeader.controller.getSortOptionsLength(); ++i) {
                                var sortName = gameGridViewWithHeader.controller.getSortOptionName(i);
                                if (sortName !== "") {
                                    sortOptionsModel.append({"text": sortName});
                                }
                            }
                        }
                    }

                    onCurrentIndexChanged: {
                        if (!showSort) {
                            return;
                        }

                        // Save the sort type into the options
                        controller.saveSortIndexForTab(currentTabElementId, currentIndex);
                        // Tell C++ to update the model
                        gamePage.sortOptionChanged(currentIndex, gameGridViewWithHeader.currentTabElementId);
                    }

                    onCheckedChanged: {
                        if (!showSort) {
                            return;
                        }

                        if (checked) {
                            gameGridViewWithHeader.setFocusTo("SortComboBox");
                        }

                        gameGridViewWithHeader.setGridViewScrollable(!checked);
                    }
                }
            }

            Rectangle { 
                id: _viewModeSwitch
                visible: !isTemplatePage
                anchors.right: parent.right
                anchors.rightMargin: gameTabBarUpperHorizontalOuterMargins
                // Always anchor sort to the bottom of the container so this will be fine when the container gets taller because of wrapping
                anchors.bottom: parent.bottom
                anchors.bottomMargin: gameTabBarLowerVerticalMargins

                height: gameTabBarLowerRowItemHeight
                width: gameTabBarLowerRowItemHeight
                radius: searchWidget.radius
                color: _viewModeSwitchMouseArea.containsMouse ? userPreferences.theme.style("StartPage GameTableView toggleHover") : userPreferences.theme.style("StartPage GameTableView toggleButton")
                border.color: userPreferences.theme.style("StartPage SearchWidget border")
                border.width: 1

                Image {
                    source: useListView ? userPreferences.theme.style("StartPage GameTableView gridIcon") : userPreferences.theme.style("StartPage GameTableView listIcon")
                    anchors.fill: parent
                    anchors.margins: 6

                    MouseArea {
                        id: _viewModeSwitchMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        // Tells the StartPageTabController to save the selected view to the settings
                        // The controller then emits the ViewChanged signal to every GameGridViewWithHeader page (My Games, Recent Games, and Archived) to update their views
                        // Relying on the signal emitted by the controller ensures all three pages are synced.
                        onClicked: startPageTabController.onViewToggled(!useListView)
                    }

                    Connections {
                        target: startPageTabController
                        onViewChanged: gameGridViewWithHeader.useListView = toListView
                    }
                }
            }
        }
    }

    CreateNewGameWidget {
        id: createNewGameWidget
        visible: (isMyGamesPage || isRecentGamesPage || isArchivedGamesPage) && !gameGridView.model.populating && gameGridView.model.count === 0
        anchors.top: gameTabBarContainer.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: marginSize
        // Set z-index so it appears under combo boxes
        z: 2

        state: isRecentGamesPage ? createNewGameWidget.stateNoRecentGames : createNewGameWidget.stateNoGames

        onCreateNewGameButtonClicked: (isMyGamesPage || isRecentGamesPage) ? gamePage.createNewGameClicked() : function () { }

        function updateState() {
            if (isRecentGamesPage) {
                createNewGameWidget.state = createNewGameWidget.stateNoRecentGames;

            } else if ((isMyGamesPage || isArchivedGamesPage)
                       && (searchWidget.hasSearchTerm()
                           || ((currentTabElementId !== "") && controller.restoreShowingNoMatchesForTab(currentTabElementId)))) {
                createNewGameWidget.state = (isMyGamesPage) ? createNewGameWidget.stateNoGamesMatchFilter : createNewGameWidget.stateNoArchivedGamesMatchFilter;

            } else if (currentTabElementId === "myGames_MyGames") {
                createNewGameWidget.state = createNewGameWidget.stateNoGames;
            } else if (currentTabElementId === "myGames_GroupGames") {
                createNewGameWidget.state = createNewGameWidget.stateNoGroupGames;
            } else if (currentTabElementId === "myGames_SharedWithMe") {
                createNewGameWidget.state = createNewGameWidget.stateNoSharedWithMe;
            } else if (isArchivedGamesPage && (currentTabElementId === "archivedGames_MyGames")) {
                createNewGameWidget.state = createNewGameWidget.stateNoArchivedGames;
            } else if (isArchivedGamesPage && (currentTabElementId === "archivedGames_GroupGames")) {
                createNewGameWidget.state = createNewGameWidget.stateNoArchivedGroupGames;
            }
        }

        // Switch to the state when tab changes, e.g. My Games to Group Games.
        Connections {
            target: gameGridViewWithHeader
            onCurrentTabElementIdChanged: createNewGameWidget.updateState();
        }
    }

    Item {
        id: gameGridViewContainer
        anchors.top: gameTabBarContainer.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 0
        z: 1

        property var lastPopulatingChangedSignal: null
        property bool canFetchMore: true
        
        function handlePopulatingChanged() {
            if (!gameGridViewWithHeader || gameGridViewWithHeader === undefined) {
                return;
            }

            if (gameGridViewWithHeader.model.populating && gameGridViewWithHeader.model.count == 0) {
                gameGridViewWithHeader.showPopulatingAnimation();
            } else {
                gameGridViewWithHeader.hidePopulatingAnimation();
                if (typeof controller.canFetchMore == "function") {
                    canFetchMore = controller.canFetchMore();
                }
                if (FFlagStudioFixStartPageFetchingNoResult)
                {
                    if (!gameGridViewWithHeader.model.populating && canFetchMore && typeof controller.onScrollToBottom == "function") {
                        gameGridViewWithHeader.controller.onScrollToBottom();
                    }
                }
                else
                {
                    if (gameGridViewWithHeader.model.count != 0 && !gameGridViewWithHeader.model.populating
                            && canFetchMore && typeof controller.onScrollToBottom == "function") {
                        gameGridViewWithHeader.controller.onScrollToBottom();
                    }
                }
            }

            if (_tableHeaderToolTip.visible) {
                if (!canFetchMore) {
                    _tableHeaderToolTip.show(qsTr("Studio.App.ListView.ToolTipLoadingComplete"), _tableHeaderToolTip.x, _tableHeaderToolTip.y, false)
                    _tableHeaderToolTipTimer.start();
                } else {
                    _tableHeaderToolTip.show(qsTr("Studio.App.ListView.ToolTipPleaseWait1").arg(model.count), _tableHeaderToolTip.x, _tableHeaderToolTip.y, false)
                }
            }

            createNewGameWidget.updateState();
        }

        function onModelChanged() {
            if (gameGridViewWithHeader.model.populating) {
                showPopulatingAnimation();
            } else {
                hidePopulatingAnimation();
            }

            if (gameGridViewContainer.lastPopulatingChangedSignal) {
                gameGridViewContainer.lastPopulatingChangedSignal.disconnect(handlePopulatingChanged);
            }

            gameGridViewContainer.lastPopulatingChangedSignal = gameGridViewWithHeader.model.populatingChanged;
            gameGridViewContainer.lastPopulatingChangedSignal.connect(handlePopulatingChanged);
        }
 
     GameTableView {
         id: _gameTableView
         visible: !isTemplatePage && useListView && gameGridViewWithHeader.model.count > 0 && !populatingAnimation.visible
         anchors.fill: parent
         anchors.margins: gridViewOuterMarginSize
         anchors.topMargin: 0
         readonly property int tableRowHeight: (FFlagTeamCreatePresenceIndicator || FFlagTeamCreatePresenceIndicatorRollout) ? 48 : 40
         readonly property int subPlaceShowHeight: 25
         readonly property int headerSeparatorHeight: tableRowHeight - 10
         readonly property int tableFontSize: 14
         readonly property int elideMargin: 20
         readonly property int textLeftMargin: 9
         readonly property int dropdownOffsetX: -10
         readonly property int dropdownOffsetY: -5
         readonly property var iconPopup: _iconPopup
         readonly property var tableViewToolTip: _tableViewToolTip

         onDoubleClicked: gameGridViewWithHeader.onClicked(row) // Double-click to open a place in IDE
         Keys.onReturnPressed: gameGridViewWithHeader.onClicked(currentRow); // Press Enter to open the currently-selected place. `currentRow` is a property of the TableView component.
         
         model: gameGridViewWithHeader.model
     }

        // Displays a tooltip showing the full text of a truncated list item.
        GameToolTip {
            id: _tableViewToolTip
            // Visibility is hidden by default; the list view will make it display when necessary.
        }

        GameGridView {
            property int cellMargin: marginSize
            id: _gameGridView
            visible: (!useListView || isTemplatePage)
            objectName: gamePageName + "_GameGridView"

            anchors.margins: gridViewOuterMarginSize
            anchors.topMargin: showGameTabBarLowerRectangle ? gridViewOuterMarginSize - gameTabBarLowerVerticalMargins : gridViewOuterMarginSize
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            displayMarginBeginning: anchors.topMargin * 2 // Stop the game widgets clipping early when scrolling
            anchors.fill: parent

            cellWidth: currentGameWidgetWidth + cellMargin
            cellHeight: currentGameWidgetHeight + cellMargin
            boundsBehavior: Flickable.StopAtBounds

            model: gameGridViewWithHeader.model
            controller: gameGridViewWithHeader.controller
            readonly property bool showCreatorName: getShouldDisplayCreatorName()


            onModelChanged: {
                gameGridViewContainer.onModelChanged();
            }

            delegate: GameWidget {
                width: gameGridViewWithHeader.currentGameWidgetWidth
                height: gameGridViewWithHeader.currentGameWidgetHeight
                onClicked: gameGridViewWithHeader.onClicked(index)
                isTemplateWidget: isTemplatePage
                isMyGameWidget: isMyGamesPage
                isRecentWidget: isRecentGamesPage
                isSelectable: useSelectionMode
                isSelected: isSelectable && index == templatePage.selectedTemplateIndex
                showCreatorName: getShouldDisplayCreatorName()
            }

            readonly property int animationTime: 300

            add: Transition {
                NumberAnimation { property: "opacity"; from: 0; to: 1; duration: _gameGridView.animationTime; easing.type: Easing.InOutQuad }
            }

            addDisplaced: Transition {
                NumberAnimation { properties: "x,y"; duration: _gameGridView.animationTime; easing.type: Easing.InOutQuad }
            }

            remove: Transition {
                NumberAnimation { property: "opacity"; to: 0; duration: _gameGridView.animationTime; easing.type: Easing.InOutQuad }
            }

            removeDisplaced: Transition {
                NumberAnimation { properties: "x,y"; duration: _gameGridView.animationTime; easing.type: Easing.InOutQuad }
            }
        }
    }

    // Tooltip that appears if user tries to sort the GameTableView but their games are still loading
    // Placed here in the hierarchy so it can display outside of the TableView.
    GameToolTip {
        id: _tableHeaderToolTip
        // Visibility is false by default
        z: 5

        Timer {
            id: _tableHeaderToolTipTimer
            interval: 1000
            onTriggered: _tableHeaderToolTip.hide();
        }
    }

    // Large preview popup that appears when a thumbnail in the list view is hovered.
    // Located here so it can "pop" out of the TableView, potentially over the header.
    // Qt 5.6 doesn't support popups but Qt 5.7 does; this component should be replaced once we upgrade.
    Image {
        id: _iconPopup
        visible: false
        x: 0
        y: 0
        width: 100
        height: 100
        source: ""
        z: 6
        
        function show(imgSrc, positionY) {
            visible = true;
            source = imgSrc;
            y = positionY;
        }

        function hide() {
            visible = false;
        }
    }

    // Dropshadow attached to the icon popup component.
    DropShadow {
        anchors.fill: _iconPopup
        visible: _iconPopup.visible
        horizontalOffset: 0
        verticalOffset: userPreferences.theme.style("Combobox Dropdown shadowVerticalOffset")
        radius: userPreferences.theme.style("Combobox Dropdown shadowRadius")
        samples: userPreferences.theme.style("Combobox Dropdown shadowSamples")
        color: userPreferences.theme.style("Combobox Dropdown shadow")
        source: _iconPopup
        z: 5
    }

    RobloxVerticalScrollBar {
        id: verticalScrollBar
        visible: !useListView // List view table has its own internal scrollbar
        window: gameGridViewContainer
        flickable: gameGridView
        keyEventNotifier: startPage
        z: 4
    }

    GameContextMenuDropdown {
        id: _contextMenuDropdown
        z: 5
    }

    
    AvatarPopup {
        id: _avatarPopup
        z: 5
    }

    // Dropdown menu associated with GameTableView. Located here in the hierarchy so it can display over other components.
    GameHeaderDropdown {
        id: _tableViewHeaderDropdown
        z: 5
    }

    SequentialAnimation {
        loops: Animation.Infinite
        running: true
        PropertyAction {
            target: gameGridViewWithHeader
            property: "runningAnimationSync"
            value: true
        }
        PauseAnimation {
            duration: 1400
        }
        PropertyAction {
            target: gameGridViewWithHeader
            property: "runningAnimationSync"
            value: false
        }
        PauseAnimation {
            duration: 200
        }
    }
}
