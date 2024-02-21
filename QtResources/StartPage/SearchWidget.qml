import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import ".."

Rectangle {
    signal searchCleared(bool fromButton)
    signal searchClicked(string searchTerm, bool fromButton)

    // Keep track of the last search term we sent to C++
    // Only send a message if it's different from before
    property string lastSentSearchTerm: ""

    // External function to save the state of the search widget to the settings
    property var saveSearchWidgetState;

    property alias hasFocus: searchTextField.focus;

    id: searchWidget
    implicitWidth: 240
    implicitHeight: 38
    color: userPreferences.theme.style("CommonStyle inputFieldBackground")
    radius: 3
    border.color: userPreferences.theme.style("StartPage SearchWidget border")

    // Used by outside controllers to reset the view
    function clear() {
        searchTextField.text = "";
        lastSentSearchTerm = "";
    }

    // Used by outside controllers to restore the view
    function setSearchTerm(searchTerm, _lastSentSearchTerm) {
        searchTextField.text = searchTerm;
        lastSentSearchTerm = _lastSentSearchTerm || "";
    }

    function getSearchTerm() {
        return searchTextField.text;
    }

    function getLastSentSearchTerm() {
        return lastSentSearchTerm;
    }

    function hasSearchTerm() {
        return getSearchTerm().length !== 0;
    }

    function handleSearchClearedClicked(fromButton) {
        searchTextField.text = "";
        // Check if we've already sent an empty search to c++
        if ("" != lastSentSearchTerm) {
            lastSentSearchTerm = "";
            saveSearchWidgetState("", "");
            searchCleared(fromButton);
        }
    }

    function handleSearchButtonClicked(fromButton) {
        var searchTerm = searchTextField.text;
        // If the search term is empty then just treat it as a clear
        if (searchTerm.length > 0) {
            // Check if we've already searched for this
            if (searchTerm != lastSentSearchTerm) {
                // Remember what we just searched
                lastSentSearchTerm = searchTerm;
                // Save the state to settings
                saveSearchWidgetState(searchTerm, lastSentSearchTerm);
                // Tell C++ to repopulate with new term
                searchClicked(searchTerm, fromButton);
            }
        } else {
            handleSearchClearedClicked(false);
        }
    }

    TextField {
        id: searchTextField
		objectName: "startPageSearchTextField"
        height: parent.height
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 4
        anchors.rightMargin: clearIcon.width + 12 + 16 + 12 + 12 + 4
        placeholderText: qsTr("Studio.Common.Action.Search")
        font.pixelSize: 16
        font.weight: userPreferences.theme.style("CommonStyle fontWeight")
        style: TextFieldStyle {
            textColor: userPreferences.theme.style("StartPage SearchWidget text")
        placeholderTextColor: userPreferences.theme.style("CommonStyle dimmedText")
        renderType: userPreferences.theme.style("CommonStyle textRenderType")
            background: Rectangle {
                color: "transparent"
            }
        }

        // Search when user presses enter
        onAccepted: handleSearchButtonClicked(false);
    }

    Button {
        id: clearButton
		objectName: "startPageSearchClearButton"
        width: clearIcon.width + 12 // 12 pixel margin on the right
        height: parent.height
        anchors.right: searchButton.left
        style: ButtonStyle {
            background: Rectangle {
                color: "transparent"
            }
        }
        visible: searchTextField.text.length > 0

        // Override cursor shape to pointing hand
        Component.onCompleted: __behavior.cursorShape = Qt.PointingHandCursor

        Image {
            id: clearIcon
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            visible: !clearButton.hovered
            width: 16
            height: 16
            smooth: true
            mipmap: FFlagStudioDisableMipMapsOnMac ? false : true
            scale: Image.PreserveAspectFit
            source: "image://QmlImage/CloseWidget"
            cache: false
            sourceSize.width: 16
            sourceSize.height: 16
        }

        Image {
            id: clearIconHover
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            visible: clearButton.hovered
            width: 16
            height: 16
            smooth: true
            mipmap: FFlagStudioDisableMipMapsOnMac ? false : true
            scale: Image.PreserveAspectFit
            source: "image://QmlImage/CloseWidget"
            cache: false
            sourceSize.width: 16
            sourceSize.height: 16
        }

        onClicked: handleSearchClearedClicked(true);
    }

    Button {
        id: searchButton
        height: parent.height
        anchors.top: parent.top
        anchors.right: parent.right
        width: 16 + 12 + 12 // 12 pixel margins on each side of the icon

        // Override cursor shape to pointing hand
        Component.onCompleted: __behavior.cursorShape = Qt.PointingHandCursor

        style: ButtonStyle {
            background: Rectangle {
                anchors.fill: parent
                color: "transparent"

                Rectangle {
                    id: separatorLine
                    anchors.left: parent.left
                    width: 1
                    height: parent.height
                    color: userPreferences.theme.style("StartPage SearchWidget border")
                }

                Image {
                    id: searchIcon
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    width: 16
                    height: 16
                    smooth: true
                    mipmap: FFlagStudioDisableMipMapsOnMac ? false : true
                    scale: Image.PreserveAspectFit
                    source: userPreferences.theme.style("StartPage SearchWidget searchButtonIcon")
                }
            }
        }

        onClicked: handleSearchButtonClicked(true);
    }
}
