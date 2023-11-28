import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import ".."

Rectangle {
    readonly property alias gameGridViewWithHeader: _gameGridViewWithHeader
    property var startPage: null
    property alias pageNumber: _gameGridViewWithHeader.pageNumber
    property var tabElementId: ["templates_AllTemplates", "templates_Theme", "templates_Gameplay"]

    property var tutorialPageLink: "https://create.roblox.com/docs/tutorials" // *** ONLY WITH FFlagStudioOnboardingStartPageCTA

    id: templatePage
    objectName: "templatePage"
    color: userPreferences.theme.style("StartPage Page background")

    function isStartPageCTAVisible()
    {
        return FFlagStudioOnboardingStartPageCTA && newUserPageController.isStartPageCTAVisible()
    }

    function isBannerVisible()
    {
        return isStartPageCTAVisible() && !newUserPageController.hasUserClosedStartPageBanner()
    }

    function isButtonVisible()
    {
        return isStartPageCTAVisible() && newUserPageController.hasUserClosedStartPageBanner()
    }

    Rectangle {
        // *** ONLY VISIBLE WHEN FFlagStudioOnboardingStartPageCTA IS TRUE ***
        id: bannerTutorial
        height: childrenRect.height + 30
        width: parent.width
        color: userPreferences.theme.style("StartPage TutorialBanner BannerBackground")
        visible: isBannerVisible()

        PlainText {
            id: getStartedText
            width: bannerTutorial.width
            anchors.top: bannerTutorial.top
            anchors.topMargin: 30
            anchors.left: bannerTutorial.left
            anchors.leftMargin: 40
            wrapMode: "WordWrap"
            text: qsTr("Studio.App.TutorialBanner.GetStartedText")
            font.pointSize: 20
            font.weight: Font.DemiBold
            color: userPreferences.theme.style("StartPage TutorialBanner TextColor")
        }

        Flow {
            id: flowLayout
            spacing: 40

            anchors.top: getStartedText.bottom
            anchors.topMargin: 10
            anchors.left: bannerTutorial.left
            anchors.leftMargin: 40

            height: childrenRect.height
            width: parent.width - anchors.leftMargin

            RobloxTutorialBanner {
                id: leftBanner
                bannerWidth: parent.width/2 - 20
                bannerHeight: 200

                backgroundColor: userPreferences.theme.style("StartPage TutorialBanner TextboxBackground")
                textColor: userPreferences.theme.style("StartPage TutorialBanner TextColor")

                sourceImage: "qrc:/StudioNonIconImages/TutorialSplashLong.png"
                
                mainText: qsTr("Studio.App.TutorialBanner.TakeTheStudioTourText")
                secondaryText: qsTr("Studio.App.TutorialBanner.CreateYourFirstProjectText")
                buttonText: qsTr("Studio.App.TutorialBanner.StartTourText")

                function onButtonClicked() {
                    if (FFlagStudioOnboardingStartPageCTAAnalytics)
                    {
                        newUserPageController.reportSourceAnalytics("banner");
                    }
                    newUserPageController.startTutorial();
                }
            }

            RobloxTutorialBanner {
                id: rightBanner

                Layout.alignment: Qt.AlignRight

                bannerWidth: parent.width/2 - 20
                bannerHeight: 200

                buttonColor: userPreferences.theme.style("StartPage TutorialBanner OpenTutorialsButtonColor")
                backgroundColor: userPreferences.theme.style("StartPage TutorialBanner TextboxBackground")
                textColor: userPreferences.theme.style("StartPage TutorialBanner TextColor")

                sourceImage: "qrc:/StudioNonIconImages/SpaceshipSplashLong.png"

                mainText: qsTr("Studio.App.TutorialBanner.LearnWithTutorialsText")
                secondaryText: qsTr("Studio.App.TutorialBanner.ContinueYourJourneyText")
                buttonText: qsTr("Studio.App.TutorialBanner.OpenTutorialsText")

                function onButtonClicked() {
                    if (FFlagStudioOnboardingStartPageCTAAnalytics)
                    {
                        newUserPageController.reportSourceAnalytics("link");
                    }
                    Qt.openUrlExternally(tutorialPageLink);
                }
            }
        }

        Image {
            id: closeIcon
            width: 20
            height: 20
            sourceSize.width: 20
            sourceSize.height: 20
            source: "image://QmlImage/Close"
            cache: false
            anchors.right: bannerTutorial.right
            anchors.top: bannerTutorial.top
            anchors.rightMargin: 10
            anchors.topMargin: 10
            visible: true
            fillMode: Image.Pad
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    bannerTutorial.visible = false
                    learnStudio.visible = true
                    _gameGridViewWithHeader.anchors.top = learnStudio.bottom
                    newUserPageController.setUserClosedStartPageBanner(true)
                }
            }
        }
    }

    RobloxButton {
        // *** ONLY VISIBLE WHEN FFlagStudioOnboardingStartPageCTA IS TRUE ***
        id: learnStudio
        anchors.right: templatePage.right
        anchors.top: templatePage.top
        anchors.rightMargin: 10
        anchors.topMargin: 10
        fontSize: 16
        fontColor: "Black"
        text: qsTr("Studio.App.TutorialBanner.LearnStudioText")
        visible: isButtonVisible()
        onClicked: {
            learnStudio.visible = false
            bannerTutorial.visible = true
            _gameGridViewWithHeader.anchors.top = bannerTutorial.bottom
            newUserPageController.setUserClosedStartPageBanner(false)
        }
    }

    GameGridViewWithHeader {
        id: _gameGridViewWithHeader
        anchors.fill: !isStartPageCTAVisible() ? parent : undefined
        anchors.top: isStartPageCTAVisible() ? (bannerTutorial.visible ? bannerTutorial.bottom : learnStudio.bottom) : undefined
        anchors.bottom: isStartPageCTAVisible() ? parent.bottom : undefined
        anchors.bottomMargin: 0
        width: isStartPageCTAVisible() ? parent.width : undefined
        gamePage: parent
        gamePageName: "templatePage"
        disableHeader: isStartPageCTAVisible()

        model: templatePageController.getTemplatePageProxyModel()
        controller: templatePageController  
        onClicked: function(index) {
            templatePageController.onTemplateClicked(index)
        }

        gameTabBarModel: ListModel {}

        Component.onCompleted: {
            var standardWidth = 150
            var standardHeight = 178
            if(!FFlagStudioOnboardingStartPageCTA || !isStartPageCTAVisible())
            {
                gameTabBarModel.append({"text": qsTr("Studio.App.TemplatesPage.AllTemplates"), "elementId": tabElementId[0], "gameWidgetHeight": standardHeight});
                gameTabBarModel.append({"text": qsTr("Studio.App.TemplatePage.Theme"), "elementId": tabElementId[1], "gameWidgetHeight": standardHeight});
                gameTabBarModel.append({"text": qsTr("Studio.App.TemplatePage.Gameplay"), "elementId": tabElementId[2], "gameWidgetHeight": standardHeight});
            }

            onTabClicked(startPageTabController.getLastTabOnPageIndex(pageNumber));
        }
    }

    Item {
        id: createGameCalloutContainer
        width: 180+8
        height: 44+8
        x: 355
        y: 34
        // Hide the callout until we have finished defining and implementing
        // the logic. See CLISTUDIO-12543
        visible: false

        Rectangle {
            id: createGameCalloutRectangle
            width: 180
            height: 44
            anchors.centerIn: parent.Center
            color: RobloxStyle.colorGray2

            PlainText {
                text: "Create your first game!"
                color: "white"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 16
                font.weight: Font.DemiBold
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
            }

            Rectangle {
                color: parent.color
                width: 8
                height: 8
                x: parent.width/2 - width/2
                y: parent.height - height/2
                transform: Rotation { origin.x: 4; origin.y: 4; angle: 45}
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: parent.visible = false
            }
        }

        DropShadow {
            anchors.fill: createGameCalloutContainer
            horizontalOffset: 0
            verticalOffset: 1
            radius: 4.0
            samples: 17
            color: "#4B191919"
            source: createGameCalloutRectangle
        }

        SequentialAnimation on y {
            loops: Animation.Infinite

            NumberAnimation {
                from: createGameCalloutContainer.y; to: createGameCalloutContainer.y-6
                easing.type: Easing.InOutQuad; duration: 1200
            }

            NumberAnimation {
                from: createGameCalloutContainer.y-6; to: createGameCalloutContainer.y
                easing.type: Easing.InOutQuad; duration: 1200
            }
        }
    }
}
