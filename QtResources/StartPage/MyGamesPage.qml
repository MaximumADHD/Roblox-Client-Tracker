import QtQuick 2.6
import ".."

Rectangle {
    readonly property alias gameGridViewWithHeader: _gameGridViewWithHeader
    property var startPage: null
    property alias pageNumber: _gameGridViewWithHeader.pageNumber
    property var tabElementId: ["myGames_MyGames", "myGames_GroupGames", "myGames_SharedWithMe"]

    id: myGamesPage
    objectName: "myGamesPage"
    color: userPreferences.theme.style("StartPage Page background")

    signal createNewGameClicked()
    signal sortOptionChanged(int index, string currentTabElementId)
    signal searchCleared(string currentTabElementId, bool fromButton)
    signal searchClicked(string searchTerm, string currentTabElementId, bool fromButton)

    GameGridViewWithHeader {
        id: _gameGridViewWithHeader
        anchors.fill: parent

        gamePage: parent
        gamePageName: "myGamesPage"

        model: myGamesPageController.getGamesPageModel()
        controller: myGamesPageController
        onClicked: myGamesPageController.onGameClicked
        gameTabBarModel: ListModel { }
        currentGameWidgetHeight: 228

        function getQuestionMarkIconPath() {
				return userPreferences.theme.style("StartPage Page questionMarkIcon");
        }

        Component.onCompleted: {
            gameTabBarModel.append({"text": qsTr("Studio.App.StartPage.MyGames"), "elementId": tabElementId[0], "gameWidgetHeight": 228});
            gameTabBarModel.append({"text": qsTr("Studio.App.MyGamesPage.GroupGames"), "elementId": tabElementId[1], "gameWidgetHeight": 228});
            gameTabBarModel.append({"text": qsTr("Studio.App.MyGamesPage.SharedWithMe"), "elementId": tabElementId[2], "gameWidgetHeight": 245,
                                    "tooltipText": qsTr("Studio.App.MyGamesPage.GamesInvitedToEdit"), "icon": getQuestionMarkIconPath()});
            
            onTabClicked(startPageTabController.getLastTabOnPageIndex(pageNumber));
        }
    }
}

