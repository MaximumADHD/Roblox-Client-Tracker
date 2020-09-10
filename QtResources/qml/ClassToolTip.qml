/**
This file implements a custom ToolTip because we are using Qt 5.6, and the
ToolTip type was not introduced until Qt 5.7. We can get rid of it once we
upgrade to Qt 5.7.
*/

import QtQuick 2.6
import QtGraphicalEffects 1.0
import "."

Item {
    id: container
    property int maxWidth: 200
    property int shadowRadius: 4
    height: toolTipRectangle.height + 2*shadowRadius // 2* because of both sides
    width: toolTipRectangle.width + 2*shadowRadius
    visible: false

    Timer {
        id: toolTipTimer
        interval: 1000
        onTriggered: container.visible = true;
    }

    function hide() {
        toolTipTimer.stop();
        container.visible = false;
    }

    function show(text, x, y, yOffset, windowHeight, windowWidth) {
        hide(); // Resets the state
        container.x = x;
        toolTipRectangle.width = Math.min(container.maxWidth, windowWidth)
        if(y + toolTipRectangle.height + yOffset > windowHeight) {
            container.y = y - toolTipRectangle.height;
        }
        else {
            container.y = y + yOffset;
        }
        toolTipText.text = text;
        toolTipTimer.start();
    }

    Rectangle {
        id: toolTipRectangle
        property int padding: 3
        anchors.centerIn: parent
        color: userPreferences.theme.style("CommonStyle tooltip")
        border.width: 1
        border.color: userPreferences.theme.style("CommonStyle tooltipBorder")
        height: toolTipText.paintedHeight + 2*padding
        width:  Math.min(container.maxWidth, textMetrics.width + 2*padding+1)
        PlainText {
            id: toolTipText
            anchors.fill: parent
            anchors.margins: toolTipRectangle.padding
            color: userPreferences.theme.style("CommonStyle tooltipText")
            text: "The text property was not set."
            font.pixelSize: 12
            font.family: RobloxStyle.fontSourceSansPro
            renderType: Text.NativeRendering
            lineHeight: 1.3
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
        }

        // Use a TextMetrics to figure out width instead of paintedWidth. That
        // way the toolTipRectangle can be given a maximum width and the text
        // can be wrapped.
        TextMetrics {
            id:     textMetrics
            font:   toolTipText.font
            text:   toolTipText.text
        }
    }

    DropShadow {
        anchors.fill: toolTipRectangle
        horizontalOffset: 0
        verticalOffset: 1
        radius: 2*shadowRadius // 2x looks more like the CSS specification
        samples: 17
        color: RobloxStyle.colorDropShadow
        source: toolTipRectangle
    }
}
