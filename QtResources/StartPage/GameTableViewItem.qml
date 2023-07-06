import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import ".."

Rectangle {
    property var itemText: undefined
    anchors.fill: parent
    color: "transparent"
    clip: FFlagTeamCreatePresenceIndicator || FFlagTeamCreatePresenceIndicatorRollout
    MouseArea {
        id: _itemMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            if (itemText.text.length > 0 && itemText.truncated) {
                var point = mapToItem(_gameTableView, mouseX, mouseY)
                tableViewToolTip.show(itemText.text, point.x, point.y)
            }

            if (!_gameTableView.selection.contains(styleData.row)) {
                contextMenuDropdown.hide()
            }
        }
        onExited: tableViewToolTip.hide()
        onPressed: mouse.accepted = false // Prevents the MouseArea from capturing the mouse click; allows it to propagate to the table
    }
}
