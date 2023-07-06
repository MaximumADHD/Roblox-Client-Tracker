// This LoginField widget contains both a TextField and a Text. The TextField
// allows the user to type in their username or password, and the Text is for
// displaying any errors related to what is typed in.
import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import ".."

FocusScope {
    id: loginField
    property alias text: textField.text
    property string placeholderText: "Placeholder text"
    property alias errorText: errorTextLabel.text
    property var errorHighlight: false // Turns the field border red
    property alias echoMode: textField.echoMode
    property alias maximumLength: textField.maximumLength
    height: errorTextLabel.visible ? textField.height + errorTextLabel.anchors.topMargin + errorTextLabel.paintedHeight
              : textField.height

    TextField {
        id: textField
        property double topPlaceHolderOpacity: 0
        Behavior on topPlaceHolderOpacity {
            NumberAnimation {
                // Fade placeholder top text in and out
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
        height: 38
        focus: true // So that the FocusScope knows what to focus
        placeholderText: activeFocus ? "" : loginField.placeholderText
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        font.pixelSize: 16
        font.weight: userPreferences.theme.style("CommonStyle fontWeight")
        style: TextFieldStyle {
            renderType: userPreferences.theme.style("CommonStyle textRenderType")
            placeholderTextColor: userPreferences.theme.style("CommonStyle dimmedText")
			textColor: userPreferences.theme.style("CommonStyle mainText")
            background: Rectangle {
                radius: 3
                border.color: loginField.errorHighlight ? RobloxStyle.colorRedError: RobloxStyle.colorGray3
                border.width: 1
				color: userPreferences.theme.style("StartPage LoginPage background")
                // Placeholder text that appears in the top of the text field
                Rectangle {
                    id: topPlaceHolderRectangle
                    x: 8
                    y: -8
                    color: userPreferences.theme.style("StartPage LoginPage background")
                    width: topPlaceHolderText.paintedWidth + 12 // 6px margin
                    height: topPlaceHolderText.paintedHeight
                    opacity: textField.topPlaceHolderOpacity
                    PlainText {
                        id: topPlaceHolderText
                        text: loginField.placeholderText
                        anchors.fill: parent
                        anchors.leftMargin: 6
                        anchors.rightMargin: 6
                        font.pixelSize: 12
                        font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                        renderType: userPreferences.theme.style("CommonStyle textRenderType")
                        color: userPreferences.theme.style("CommonStyle dimmedText")
                    }
                }
            }
        }

        onAccepted: performLogin()
        onTextChanged: {
            // There is a problem where the widget doesn't get an event if it's not
            // visible. That meant that the it never got the the event that it
            // lost the activeFocus and should not display the top placeholder text
            // anymore. This event handler hides the top placeholder text when the
            // text is reset, i.e. when the login data is reset.
            if (!activeFocus && text.length === 0) {
                topPlaceHolderOpacity = 0;
            }
        }
        onActiveFocusChanged: {
            if (!activeFocus && textField.text.length === 0) {
                topPlaceHolderOpacity = 0;
            } else {
                topPlaceHolderOpacity = 1;
            }
        }
    }

    PlainText {
        id: errorTextLabel
        text: "" // Text is set through error signal
        anchors.top: textField.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 2
        visible: parent.errorText
        color: RobloxStyle.colorRedError
        font.pixelSize: 12
        font.weight: userPreferences.theme.style("CommonStyle fontWeight")
        renderType: userPreferences.theme.style("CommonStyle textRenderType")
        wrapMode: Text.WordWrap
    }
}
