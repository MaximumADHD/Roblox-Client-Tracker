import QtQuick 2.6
import QtGraphicalEffects 1.0
import ".."

Item {
    property alias mouseArea: _mouseArea
    readonly property int buttonSize: 24
    readonly property int outerMargin: 6
    readonly property int dropdownYOffset: 125

    // Delete with FFlagContextMenuWithCursor
    readonly property int dropdownOffset: 10

    // This is true if the dropdown was opened by clicking on the button
    // Else either the dropdown isn't open, or was opened by right-clicking
    property bool isShowingDropdown: false

    // MouseArea that the dropdown is attached to
    property var attachedParent: null

    // GameWidget model and the position in the grid view
    property var model: null
    property int modelIndex: -1

    // The position relative to the attachedParent so it can be repositioned when scrolling
    property real xToContainer: 0
    property real yToContainer: 0

    id: container
    x: 0
    y: 0
    width: buttonSize + outerMargin * 2
    height: buttonSize + outerMargin * 2
    visible: false
    opacity: 0
    layer.enabled: true

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
        container.visible = true;
        container.opacity = 1;
    }

    function show(x, y, attachedParent, model, modelIndex) {
        container.attachedParent = attachedParent;
        container.model = model;
        container.modelIndex = modelIndex;

        moveTo(x, y);

        if (!isModelSafe()) {
            console.log("Attempt to show context button but model not safe");
            return;
        }

        becomeVisible();
    }

    function hide() {
        container.opacity = 0;

        if (isShowingDropdown) {
            closeDropdown();
        }
    }

    function openDropdown() {
        if (!container.attachedParent) {
            return;
        }

        if (isShowingDropdown) {
            return;
        }

        gameGridViewWithHeader.setFocusTo("ContextMenu");

        if (FFlagContextMenuWithCursor) {
            var showX = container.x + container.width - contextMenuDropdown.width + width;
            var showY = container.y + container.height + dropdownYOffset;

            if (contextMenuDropdown.attachedParent === container.attachedParent) {
                // The dropdown is already attached to this widget because we right clicked
                // So just move it
                contextMenuDropdown.moveTo(showX, showY);

            } else {
                // Currently on a different widget or not being shown
                // So move, become visible and give it model data
                contextMenuDropdown.initializeAndShow(showX, showY, container.attachedParent, container.model, container.modelIndex);
            }
        } else {
            var showX = container.x + container.width - gameGridView.gridContextMenuDropdown.width;
            var showY = container.y + container.height - dropdownOffset;

            if (gameGridView.gridContextMenuDropdown.attachedParent === container.attachedParent) {
                // The dropdown is already attached to this widget because we right clicked
                // So just move it
                gameGridView.gridContextMenuDropdown.moveTo(showX, showY);

            } else {
                // Currently on a different widget or not being shown
                // So move, become visible and give it model data
                gameGridView.gridContextMenuDropdown.initializeAndShow(showX, showY, container.attachedParent, container.model, container.modelIndex);
            }
        }

        isShowingDropdown = true;
    }

    function closeDropdown() {
        if (!isShowingDropdown) {
            console.log("Tried to close but already closed");
            return;
        }

        isShowingDropdown = false;
        if (FFlagContextMenuWithCursor) {
            contextMenuDropdown.hide();
        } else {
            gameGridView.gridContextMenuDropdown.hide();
        }
    }

    function isModelSafe() {
        if (!container.model) {
            console.log("Model passed to ContextButton is null");
            return false;
        }
        if (container.modelIndex < 0) {
            console.log("Model index passed to ContextButton is below 0");
            return false;
        }
        return true;
    }

    function contextButtonClicked(mouse) {
        mouse.accepted = true;

        // Toggle visibility of the context button if it was opened through clicking this button
        // Else if it was opened through right mouse button then call openDropdown() which just moves it
        if (isShowingDropdown) {
            closeDropdown();
        } else {
            openDropdown();
        }

        // Make the grid view scrollable again
        gameGridViewWithHeader.setGridViewScrollable(true);
    }

    Behavior on opacity {
        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad

            onRunningChanged: {
                if (!running && (container.opacity == 0)) {
                    container.visible = false;
                }
            }
        }
    }

    Rectangle {
        id: contextMenuButton
        objectName: "ContextMenuButton"
        anchors.fill: parent
        anchors.margins: outerMargin
        radius: 3
		color: userPreferences.theme.style("CommonStyle mainBackground")

        MouseArea {
            id: _mouseArea
            hoverEnabled: true
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            propagateComposedEvents: true

            onClicked: contextButtonClicked(mouse)

            onEntered: {
                // Without this, when the mouse hovers over the button, the game widget's mouse area gets an exited event
                // This tells the button to hide
                // So we end up with an invisible button that's still taking events (the game widget loses its drop shadow because of exit)
                // So force the button to stay shown and tell the game widget that it also still has mouse hover
                if (container.attachedParent) {
                    container.attachedParent.entered();
                }
                container.becomeVisible();
            }
        }

        Image {
            id: contextButtonIcon
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: userPreferences.theme.style("StartPage GameWidget contextMenuButtonIcon")
            smooth: true
            mipmap: FFlagStudioDisableMipMapsOnMac ? false : true
        }
    }

    DropShadow {
        anchors.fill: contextMenuButton
        radius: 4
        samples: 9
        color: "#191919"
        source: contextMenuButton
        opacity: 0.3
        z: -1

        Behavior on opacity {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
    }
}
