/**
This file implements a custom ToolTip because we are using Qt 5.6, and the
ToolTip type was not introduced until Qt 5.7. We can get rid of it once we
upgrade to Qt 5.7.
*/

import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Item {
    id: container
    property int maxWidth: 200
    property int shadowRadius: 4
    height: toolTipRectangle.height + 2*shadowRadius // 2* because of both sides
    width: toolTipRectangle.width + 2*shadowRadius
    visible: false

    Timer {
        id: toolTipTimer
        interval: 500
        onTriggered: container.visible = true;
    }

    function hide() {
        toolTipTimer.stop();
        container.visible = false;
    }

    function show(text, x, y, useTimer = true) {
        hide(); // Resets the state
        if (text === undefined) {
            return;
        }

        container.x = x;
        container.y = y;
        toolTipText.text = text;
        if (useTimer) {
            toolTipTimer.start();
        } else {
            container.visible = true;
        }
    }

    Rectangle {
        id: toolTipRectangle
        property int padding: 3
        anchors.centerIn: parent
        color: (FFlagTeamCreatePresenceIndicator || FFlagTeamCreatePresenceIndicatorRollout) ? userPreferences.theme.style("StartPage Page background") : RobloxStyle.colorYellowToolTip
        height: toolTipText.paintedHeight + 2*padding
        width: Math.min(container.maxWidth, textMetrics.width + 2*padding+1)
        PlainText {
            id: toolTipText
            anchors.fill: parent
            anchors.margins: toolTipRectangle.padding
            anchors.topMargin: toolTipRectangle.padding + 1
            color: (FFlagTeamCreatePresenceIndicator || FFlagTeamCreatePresenceIndicatorRollout) ? userPreferences.theme.style("CommonStyle mainText") : RobloxStyle.colorGray1
            text: "The text property was not set."
            font.pixelSize: 12
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
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
