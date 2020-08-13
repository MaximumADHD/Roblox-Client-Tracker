import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Item {
    readonly property int listElementHeight: 32
    readonly property int listElementFontPixelSize: 16
    readonly property int marginSize: 2
    readonly property int outerMargin: gameGridView.contextMenuButton.outerMargin
    readonly property int containerHeightMargins: (2 * marginSize) + (2 * outerMargin)
    property int containerHeight: (contextDropdownListModel.count * listElementHeight) + containerHeightMargins

    property bool isShowing: false

    // MouseArea that the dropdown is attached to
    property var attachedParent: null

    // GameWidget model and the position in the grid view
    property var model: null
    property int modelIndex: -1

    // The position relative to the attachedParent so it can be repositioned when scrolling
    property real xToContainer: 0
    property real yToContainer: 0

    id: container
    objectName: "ContextDropdownContainer"
    width: 150
    height: containerHeight
    visible: false
    opacity: 0
    layer.enabled: true

    function moveTo(x, y) {
        container.x = x;
        container.y = y;

        if (attachedParent) {
            var point = attachedParent.mapFromItem(gameGridView, x, y);
            xToContainer = point.x;
            yToContainer = point.y;
        } else {
            xToContainer = 0;
            yToContainer = 0;
        }
    }

    function becomeVisible() {
        container.isShowing = true;
        container.visible = true;
        container.opacity = 1;
    }

    function show(x, y, attachedParent, model, modelIndex) {
        container.attachedParent = attachedParent;
        container.model = model;
        container.modelIndex = modelIndex;

        moveTo(x, y);

        if (!isModelSafe()) {
            console.log("Attempt to show dropdown but model not safe");
            return;
        }

        gameGridViewWithHeader.setFocusTo("ContextMenu");

        populateDropdown();
        becomeVisible();
    }

    function hide() {
        container.isShowing = false;
        container.opacity = 0;
        container.attachedParent = null;
        gameGridViewWithHeader.setGridViewScrollable(true);
        gameGridView.contextMenuButton.isShowingDropdown = false;
    }

    // Verify the model and index passed to the context button are in a safe state to use
    function isModelSafe() {
        if (!container.model) {
            console.log("Model passed to ContextDropdown is null");
            return false;
        }
        if (container.modelIndex < 0) {
            console.log("Model index passed to ContextDropdown is below 0");
            return false;
        }
        if (!attachedParent) {
            console.log("Attached parent in ContextDropdown is null");
            return false;
        }
        return true;
    }

    // Resets the list model for the context button dropdown
    function populateDropdown() {
        contextDropdownListModel.clear();

        if (!isModelSafe()) {
            return;
        }

        // if games is archived then show only restore option
        if (model.isArchived) {
            contextDropdownListModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.Restore"), "action": "restore_game"});
            return;
        }

        var canConfigure = model.canConfigure;
        var isLocalFile = model.isLocalFile;
        var gameHasRootPlace = (model.publishedRootPlaceId > 0);

        var isPublic = false;
        var isDraft = false;
        if(loginManager.getFFlagStudioSaveToCloudV3())
        {
            isPublic = (model.privacyState === "Public");
            isDraft = (model.privacyState === "Draft");
        }
        else
        {
            isPublic = model.DEPRECATED_isActive;
        }
        var name = model.name;
        var canShare = false;
        if(loginManager.getFFlagStudioSaveToCloudV3())
        {
            canShare = gameHasRootPlace && !isDraft;
        }
        else if(loginManager.getFFlagStudioRemoveShareOptionFromLocalFiles())
        {
            canShare = gameHasRootPlace;
        }
        else
        {
            canShare = (gameHasRootPlace || isLocalFile);
        }
        var teamCreateEnabled = model.isTeamCreateEnabled;

        if (canShare) {
            contextDropdownListModel.append({"text": qsTr("Studio.Common.Action.Share"), "action": "share"});
        }

        if (canConfigure) {
            if (isLocalFile) {
                console.log("Game can configure but is local file", name);
            } else {
                contextDropdownListModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.ConfigureGame"), "action": "configure_game"});
                if (gameHasRootPlace) {
                    contextDropdownListModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.ConfigurePlace"), "action": "configure_place"});
                }
            }
        }

        if (gameHasRootPlace) {
            contextDropdownListModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.OpenPlacePage"), "action": "place_page"});
        }

        if (canConfigure && gameHasRootPlace) {
            if(loginManager.getFFlagStudioSaveToCloudV3()){
                if(!isDraft){
                    contextDropdownListModel.append({"text": qsTr(isPublic ? "Studio.App.ContextMenuDropdown.MakePrivate" : "Studio.App.ContextMenuDropdown.MakePublic"), "action": "toggle_active"});
                }
            } else {
                contextDropdownListModel.append({"text": qsTr(isPublic ? "Studio.App.ContextMenuDropdown.MakePrivate" : "Studio.App.ContextMenuDropdown.MakePublic"), "action": "toggle_active"});
            }
            contextDropdownListModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.Archive"), "action": "archive_game"});
        }

        var recentPageIndex = 2;
        if (startPage.currentPageIndex === recentPageIndex) {
            contextDropdownListModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.RemoveFromList"), "action": "remove"});
        }

        if (startPage.getCurrentTabElementId() === "myGames_SharedWithMe") {
            contextDropdownListModel.append({"text": qsTr("Studio.Common.Action.Remove"), "action": "leave_team_create"});
        }
    }

    Behavior on opacity {
        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad

            onRunningChanged: {
                // Hide the dropdown when it becomes fully invisible
                if (!running && (container.opacity == 0)) {
                    container.visible = false;
                    contextDropdownListModel.clear();
                }
            }
        }
    }

    MouseArea {
        id: contextDropdownMouseArea
        anchors.fill: parent
        anchors.margins: outerMargin
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onEntered: {
            // Show the drop shadow on the parent game widget
            if (isShowing && container.attachedParent) {
                container.attachedParent.entered();
            }
        }

        // Logic for hovering and selecting an item in the dropdown moved to this outer container
        // This is because if there are 2 mouse areas, this one underneath can get the wrong coordinates in onExited
        // Those coordinates are needed so they can be mapped to tell if the mouse is still over the parent game widget or not
        function updateCurrentIndex(mouse) {
            var y = mouse.y - container.marginSize;
            var index = Math.floor(y / container.listElementHeight);

            if ((y < 0) || (y > contextDropdownRectangleInner.height)) {
                index = -1;
            }

            contextDropdownListView.currentIndex = index;
        }

        onPositionChanged: {
            updateCurrentIndex(mouse);
        }

        onClicked: {
            updateCurrentIndex(mouse);

            if (!isModelSafe()) {
                console.log("Clicked on dropdown element but model is not safe to use");
                return;
            }

            var clickedElement = contextDropdownListModel.get(contextDropdownListView.currentIndex);
            if (clickedElement) {
                var m = container.model;
                var action = clickedElement.action;
                var success = false;

                // Hide before we show the share modal
                // Else this overrides the share modal setting grid view interactive = false
                hide();

                if (action === "share") {
                    gameGridView.hideContextMenuAndDropdown();

                    startPage.showShareModalOrInfoDialog(m);

                    success = true;
                } else {
                    success = gameGridView.controller.onContextButtonDropdownClicked(action, container.modelIndex);
                }

                if (!success) {
                    console.log("gameGridView controller failed to process context dropdown button clicked event");
                }

                // Ensure that the context button/dropdown are hidden when removing a widget
                if (action === "remove") {
                    gameGridView.hideContextMenuAndDropdown();
                }
            }
        }

        onExited: {
            contextDropdownListView.currentIndex = -1;

            if (container.attachedParent) {
                var ma = contextDropdownMouseArea;
                var point = ma.mapToItem(container.attachedParent, ma.mouseX, ma.mouseY);

                // Check if the mouse has left the dropdown and the game widget
                // Or just the dropdown but still hovering on widget
                if ((point.y > container.attachedParent.height)
                        || (point.y < 0) || (point.x < 0) || (point.x > container.attachedParent.width)) {
                    container.attachedParent.exited();

                    // Only hide the dropdown if it was opened from clicking the context button
                    // If opened through right mouse button then stay visible
                    if (gameGridView.contextMenuButton.isShowingDropdown) {
                        hide();
                    }
                }
            }
        }

        Rectangle {
            id: contextDropdownRectangleOuter
            anchors.fill: parent
            radius: 3
            color: userPreferences.theme.style("Menu background")

            Rectangle {
                id: contextDropdownRectangleInner
                anchors.fill: parent
                anchors.topMargin: container.marginSize
                anchors.bottomMargin: container.marginSize
                color: userPreferences.theme.style("Menu background")

                ListView {
                    id: contextDropdownListView
                    objectName: "ContextDropdownListView"
                    anchors.fill: parent
                    interactive: false
                    currentIndex: -1

                    model: ListModel {
                        id: contextDropdownListModel
                    }

                    Component {
                        id: contextDropdownDelegate

                        Rectangle {
                            objectName: "ContextDropdown_" + model.action
                            color: "transparent"
                            height: container.listElementHeight
                            // There is a rare race condtion where parent is not defined.
                            anchors.left: parent ? parent.left : undefined
                            anchors.right: parent ? parent.right : undefined

                            PlainText {
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 8
                                font.pixelSize: container.listElementFontPixelSize
                                font.family: RobloxStyle.fontSourceSansProLight
                                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                                color: userPreferences.theme.style("CommonStyle mainText")
                                text: model.text ? model.text : ""
                            }
                        }
                    }

                    delegate: contextDropdownDelegate

                    highlightFollowsCurrentItem: true
                    highlightMoveDuration: 50 // Speed up highlight follow
                    highlightMoveVelocity: 1000
                    highlight: Rectangle {
                        id: highlightBar
                        color: userPreferences.theme.style("Menu itemHover")
                        width: contextDropdownListView.width
                        height: container.listElementHeight
                        Rectangle {
                            width: 4
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            color: userPreferences.theme.style("CommonStyle currentItemMarker")
                            visible: true
                        }
                    }
                }
            }
        }
    }

    DropShadow {
        verticalOffset: userPreferences.theme.style("Menu shadowVerticalOffset")
        anchors.fill: contextDropdownMouseArea
        radius: userPreferences.theme.style("Menu shadowRadius")
        samples: userPreferences.theme.style("Menu shadowSamples")
        color: userPreferences.theme.style("Menu shadow")
        source: contextDropdownMouseArea
        opacity: container.visible ? userPreferences.theme.style("Menu shadowOpacity") : 0
        z: -1

        Behavior on opacity {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
    }
}
