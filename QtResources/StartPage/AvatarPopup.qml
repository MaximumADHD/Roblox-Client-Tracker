import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Item {
    id: container
    property int maxWidth: 200
    property int shadowRadius: 4
    height: toolTipRectangle.height + 2*shadowRadius
    width: toolTipRectangle.width + 2*shadowRadius
    visible: false

    function hide() {
        container.visible = false;
    }

    function show(text, x, y) {
        hide(); // Resets the state
        toolTipText.text = text;
        container.x = x - toolTipText.width / 2;
        container.y = y;
        container.visible = true;
    }

    Rectangle {
        id: toolTipRectangle
        property int padding: 4
        anchors.centerIn: parent
        color: userPreferences.theme.style("StartPage Page background")
        height: toolTipText.paintedHeight + 2*padding
        width: textMetrics.width + 2*padding+1
        radius: padding / 2
        PlainText {
            id: toolTipText
            anchors.fill: parent
            anchors.margins: toolTipRectangle.padding
            anchors.topMargin: toolTipRectangle.padding + 1
            color: userPreferences.theme.style("CommonStyle mainText")
            text: ""
            font.pixelSize: 12
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
        }

        TextMetrics {
            id:     textMetrics
            font:   toolTipText.font
            text:   toolTipText.text
        }
    }

}
