import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import "."

// A custom button that uses the Roblox style we have in several places. The color,
// disabled color and hover color can be overwritten.
Button {
    id: buttonContainer
    height: 38
    property color color: RobloxStyle.colorBluePrimary
    property color disabledColor: RobloxStyle.colorBlueDisabled
    property color hoverColor: RobloxStyle.colorBlueHover
    property color fontColor: "white"

    property int fontSize: 18

    property var dropshadowOpacity: 0.0
    style: ButtonStyle {
        background: Item {
            width: parent.width
            height: parent.height

            Rectangle {
                id: buttonRectangle
                color: buttonContainer.enabled ? buttonContainer.color : buttonContainer.disabledColor
                width: parent.width
                height: parent.height
                radius: 3
            }

            DropShadow {
                id: buttonDropShadow
                anchors.fill: buttonRectangle
                horizontalOffset: 0
                verticalOffset: 1
                radius: 6.0
                samples: 17
                color: "#BD969696"
                source: buttonRectangle
                opacity: buttonContainer.dropshadowOpacity
                z: -1
            }
        }
        label: PlainText {
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.weight: userPreferences.theme.style("CommonStyle fontWeight")
            font.pixelSize: fontSize
            color: FFlagStudioOnboardingStartPageCTA ? fontColor: "white"
            text: control.text
        }
    }

    Component.onCompleted: __behavior.cursorShape = Qt.PointingHandCursor

    onHoveredChanged: hovered ? buttonContainer.state = "STATE_HOVERED" : buttonContainer.state = ""

    states: [
        State {
            name: "STATE_HOVERED"
            PropertyChanges {
                target: buttonContainer; color: buttonContainer.hoverColor
            }
            PropertyChanges {
                target: buttonContainer; dropshadowOpacity: 1.0
            }
        }
    ]

    transitions: [
        Transition {
            to: "*"
            ColorAnimation { target: buttonContainer; duration: 200; easing.type: Easing.InOutQuad}
            NumberAnimation {
                target: buttonContainer
                properties: "dropshadowOpacity"
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
    ]
}
