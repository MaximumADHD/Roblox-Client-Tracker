import QtQuick 2.6
import QtQuick.Layouts 1.3
import ".."

// Shows on the My Games tab when you have no games. Shows the gray text box
// and the Studio.App.CreateNewGameWidget.CreateNewGame button.
Item {
    id: container

    signal createNewGameButtonClicked()

    property int state: stateNoGames
    // You cannot define enums in QML so this is one way to define the states
    readonly property int stateNoGames: 0
    readonly property int stateNoGroupGames: 1
    readonly property int stateNoSharedWithMe: 2
    readonly property int stateNoRecentGames: 3
    readonly property int stateNoGamesMatchFilter: 4
	readonly property int stateNoArchivedGames: 5
	readonly property int stateNoArchivedGroupGames: 6
	readonly property int stateNoArchivedGamesMatchFilter: 7

    readonly property var textStrings: [
        qsTr("Studio.App.CreateNewGameWidget.YouDontHaveAnyGames"),
        qsTr("Studio.App.CreateNewGameWidget.GroupHasNoGames"),
        qsTr("Studio.App.CreateNewGameWidget.NoEditInvitations"),
        qsTr("Studio.App.CreateNewGameWidget.NoRecentEditedGames"),
		qsTr("Studio.App.CreateNewGameWidget.NoGamesFound"),
        qsTr("Studio.App.CreateNewGameWidget.NoArchivedGames"),
		qsTr("Studio.App.CreateNewGameWidget.GroupHasNoArchivedGames"),
		qsTr("Studio.App.CreateNewGameWidget.NoArchivedGamesFound"),
    ]

    onStateChanged: {
		if (state < container.stateNoGames || container.stateNoArchivedGamesMatchFilter < state) {
			console.error(qsTr("No such state in CreateNewGameWidget.qml: %1").arg(state));
		}
    }

    Rectangle {
        id: noGamesRectangle
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: textColumnLayout.height + 2*12 // Plus margin top and bottom
        color: userPreferences.theme.style("StartPage Page noGamesRect")

        ColumnLayout {
            id: textColumnLayout
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 12
            z: 1

            PlainText {
                id: messageText
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 1.5
                font.pixelSize: 16
                font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                color: userPreferences.theme.style("StartPage Page messageText")
                text: container.textStrings[container.state]
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
            }

            Text {
                id: learnMoreLink
                // Only show the link when you are on the Shared With Me tab
                // because it links to the wiki about team create.
                visible: container.state === stateNoSharedWithMe
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 16
                textFormat: Text.RichText
                property url link: sharedWithMeGamesPageController.getTeamCreateHelpUrl()
                text: "<a style='text-decoration: none; color:" + RobloxStyle.colorBluePrimary
                           + "' href='" + link +"'>" + qsTr("Studio.App.CreateNewGameWidget.LearnMore") + "</a>"
                color: userPreferences.theme.style("StartPage Page dimmedText")
                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                // The MouseArea change the mouse cursor to hand when hovering over the link
                MouseArea {
                    anchors.fill: parent
                    cursorShape: parent.hoveredLink ? Qt.PointingHandCursor : Qt.ArrowCursor
                    onClicked: { Qt.openUrlExternally(parent.link); }
                }
            }
        }
    }

    RobloxButton {
        id: createNewGameButton
        text: qsTr("Studio.App.CreateNewGameWidget.CreateNewGame")
        anchors.top: noGamesRectangle.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 12
        width: 180
        visible: container.state === stateNoGames || container.state === stateNoGroupGames || container.state == stateNoRecentGames
        color: RobloxStyle.colorBluePrimary
        hoverColor: RobloxStyle.colorBlueHover
        onClicked: createNewGameButtonClicked()
    }
}
