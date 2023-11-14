import QtQuick 2.6
import QtQuick.Layouts 1.3
import ".."

Rectangle {
    id: startPage
    objectName: "startPage"
    width: 1366; height: 768
    color: userPreferences.theme.style("CommonStyle mainBackground")

    property alias myGamesPage: _myGamesPage

    property int currentPageIndex: startPageTabController.getLastPageIndex()

    signal scrollToTop
    signal scrollToBottom
    signal scrollPageUp
    signal scrollPageDown
    signal scrollUp
    signal scrollDown

    function getCurrentPage() {
        return stackLayout.itemAt(startPage.currentPageIndex);
    }

    function getCurrentTabElementId() {
        var ggvwh = getCurrentPage().gameGridViewWithHeader;
        if(ggvwh)
        {
            return ggvwh.currentTabElementId;
        }
        else
        {
            return ""
        }  
    }

    function onModalOpened() {
        var ggvwh = getCurrentPage().gameGridViewWithHeader;
        if(ggvwh)
        {
            ggvwh.setFocusTo("");
            ggvwh.setGridViewScrollable(false);
        }
    }

    function onModalClosed() {
        var ggvwh = getCurrentPage().gameGridViewWithHeader;
        if(ggvwh)
        {
            ggvwh.setFocusTo("");
            ggvwh.setGridViewScrollable(true);
        }
    }

    onActiveFocusChanged: {
        var ggvwh = getCurrentPage().gameGridViewWithHeader;
        if(ggvwh)
        {
            ggvwh.setFocusTo("");
        }
    }

    Connections {
        target: startPageQmlController
        onStartPageLostFocus: {
            var ggvwh = getCurrentPage().gameGridViewWithHeader;
            if(ggvwh)
            {
                ggvwh.setFocusTo("");
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        propagateComposedEvents: false

        onEntered: {
            var ggvwh = getCurrentPage().gameGridViewWithHeader;
            if(ggvwh)
            {
                var cb = ggvwh.gameGridView.contextMenuButton;
                cb.hide();
                cb.attachedParent = null;
            }
        }

        onClicked: {
            var ggvwh = getCurrentPage().gameGridViewWithHeader;
            if(ggvwh)
            {
                ggvwh.setFocusTo("");
            }
        }
    }

    Rectangle {
        id: sidebar
        width: 90
        color: userPreferences.theme.style("StartPage Sidebar background")
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
		border.width: userPreferences.theme.style("StartPage Sidebar borderWidth")
        border.color: userPreferences.theme.style("StartPage Sidebar border")

        // Using a ListView instead of a TabView because it does not support vertical layouts
        // and it comes with the selection logic.
        ListView {
            id: sidebarListView
            width: 90
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            interactive: false // ListViews are flickable, so disable that.
            highlightFollowsCurrentItem: false
            currentIndex: startPage.currentPageIndex

            ListModel {
                id: sidebarListModel
                ListElement {
                    icon: "New"
                    text: qsTr("Studio.Common.Action.New")
                    objectName: "New"
                }
                ListElement {
                    icon: "MyGame"
                    text: qsTr("Studio.App.StartPage.MyGames")
                    objectName: "MyGames"
                }
                ListElement {
                    icon: "Recent"
                    text: qsTr("Studio.App.StartPage.Recent")
                    objectName: "Recent"
                }
				ListElement {
                    icon: "Archive"
                    text: qsTr("Studio.App.StartPage.Archive")
                    objectName: "Archive"
                }
                ListElement {
                    icon: "Tour"
                    text: qsTr("Studio.App.TutorialPage.TabTitle")
                    objectName: "NewUser"
                }
            }

            model: sidebarListModel

            Component {
                id: sidebarButtonComponent
                SidebarButton {
                    iconSource:  "image://QmlImage/"+model.icon
                    iconSourceWidth: 32
                    iconSourceHeight: 32
                    objectName: model.objectName + "_SidebarButton"
                    text: model.text
                    visible: model.objectName == "NewUser" && (!showNewUserPage || 
                        (FFlagStudioOnboardingStartPageCTA && newUserPageController.isStartPageCTAVisible())) ? false : true
                    selected: index === sidebarListView.currentIndex
                    onClicked: {
                        myGamesPage.gameGridViewWithHeader.setFocusTo("");
                        recentGamesPage.gameGridViewWithHeader.setFocusTo("");
                        startPageTabController.onPageClicked(index);
                    }
                }
            }

            delegate: sidebarButtonComponent
        }
    }

    StackLayout {
        id: stackLayout
        anchors.top: parent.top
        anchors.left: sidebar.right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        currentIndex: startPage.currentPageIndex

        TemplatePage {
            id: templatePage
            startPage: startPage
            pageNumber: 0
        }

        MyGamesPage {
            id: _myGamesPage
            startPage: startPage
            pageNumber: 1
        }

        RecentGamesPage {
            id: recentGamesPage
            startPage: startPage
            pageNumber: 2
        }

		ArchivedGamesPage {
			id: archivedGamesPage
            startPage: startPage
            pageNumber: 3
		}

        NewUserPage {
			id: newUserPage
            startPage: startPage
            pageNumber: 4
		}


        // Commented learn section out for now. We will add it back later
        // once we have designed and implemented the feature. See CLISTUDIO-12778
        /*
        PlainText {
            text: qsTr("Learn page not implemented yet")
        }
        */
    }

    // To prevent this from existing when the flag is not on (and then crashing studio because C++ objects it depends on don't exist unless the flag is on)
    // It's dynamically created
    // When removing the flag, this logic can be changed to just:
    // property alias shareModal: _shareModal
    /*ShareModal {
        id: _shareModal
        anchors.fill: parent
        opacity: 0
        visible: false
        startPage: startPage
    }*/

    property var shareModal: null;
    property var shareModalInfo: null;

    function showShareModalOrInfoDialog(gameModel) {
        var isPublished = !gameModel.isLocalFile
        var isPublic = gameModel.isActive
        shareModalController.showShareModal(gameModel.publishedRootPlaceId ,gameModel.publishedGameId, isPublished, isPublic); 
    }

    Component.onCompleted: {
        myGamesPage.createNewGameClicked.connect(function() {
            startPageTabController.onNewGameButtonClicked();
        });

        recentGamesPage.createNewGameClicked.connect(function() {
            startPageTabController.onNewGameButtonClicked();
        });

        myGamesPage.sortOptionChanged.connect(function (index, currentTabElementId) {
            myGamesPage.gameGridViewWithHeader.setFocusTo("");
            myGamesPage.gameGridViewWithHeader.controller.onSortOptionChanged(index, currentTabElementId);
        });

        myGamesPage.searchCleared.connect(function (currentTabElementId, fromButton) {
            myGamesPage.gameGridViewWithHeader.controller.onSearchCleared(currentTabElementId, fromButton);
        });

        myGamesPage.searchClicked.connect(function (searchTerm, currentTabElementId, fromButton) {
            myGamesPage.gameGridViewWithHeader.controller.onSearchClicked(searchTerm, currentTabElementId, fromButton);
        });

        if (archivedGamesPage)
        {
            archivedGamesPage.sortOptionChanged.connect(function (index, currentTabElementId) {
                archivedGamesPage.gameGridViewWithHeader.setFocusTo("");
                archivedGamesPage.gameGridViewWithHeader.controller.onSortOptionChanged(index, currentTabElementId);
            });

            archivedGamesPage.searchCleared.connect(function (currentTabElementId, fromButton) {
                archivedGamesPage.gameGridViewWithHeader.controller.onSearchCleared(currentTabElementId, fromButton);
            });

            archivedGamesPage.searchClicked.connect(function (searchTerm, currentTabElementId, fromButton) {
                archivedGamesPage.gameGridViewWithHeader.controller.onSearchClicked(searchTerm, currentTabElementId, fromButton);
            });
        }

        if (recentGamesPage)
        {
            recentGamesPage.searchCleared.connect(function (currentTabElementId, fromButton) {
                recentGamesPage.gameGridViewWithHeader.controller.onSearchCleared(currentTabElementId, fromButton);
            });

            recentGamesPage.searchClicked.connect(function (searchTerm, currentTabElementId, fromButton) {
                recentGamesPage.gameGridViewWithHeader.controller.onSearchClicked(searchTerm, currentTabElementId, fromButton);
            });
        }
    }

    Keys.onPressed: {
        switch (event.key) {
            case Qt.Key_Home:
                startPage.scrollToTop()
                break;
            case Qt.Key_End:
                startPage.scrollToBottom()
                break;
            case Qt.Key_PageUp:
                startPage.scrollPageUp()
                break;
            case Qt.Key_PageDown:
                startPage.scrollPageDown()
                break;
            case Qt.Key_Up:
                startPage.scrollUp()
                break;
            case Qt.Key_Down:
                startPage.scrollDown()
                break;
            default:
                event.accepted = false;
                return;
        }

        event.accepted = true;
    }

    Connections {
        target: startPageTabController
        onPageIndexChanged: {
            startPage.currentPageIndex = index;
        }
    }
}
