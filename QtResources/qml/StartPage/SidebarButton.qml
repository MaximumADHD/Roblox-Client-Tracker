import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import ".."

Rectangle {
    signal clicked()

    property string iconSource: ""
    property string text: "Text"
    property bool selected: false
    property alias hovered: mouseArea.containsMouse
    property bool highlighted: (hovered || selected)

    id: sidebarButton
    width: userPreferences.theme.style("StartPage Sidebar buttonWidth")
    height: 90
    color: userPreferences.theme.style("StartPage Sidebar background")
    Behavior on color {
        ColorAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
        }
    }

    Item {
        width: newIcon.width + newIconText.paintedWidth
        height: newIcon.height + newIconText.paintedHeight
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Image {
            id: newIcon
            width: 28
            height: 28
            source: sidebarButton.iconSource
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            smooth: true
            mipmap: true
        }
        PlainText {
            id: newIconText
            anchors.top: newIcon.bottom
            anchors.topMargin: 6
            anchors.horizontalCenter: parent.horizontalCenter
            text: sidebarButton.text
            font.pixelSize: 16
            color: userPreferences.theme.style("StartPage Sidebar buttonText")
            renderType: userPreferences.theme.style("CommonStyle textRenderType")
            font.family: RobloxStyle.chooseWindowsOrMacOS(RobloxStyle.fontSourceSansPro, RobloxStyle.fontSourceSansProLight)
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
        }
    }

    MouseArea {
        id: mouseArea
        hoverEnabled: true
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: parent.clicked()
    }

    states: [
        State {
            name: "STATE_DEFAULT"
            when: !highlighted && !selected
            PropertyChanges { target: sidebarButton; color: userPreferences.theme.style("StartPage Sidebar background") }
			PropertyChanges { target: newIconText; color: userPreferences.theme.style("StartPage Sidebar buttonText") }
        },
        State {
            name: "STATE_HIGHLIGHTED"
            when:  highlighted && !selected
            PropertyChanges { target: sidebarButton; color: userPreferences.theme.style("StartPage Sidebar buttonHover") }
			PropertyChanges { target: newIconText; color: userPreferences.theme.style("StartPage Sidebar buttonText") }
        },
		State {
            name: "STATE_SELECTED"
            when: selected
            PropertyChanges { target: sidebarButton; color: userPreferences.theme.style("StartPage Sidebar buttonSelected") }
			PropertyChanges { target: newIconText; color: userPreferences.theme.style("StartPage Sidebar selectedButtonText") }
        }
    ]
}
