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

    signal searchCleared(string currentTabElementId, bool fromButton)
    signal searchClicked(string searchTerm, string currentTabElementId, bool fromButton)

    GameGridViewWithHeader {
        id: _gameGridViewWithHeader
        anchors.fill: parent

        gamePage: parent
        gamePageName: "recentGamesPage"

        model: recentGamesPageController.getGamesPageModel()
        controller: recentGamesPageController
        onClicked: recentGamesPageController.onGameClicked

        gameTabBarModel: ListModel { }
        // Overall widget height is
        // Thumbnail - 150px
        // Two lines of title/filename - 52px
        // By-line (small font) - 17px
        // Local/Private/Public - 26px
        currentGameWidgetHeight: 245

        Component.onCompleted: {
            gameTabBarModel.append({"text": qsTr("Studio.App.RecentGamesPage.RecentGames"), "elementId": tabElementId[0], "gameWidgetHeight": currentGameWidgetHeight});

            onTabClicked(startPageTabController.getLastTabOnPageIndex(pageNumber));
        }
    }
}
