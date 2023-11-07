/**
This file implements a custom ComboBox because we are using Qt 5.6
where you cannot change the style of a ComboBox. We can get rid of
it once we upgrade to Qt 5.7.

In order to use it you have to set the model and listen to when
the currentIndex changes. For example:

RobloxComboBox {
    anchors.left: parent.left
    anchors.right: parent.right
    model: ListModel {
        id: myGroupsModel
        ListElement { text: qsTr("Foo") }
        ListElement { text: qsTr("Bar") }
        ListElement { text: qsTr("Baz") }
    }
    onCurrentIndexChanged: console.log("The user selected item " + currentIndex)
}

The model can be defined outside the file using setContextProperty,
as long as it has a count property. The items in the model must have
a role name text.

The code was inspired by the example on stackoverflow:
https://stackoverflow.com/questions/27089779
*/
import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import "."

Button {
    // The combo box button is what intially shows
    id: comboBoxButton
    implicitWidth: 200
    implicitHeight: 38
    checkable: true

    property var model: ListModel {}
    property var currentIndex: 0
    property var openUpwards: false
    // Setting the currentText to display in the combo box is a bit of a hack,
    // but I have not been able to find out what is the "correct QML way" to access
    // the model data from an index. I had to change the data method so it returns
    // the text role on DisplayRole (the default for the data method). We should be
    // able to replace this file (RobloxComboBox) and remove this hack once we upgrade
    // to Qt 5.7 because it allows you to override the style.
    property var currentText: model !== undefined && model !== null && model.count > 0 ? model.data(model.index(currentIndex, 0)) : ""

    ClassToolTip {
        id: dropDownTooltip
        z: 5
    }

    style: ButtonStyle {
       background: Rectangle {
           id: comboBoxRectangle
           radius: 3
           color: control !== undefined && control.checked !== undefined && control.checked ? userPreferences.theme.style("Combobox opened") : userPreferences.theme.style("CommonStyle mainBackground")
           border.width: 1
           border.color: control !== undefined && control.checked !== undefined && control.checked ? userPreferences.theme.style("Combobox openedBorder") : userPreferences.theme.style("Combobox border")

           Image {
		       
			    function getArrowDownIconPath() {
						if (control !== undefined && control.checked !== undefined && control.checked) {
							return userPreferences.theme.style("Combobox openedDownArrowIcon");
						}
						else {
							return userPreferences.theme.style("Combobox downArrowIcon");
						}
				}
               id: downArrowIcon
               anchors.right: parent.right
               anchors.rightMargin: 12
               anchors.verticalCenter: parent.verticalCenter
               width: 16
               height: 16
               smooth: true
               mipmap: FFlagStudioDisableMipMapsOnMac ? false : true
               scale: Image.PreserveAspectFit
               source: getArrowDownIconPath()
           }
       }

       label: PlainText {
           id: comboBoxText
           anchors.left: parent.left
           anchors.right: parent.right
           anchors.leftMargin: 12
           anchors.rightMargin: 22
           text: control !== undefined && control.currentText !== undefined ? control.currentText : ""
           verticalAlignment: Text.AlignVCenter
           font.pixelSize: 16
           font.weight: userPreferences.theme.style("CommonStyle fontWeight")
           color: control !== undefined && control.checked !== undefined && control.checked ? userPreferences.theme.style("Combobox openedText") : userPreferences.theme.style("Combobox text")
           elide: Text.ElideRight
           renderType: userPreferences.theme.style("CommonStyle textRenderType")
       }
    }
    onVisibleChanged: {
        // Hide combox selection list if user navigates to a different page
        if(!visible) {
            checked = false;
        }
    }
    onCheckedChanged: {
        if (model === undefined || model === null || model.count === 0) {
            checked = false;
        }
    }

    // This MouseArea was added to catch mouse wheel events. They were
    // escaping into the underlying GridView and it scrolled along with
    // the TableView.
    MouseArea {
        id: tableMouseArea
        anchors.top: openUpwards ? undefined : parent.bottom
        anchors.topMargin: userPreferences.theme.style("Combobox topMargin")
        anchors.bottom: openUpwards ? parent.top : undefined
        anchors.bottomMargin: userPreferences.theme.style("Combobox topMargin")
        property int itemHeight: 38
        property int maxHeight: 280
        property int borderWidth: userPreferences.theme.style("Combobox topMargin")/2
        height: Math.min(maxHeight, (comboBoxButton.model !== undefined && comboBoxButton.model !== null ? comboBoxButton.model.count : 0) * itemHeight + borderWidth)
        width: parent.width
        enabled: comboBoxButton.checked
        visible: comboBoxButton.checked
        preventStealing: comboBoxButton.checked
        onWheel: wheel.accepted = true;

        // The table view shows the list of items when you click the combo box
        TableView {
            id: tableView
            height: parent.height
            width: parent.width
            visible: comboBoxButton.checked ? true : false
            headerVisible: false
            highlightOnFocus: true
            horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
			frameVisible: userPreferences.theme.style("Combobox Dropdown frameVisible")
            // Reset style so it's the same on macOS and Windows. The macOS style
            // added a transparent border.
            style: TableViewStyle {}
            TableViewColumn {
                role: "name"
                // The tableView.viewport  is supposed to give you the the visible
                // area, but for some reason it doesn't subtract the scrollbars
                // like it's supposed to. The getColumnWidth works around this
                // and gives you a different width if the scrollbar is showing.
                function getColumnWidth() {
                    var isScrollbarVisible = tableMouseArea.height === tableMouseArea.maxHeight;
                    if (isScrollbarVisible) {
                        var scrollbarWidth = 17;
                        return tableView.viewport.width - scrollbarWidth;
                    }
                    else {
                        return tableView.viewport.width;
                    }
                }
                width: getColumnWidth()
            }
            model: comboBoxButton.model

            itemDelegate: Item {
                // The itemDelegate determines how each item in the list looks
                // and how they behave.
                Rectangle {
                    color:  userPreferences.theme.style("Combobox Dropdown background")
                    height: comboBoxButton.height
                    width: parent.width
                    property bool hovered: false

                    Rectangle {
                        id: highlight
                        anchors.fill: parent
                        color: userPreferences.theme.style("Combobox Dropdown itemHover")
                        visible: parent.hovered

                        Rectangle {
                            id: blueSideHighlight
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            width: 4
                            color: userPreferences.theme.style("CommonStyle currentItemMarker")
                            visible: parent.visible
                        }
                    }

                    PlainText {
                        renderType: userPreferences.theme.style("CommonStyle textRenderType")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 12
                        anchors.right: parent.right
                        anchors.rightMargin: 4
                        font.weight: userPreferences.theme.style("CommonStyle fontWeight")
                        font.pixelSize: 16
                        color: userPreferences.theme.style("CommonStyle mainText")
                        elide: Text.ElideRight
                        text: styleData.value
                    }

                    MouseArea {
                        id: comboBoxDropDownMouseArea
                        anchors.fill: parent
                        propagateComposedEvents: true
                        hoverEnabled: true
                        onHoveredChanged: {
                            // Change parent's hovered property so that the
                            // highlight is shown on hover.
                            parent.hovered = containsMouse;
                        }
                    onEntered:	{
                        var pos = comboBoxDropDownMouseArea.mapToItem(comboBoxButton, 0, 0);
                        dropDownTooltip.show(styleData.value, pos.x, pos.y, 4, dropDownTooltip.height, dropDownTooltip.width);
					} 
                    onExited: { 
                        dropDownTooltip.hide();
					}
                        onClicked: {
                            // The user clicked on an item. Make it the current item.
                            comboBoxButton.currentIndex = styleData.row;
                            // Finally, hide list when the user clicks an item in the list.
                            comboBoxButton.checked = false;
                        }
                    }
                }
            }

            rowDelegate: Item {
                height: comboBoxButton.height
            }
        }

        DropShadow {
            anchors.fill: parent
            visible: tableView.visible
            horizontalOffset: 0
            verticalOffset: userPreferences.theme.style("Combobox Dropdown shadowVerticalOffset")
            radius: userPreferences.theme.style("Combobox Dropdown shadowRadius")
            samples: userPreferences.theme.style("Combobox Dropdown shadowSamples")
            color: userPreferences.theme.style("Combobox Dropdown shadow")
            source: tableView
        }
    }
}
