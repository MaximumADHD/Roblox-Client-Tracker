import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import "."

// A custom checkbox that uses the Roblox style

CheckBox {
	id: checkBoxContainer

	style: CheckBoxStyle {
        indicator: Rectangle {
            width: 16
            height: 16
            color: control.checked ? userPreferences.theme.style("Checkbox checkedBackground") : userPreferences.theme.style("Checkbox background")
            border.color: userPreferences.theme.style("Checkbox border")
            radius: 3

            Image {
                anchors.centerIn: parent
                width: 16
                height: 16
                source: userPreferences.theme.style("Checkbox checkMarkIcon")
                visible: control.checked
            }
        }
        spacing: 6
        label: PlainText {
			text: control.text
			color: userPreferences.theme.style("CommonStyle mainText")
        }
    }

	visible: true
    height: 30
}
