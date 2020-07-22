import QtQuick 2.6
import ".."

Rectangle {
    readonly property alias gameGridViewWithHeader: _gameGridViewWithHeader
    property var startPage: null
    property alias pageNumber: _gameGridViewWithHeader.pageNumber
    property var tabElementId: ["recentGames_RecentGames"]

    id: recentGamesPage
    objectName: "recentGamesPage"
    color: userPreferences.theme.style("StartPage Page background")

    signal createNewGameClicked()

    GameGridViewWithHeader {
        id: _gameGridViewWithHeader
        anchors.fill: parent

        gamePage: parent
        gamePageName: "recentGamesPage"

        model: recentGamesPageController.getGamesPageModel()
        controller: recentGamesPageController
        onClicked: recentGamesPageController.onGameClicked

        gameTabBarModel: ListModel { }
        currentGameWidgetHeight: 228

        Component.onCompleted: {
            gameTabBarModel.append({"text": qsTr("Studio.App.RecentGamesPage.RecentGames"), "elementId": tabElementId[0], "gameWidgetHeight": 228});

            onTabClicked(startPageTabController.getLastTabOnPageIndex(pageNumber));
        }
    }
}
