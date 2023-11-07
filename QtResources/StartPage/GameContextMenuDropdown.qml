import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

/* 
    Inherits the following properties from ContextMenuDropdown.qml:
        - attachedParent: The MouseArea associated with this dropdown
        - listModel: The ListModel containing the options of the dropdown menu

    Inherits the following functions from ContextMenuDropdown.qml:
        - show(x, y, attachedParent): Shows the dropdown menu and sets the attachedParent
        - hide(): Hides the dropdown menu
        - moveTo(x, y): Moves the dropdown to the specified position (relative to its parent)
        - becomeVisible(): Makes the dropdown visible with an opacity animation
*/
ContextMenuDropdown {
    // GamesPageModelItem and its position in the grid/list view
    property var model: null
    property int modelIndex: -1

    initializeAndShow: function initializeAndShow(x, y, gameAttachedParent, gameModel, indexOfGame) {
        model = gameModel;
        modelIndex = indexOfGame;
        attachedParent = gameAttachedParent
        if (!isModelSafe()) {
            console.log("Attempt to show dropdown but model not safe");
            return;
        }
        show(x, y, gameAttachedParent)
    }

    populateDropdownFunction: populateDropdown
    handleActionFunction: function handleActionFunction(action) {
        if (!isModelSafe()) {
            console.log("Clicked on dropdown element but model is not safe to use");
            return;
        }
        
        // Hide before we show the share modal
        // Else this overrides the share modal setting grid view interactive = false
        hide();

        var success = false;
        if (action === "share") {
            gameGridView.hideContextMenuAndDropdown();

            startPage.showShareModalOrInfoDialog(model);

            success = true;
        } else {
            success = gameGridView.controller.onContextButtonDropdownClicked(action, modelIndex);
        }

        if (!success) {
            console.log("gameGridView controller failed to process context dropdown button clicked event");
        }

        // Ensure that the context button/dropdown are hidden when removing a widget
        if (action === "remove") {
            gameGridView.hideContextMenuAndDropdown();
        }
    }

    function isModelSafe() {
        if (!model) {
            console.log("Model passed to ContextDropdown is null");
            return false;
        }
        if (modelIndex < 0) {
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
        listModel.clear();
        if (!isModelSafe()) {
            return;
        }

        // if games is archived then show only restore option
        if (model.isArchived) {
            listModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.Restore"), "action": "restore_game", "disabled" : false});
            return;
        }

        var canConfigure = model.canConfigure;
        var isLocalFile = model.isLocalFile;
        var gameHasRootPlace = (model.publishedRootPlaceId > 0);

        var isPublic = model.isActive;
        var name = model.name;
        var canShare = gameHasRootPlace;

        var teamCreateEnabled = model.isTeamCreateEnabled;

        var ageRestrictedExperience = model.minimumAge >= 17;
        var userAgeVerified = gameGridView.controller.isUserAuthorized(model.publishedRootPlaceId, ageRestrictedExperience);
        var ageGated = ageRestrictedExperience && !userAgeVerified;

        if (canShare) {
            listModel.append({"text": qsTr("Studio.Common.Action.Share"), "action": "share", "disabled" : ageGated});
        }

        if (canConfigure) {
                if (isLocalFile) {
                    console.log("Game can configure but is local file", name);
                } else {
                    listModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.ConfigureGame"), "action": "configure_game", "disabled" : ageGated});
                if (gameHasRootPlace) {
                    listModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.ConfigurePlace"), "action": "configure_place", "disabled" : ageGated});
                }
            }
        }

        if (gameHasRootPlace) {
            listModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.OpenPlacePage"), "action": "place_page", "disabled" : ageGated});
        }

        if (canConfigure && gameHasRootPlace) {
            listModel.append({"text": qsTr(isPublic ? "Studio.App.ContextMenuDropdown.MakePrivate" : "Studio.App.ContextMenuDropdown.MakePublic"), "action": "toggle_active", "disabled" : ageGated});
            listModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.Archive"), "action": "archive_game", "disabled" : ageGated});
        }

        var recentPageIndex = 2;
        if (startPage.currentPageIndex === recentPageIndex) {
            listModel.append({"text": qsTr("Studio.App.ContextMenuDropdown.RemoveFromList"), "action": "remove", "disabled" : false});
        }

        if (startPage.getCurrentTabElementId() === "myGames_SharedWithMe") {
            listModel.append({"text": qsTr("Studio.Common.Action.Remove"), "action": "leave_team_create", "disabled" : false});
        }

        var largestRowEntry = listContainer.width
        var dropdownPadding = 12

        for(var i = 0; i < listModel.count; i++){
            listTextMetrics.text = listModel.get(i).text
            largestRowEntry = Math.max(listTextMetrics.width + dropdownPadding * 2, largestRowEntry)
        }

        listContainer.width = largestRowEntry;

    }
}
