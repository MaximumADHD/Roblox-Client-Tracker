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
        return getCurrentPage().gameGridViewWithHeader.currentTabElementId;
    }

    function onModalOpened() {
        var ggvwh = getCurrentPage().gameGridViewWithHeader;
        ggvwh.setFocusTo("");
        ggvwh.setGridViewScrollable(false);
    }

    function onModalClosed() {
        var ggvwh = getCurrentPage().gameGridViewWithHeader;
        ggvwh.setFocusTo("");
        ggvwh.setGridViewScrollable(true);
    }

    onActiveFocusChanged: {
		getCurrentPage().gameGridViewWithHeader.setFocusTo("");
    }

    Connections {
        target: loginManager
        onStartPageLostFocus: {
            getCurrentPage().gameGridViewWithHeader.setFocusTo("");
        }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        propagateComposedEvents: false

        onEntered: {
            var cb = getCurrentPage().gameGridViewWithHeader.gameGridView.contextMenuButton;
            cb.hide();
            cb.attachedParent = null;
        }

        onClicked: {
            getCurrentPage().gameGridViewWithHeader.setFocusTo("");
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

            model: ListModel {
                id: sidebarListModel
                ListElement {
                    icon: "../images/StartPage/NewIcon.png"
                    text: qsTr("Studio.Common.Action.New")
                    objectName: "New"
                }
                ListElement {
                    icon: "../images/StartPage/MyGamesIcon.png"
                    text: qsTr("Studio.App.StartPage.MyGames")
                    objectName: "MyGames"
                }
                ListElement {
                    icon: "../images/StartPage/RecentGamesIcon.png"
                    text: qsTr("Studio.App.StartPage.Recent")
                    objectName: "Recent"
                }
				ListElement {
                    icon: "../images/StartPage/ArchivedGamesIcon.png"
                    text: qsTr("Studio.App.StartPage.Archive")
                    objectName: "Archive"
                }
                // Commented learn section out for now. We will add it back later
                // once we have designed and implemented the feature. See CLISTUDIO-12778
                /*
                ListElement {
                    iconSource: "../../images/StartPage/LearnIcon.png"
                    iconSourceResource: "qrc:/images/StartPage/LearnIcon.png"
                    text: qsTr("Learn")
                    objectName: "Learn"
                }
                */
            }

            Component {
                id: sidebarButtonComponent
                SidebarButton {
                    iconSource: RobloxStyle.getResource(model.icon)
                    objectName: model.objectName + "_SidebarButton"
                    text: model.text
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
        shareModalController.setIsOnStartPage(true);
        shareModalController.setRootPlaceId(gameModel.publishedRootPlaceId);
        shareModalController.onShareOnStartPageClicked();

		var isShareable = false
		if(loginManager.getFFlagStudioSaveToCloudV3())
		{
			isShareable = !gameModel.isLocalFile && gameModel.privacyState === "Public";
		}
		else
		{
			isShareable = !gameModel.isLocalFile && gameModel.DEPRECATED_isActive;
		}

        if (isShareable) {
            if (shareModal !== null) {
                shareModal.show(gameModel);
            } else {
                console.error("ShareModal is null in StartPage.showShareModalOrInfoDialog()");
            }
        } else {
            if (shareModalInfo !== null) {
				if(loginManager.getFFlagStudioSaveToCloudV3()){
					shareModalController.onShowGameNotPublicDialog();
                    shareModalInfo.setUpForGameNotPublicDialog(gameModel.publishedGameId || 0);
					shareModalInfo.show();
				}
				else {
					if (gameModel.isLocalFile) {
						shareModalController.DEPRECATED_onShowGameNotPublishedDialog();
						shareModalInfo.DEPRECATED_setUpForGameNotPublishedDialog();
					} else if ((loginManager.getFFlagStudioSaveToCloudV3() ? (gameModel.privacyState !== "Public") : !gameModel.DEPRECATED_isActive)) {
						shareModalController.onShowGameNotPublicDialog();
						shareModalInfo.setUpForGameNotPublicDialog(gameModel.publishedGameId || 0);
					} else {
						console.error("Unknown reason for showing ShareModalInfo in StartPage.showShareModalOrInfoDialog()");
					}
					shareModalInfo.show();
				}
            } else {
                console.error("ShareModalInfo is null in StartPage.showShareModalOrInfoDialog()");
            }
        }
    }

    Component.onCompleted: {
        if (shareModal === null) {
            var url = RobloxStyle.getResource("StartPage/ShareModal.qml");

            var shareModalComponent = Qt.createComponent(url);

            if (shareModalComponent.status === Component.Ready) {
                shareModal = shareModalComponent.createObject(startPage);
            } else {
                console.log("Error loading share component: " + shareModalComponent.errorString());
            }
        }

        if (shareModal) {
            shareModal.anchors.fill = startPage;
            shareModal.opacity = 0;
            shareModal.visible = false;
            shareModal.startPage = startPage;
        }

        if (shareModalInfo === null) {
            var shareModalInfoComponent = Qt.createComponent(RobloxStyle.getResource("StartPage/ShareModalInfo.qml"));

            if (shareModalInfoComponent.status === Component.Ready) {
                shareModalInfo = shareModalInfoComponent.createObject(startPage);
            } else {
                console.log("Error loading share component: " + shareModalInfoComponent.errorString());
            }
        }

        if (shareModalInfo) {
            shareModalInfo.anchors.fill = startPage;
            shareModalInfo.opacity = 0;
            shareModalInfo.visible = false;
            shareModalInfo.startPage = startPage;
        }

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
            case Qt.Key_F5:
                if (loginManager.getFFlagDebugStartPageRefreshOnF5()) {
                    loginManager.refreshStartPage();
                }
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
