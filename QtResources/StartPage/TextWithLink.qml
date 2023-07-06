/**
This file implements a way to get text with links and the cursor changes to
a hand when the link is hovered. You first need to define the text and link
with HTML:

    text: qsTr("Click <a style='text-decoration: none; color:'" + RobloxStyle.colorBluePrimary +
               "' href='%1'> here to go to roblox.com</a>.").arg("https://www.roblox.com")

Then you can use onLinkActivated to handle the click. For example:

    onLinkActivated: Qt.openUrlExternally(link);

*/

import QtQuick 2.6
import ".."

Text {
    textFormat: Text.RichText
    wrapMode: Text.Wrap
    font.pixelSize: 16
    font.weight: userPreferences.theme.style("CommonStyle fontWeight")
    renderType: Text.NativeRendering
    horizontalAlignment: Text.AlignLeft
    // The MouseArea changes the mouse cursor to a hand when hovering over the link.
    // It's a work-around because you cannot change the cursor with the inline CSS
    // in the Text element.
    MouseArea {
        anchors.fill: parent
        cursorShape: parent.hoveredLink ? Qt.PointingHandCursor : Qt.ArrowCursor
        acceptedButtons: Qt.NoButton // Let click pass through to parent Text
    }
}
