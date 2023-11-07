import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

/**
    A template providing basic functionality for a right-click dropdown menu within the Start Page games pages.
    Avoid directly instantiating this component unless your functionality is extremely simple; otherwise, you should make a new component that inherits from it.
    
    This class uses a ListModel to define the options displayed in the dropdown. Each ListModel item should contain the following fields:
        - "text" (string): The display text for this item.
        - "action" (string): An identifier for the action that should be performed upon selecting this item.
        - "disabled" if menu item is clickable
    The following functions should be defined (as properties) for a component that inherits from ContextMenuDropdown:
        - initializeAndShow(x, y, attachedParent, ...args): Initializes the dropdown menu with the relevant data, then calls show(x, y, attachedParent) to display it.
        - populateDropdown(): Populates the ListModel with options.
        - handleActionFunction(action): Executes the action associated with selecting a dropdown option. Takes the "action" string identifier as an argument.
*/
Item {
    readonly property int listElementHeight: 32
    readonly property int listElementFontPixelSize: 16
    readonly property int listElementFontWeight: userPreferences.theme.style("CommonStyle fontWeight")

    readonly property int marginSize: 2
    readonly property int outerMargin: gameGridView.contextMenuButton.outerMargin
    readonly property int containerHeightMargins: (2 * marginSize) + (2 * outerMargin)
    property int containerHeight: (contextDropdownListModel.count * listElementHeight) + containerHeightMargins

    property bool isShowing: false
    property bool hideOnExit: true

    // MouseArea that the dropdown is attached to
    property var attachedParent: null

    // The position relative to the attachedParent so it can be repositioned when scrolling
    property real xToContainer: 0
    property real yToContainer: 0

    // These properties MUST be defined.
    // Qt 5.15 introduces the "required" keyword; that should be added once we upgrade.
    property var initializeAndShow
    property var populateDropdownFunction
    property var handleActionFunction

    // Optional property that may be used to assign a custom delegate for dropdown options.
    property var contextDropdownDelegate: undefined

    // This alias allows other components (including derived components) to view/modify the dropdown's listModel.
    property alias listModel: contextDropdownListModel
    property alias listView: contextDropdownListView
    property alias mouseArea: contextDropdownMouseArea
    property alias listContainer: container
    property alias listTextMetrics: textMetrics

    id: container
    objectName: "ContextDropdownContainer"
    width: 150
    height: containerHeight
    visible: false
    opacity: 0
    layer.enabled: true

    // for doing model sizing calculations
    TextMetrics {
        id: textMetrics
        font.weight: container.listElementFontWeight
        font.pixelSize: container.listElementFontPixelSize
    }

    function moveTo(x, y) {
        container.x = x;
        container.y = y;

        if (attachedParent) {
            var point = attachedParent.mapFromItem(gameGridView, x, y);
            xToContainer = point.x;
            yToContainer = point.y;
        } else {
            xToContainer = 0;
            yToContainer = 0;
        }
    }

    function becomeVisible() {
        container.isShowing = true;
        container.visible = true;
        container.opacity = 1;
    }

    function show(x, y, attachedParent) {
        container.attachedParent = attachedParent;
        gameGridViewWithHeader.setFocusTo("ContextMenu");
        populateDropdownFunction();
        moveTo(x, y);
        becomeVisible();
    }

    function hide() {
        container.isShowing = false;
        container.opacity = 0;
        container.attachedParent = null;
        gameGridViewWithHeader.setGridViewScrollable(true);
        gameGridView.contextMenuButton.isShowingDropdown = false;
    }

    Behavior on opacity {
        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad

            onRunningChanged: {
                // Hide the dropdown when it becomes fully invisible
                if (!running && (container.opacity == 0)) {
                    container.visible = false;
                    contextDropdownListModel.clear();
                }
            }
        }
    }

    MouseArea {
        id: contextDropdownMouseArea
        anchors.fill: parent
        anchors.margins: outerMargin
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onEntered: {
            // Show the drop shadow on the parent game widget
            if (isShowing && container.attachedParent) {
                container.attachedParent.entered();
            }
        }

        // Logic for hovering and selecting an item in the dropdown moved to this outer container
        // This is because if there are 2 mouse areas, this one underneath can get the wrong coordinates in onExited
        // Those coordinates are needed so they can be mapped to tell if the mouse is still over the parent game widget or not
        function updateCurrentIndex(mouse) {
            var y = mouse.y - container.marginSize;
            var index = Math.floor(y / container.listElementHeight);

            if ((y < 0) || (y > contextDropdownRectangleInner.height)) {
                index = -1;
            }

            contextDropdownListView.currentIndex = index;
        }

        onPositionChanged: {
            updateCurrentIndex(mouse);
        }

        onClicked: {
            updateCurrentIndex(mouse);
            var clickedElement = contextDropdownListModel.get(contextDropdownListView.currentIndex);
            if (!clickedElement) {
                console.log("Clicked on GameContextMenuDropdown but clickElement was null or undefined.");
                return;
            }
            if(clickedElement.disabled)
            {
                return;
            }
            handleActionFunction(clickedElement.action);
            return;
        }

        onExited: {
            contextDropdownListView.currentIndex = -1;

            if (container.attachedParent) {
                var ma = contextDropdownMouseArea;
                var point = ma.mapToItem(container.attachedParent, ma.mouseX, ma.mouseY);

                // Check if the mouse has left the dropdown and the parent mouseArea
                // Or just the dropdown but still hovering on the parent
                if ((point.y > container.attachedParent.height)
                        || (point.y < 0) || (point.x < 0) || (point.x > container.attachedParent.width)) {
                    container.attachedParent.exited();
                    
                    if (hideOnExit) {
                        hide();
                    }
                }
            }
        }

        Rectangle {
            id: contextDropdownRectangleOuter
            anchors.fill: parent
            radius: 3
            color: userPreferences.theme.style("Menu background")

            Rectangle {
                id: contextDropdownRectangleInner
                anchors.fill: parent
                anchors.topMargin: container.marginSize
                anchors.bottomMargin: container.marginSize
                color: userPreferences.theme.style("Menu background")

                ListView {
                    id: contextDropdownListView
                    objectName: "ContextDropdownListView"
                    anchors.fill: parent
                    interactive: false
                    currentIndex: -1

                    model: ListModel {
                        id: contextDropdownListModel
                    }

                    Component {
                        id: defaultContextDropdownDelegate

                        Rectangle {
                            objectName: "ContextDropdown_" + model.action
                            color: "transparent"
                            height: container.listElementHeight
                            // There is a rare race condtion where parent is not defined.
                            anchors.left: parent ? parent.left : undefined
                            anchors.right: parent ? parent.right : undefined

                            PlainText {
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 8
                                font.pixelSize: container.listElementFontPixelSize
                                font.weight: container.listElementFontWeight
                                renderType: userPreferences.theme.style("CommonStyle textRenderType")
                                color: userPreferences.theme.style("CommonStyle mainText")
                                opacity: (model && model.disabled) ? .3 : 1
                                text: model.text ? model.text : ""
                            }
                        }
                    }

                    delegate: contextDropdownDelegate ? contextDropdownDelegate : defaultContextDropdownDelegate

                    highlightFollowsCurrentItem: true
                    highlightMoveDuration: 50 // Speed up highlight follow
                    highlightMoveVelocity: 1000
                    highlight: Rectangle {
                        id: highlightBar
                        color: userPreferences.theme.style("Menu itemHover")
                        width: contextDropdownListView.width
                        height: container.listElementHeight
                        Rectangle {
                            width: 4
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            color: userPreferences.theme.style("CommonStyle currentItemMarker")
                            visible: true
                        }
                    }
                }
            }
        }
    }

    DropShadow {
        verticalOffset: userPreferences.theme.style("Menu shadowVerticalOffset")
        anchors.fill: contextDropdownMouseArea
        radius: userPreferences.theme.style("Menu shadowRadius")
        samples: userPreferences.theme.style("Menu shadowSamples")
        color: userPreferences.theme.style("Menu shadow")
        source: contextDropdownMouseArea
        opacity: container.visible ? userPreferences.theme.style("Menu shadowOpacity") : 0
        z: -1

        Behavior on opacity {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
    }
}
