import QtQuick 2.6
import ".."

Item {
    id: tabTooltip
    property string text: qsTr("Studio.App.TabTooltip.ReplaceTooltipText")
    width: tabTooltipRectangle.width
    height: tabTooltipRectangle.height + 8/2
    layer.enabled: true // Need layer, otherwise opacity animation looks wrong
    opacity: 0
    Behavior on opacity {
        NumberAnimation {
            duration: 200
        }
    }

    Rectangle {
        color: RobloxStyle.colorGray2
        width: 8
        height: 8
        x: width
        y: 1
        transform: Rotation { origin.x: 4; origin.y: 4; angle: 45}
    }

    Rectangle {
        id: tabTooltipRectangle
        x: 0
        y: 5
        color: RobloxStyle.colorGray2
        width: tabTooltipText.paintedWidth + 2*tabTooltipText.anchors.leftMargin
        height: tabTooltipText.paintedHeight + 2*tabTooltipText.anchors.topMargin
        PlainText {
            id: tabTooltipText
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 6
            anchors.leftMargin: 6
            text: tabTooltip.text
            color: "white"
            verticalAlignment: Text.AlignVCenter
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
            font.pixelSize: 14
            renderType: Text.NativeRendering
        }
    }
}
