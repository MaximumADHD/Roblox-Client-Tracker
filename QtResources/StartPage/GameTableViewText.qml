import QtQuick 2.6
import QtQuick.Controls 1.5
import ".."

// Used exclusively to reduce code duplication in GameTableView.qml; many of these properties are assumed to be inherited from GameTableView.
// Upon upgrading to Qt 5.15, we should seek to move this code into an inline component in GameTableView.qml so the dependency is clear.
PlainText {
    color: userPreferences.theme.style("CommonStyle mainText")
    elide: styleData.elideMode ? styleData.elideMode : Text.ElideRight
    font.pixelSize: tableFontSize
    anchors.top: parent.top
    anchors.topMargin: (tableRowHeight - tableFontSize) / 2
    anchors.left: parent.left
    anchors.leftMargin: textLeftMargin
    width: parent.width - elideMargin
}
