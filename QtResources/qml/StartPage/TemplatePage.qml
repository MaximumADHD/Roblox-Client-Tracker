import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Rectangle {
    readonly property alias gameGridViewWithHeader: _gameGridViewWithHeader
    property var startPage: null
    property alias pageNumber: _gameGridViewWithHeader.pageNumber
    property var tabElementId: ["templates_AllTemplates", "templates_Theme", "templates_Gameplay"]

    id: templatePage
    objectName: "templatePage"
    color: userPreferences.theme.style("StartPage Page background")

    GameGridViewWithHeader {
        id: _gameGridViewWithHeader
        anchors.fill: parent

        gamePage: parent
        gamePageName: "templatePage"

        model: templatePageController.getTemplatePageProxyModel()
        controller: templatePageController
        onClicked: templatePageController.onTemplateClicked

        gameTabBarModel: ListModel {}

        currentGameWidgetHeight: 178

        Component.onCompleted: {
            gameTabBarModel.append({"text": qsTr("Studio.App.TemplatesPage.AllTemplates"), "elementId": tabElementId[0], "gameWidgetHeight": 178});
            gameTabBarModel.append({"text": qsTr("Studio.App.TemplatePage.Theme"), "elementId": tabElementId[1], "gameWidgetHeight": 178});
            gameTabBarModel.append({"text": qsTr("Studio.App.TemplatePage.Gameplay"), "elementId": tabElementId[2], "gameWidgetHeight": 178});

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
                font.family: RobloxStyle.fontSourceSansPro
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
