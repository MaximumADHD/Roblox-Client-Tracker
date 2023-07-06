import QtQuick 2.6
import ".."

Rectangle {
    readonly property alias gameGridViewWithHeader: _gameGridViewWithHeader
    property var startPage: null
    property alias pageNumber: _gameGridViewWithHeader.pageNumber
	property var tabElementId: ["archivedGames_MyGames", "archivedGames_GroupGames"]

    id: archivedGamesPage
    objectName: "archivedGamesPage"
    color: userPreferences.theme.style("StartPage Page background")

	signal sortOptionChanged(int index, string currentTabElementId)
    signal searchCleared(string currentTabElementId, bool fromButton)
    signal searchClicked(string searchTerm, string currentTabElementId, bool fromButton)

    GameGridViewWithHeader {
        id: _gameGridViewWithHeader
        anchors.fill: parent

        gamePage: parent
        gamePageName: "archivedGamesPage"

        model: myArchivedGamesPageController.getGamesPageModel()
        controller: myArchivedGamesPageController
        onClicked: myArchivedGamesPageController.onGameClicked
        gameTabBarModel: ListModel { }
        currentGameWidgetHeight: 228

        Component.onCompleted: {
			gameTabBarModel.append({"text": qsTr("Studio.App.StartPage.MyGames"), "elementId": tabElementId[0], "gameWidgetHeight": 228});
            gameTabBarModel.append({"text": qsTr("Studio.App.MyGamesPage.GroupGames"), "elementId": tabElementId[1], "gameWidgetHeight": 228});

            onTabClicked(startPageTabController.getLastTabOnPageIndex(pageNumber));
        }
    }
}

