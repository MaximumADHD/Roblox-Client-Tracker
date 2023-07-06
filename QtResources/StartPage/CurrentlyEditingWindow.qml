import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Item {
    property alias text: currentlyEditingNames.text
    opacity: 0
    Behavior on opacity {
        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
        }
    }

    Rectangle {
        id: currentlyEditingWindow
        height: currentlyEditingTitle.paintedHeight + currentlyEditingNames.paintedHeight
        width: 160
        x: 0
        y: 0
        color: "white"

        PlainText {
            id: currentlyEditingTitle
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 6
            anchors.leftMargin: 6
            text: qsTr("Studio.App.CurrentlyEditingWindow.CurrentlyEditing")
            lineHeight: 1.5
            font.pixelSize: 12
            color: RobloxStyle.colorGray3
        }

        PlainText {
            id: currentlyEditingNames
            anchors.top: currentlyEditingTitle.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 6
            anchors.rightMargin: 6
            text: ""
            lineHeight: 1.5
            color: RobloxStyle.colorGray1
            font.pixelSize: 16
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
            renderType: Text.NativeRendering
            elide: Text.ElideRight
        }
    }

    DropShadow {
        anchors.fill: currentlyEditingWindow
        horizontalOffset: 0
        verticalOffset: 1
        radius: 8.0
        samples: 17
        color: "#4D503d30"
        source: currentlyEditingWindow
        opacity: currentlyEditingWindow.opacity
    }
}
