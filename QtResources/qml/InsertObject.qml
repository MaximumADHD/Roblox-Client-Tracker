import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQml.Models 2.2
import QtGraphicalEffects 1.0
import "."

Rectangle {
    id: rootWindow
	width: undefined; 
	height: undefined;
    color: "transparent"
    anchors.fill: parent;

    readonly property int defaultCurrentIndex: -1 // See Qt documentation
    property bool showBelow: false
    property bool expandedView: initialExpandedValue
	property bool isTextFocused: false
	property int mouseHighlightedIndex: -1
    property url toggleExpandButtonIcon: userPreferences.theme.style("InsertObjectWindow expandIcon")

    signal itemClicked(int index)
    signal filterTextChanged(string filterText)
	signal selectAfterInsertChecked(bool checked)
    signal showRecommendedOnlyChecked(bool checked)
    signal showExpandedViewToggled(bool state)

    signal scrollToTop
    signal scrollToBottom
    signal scrollPageUp
    signal scrollPageDown
    signal scrollUp
    signal scrollDown

    Connections {
        target: insertObjectWindow
        onForceTextFocusEvent: {
            toggleSettingsMenu(false)
            if(focusEvent) {
                tryFocusText()
            }
            else {
                tryUnfocusText()
            }
        }
    }
    Connections {
        target: insertObjectWindow
        onShowExpandedViewEvent: {
           showExpandedView(state)
        }
    }
    Connections {
        target: insertObjectWindow
        onWindowClosedEvent: {
           clearWindowState()
        }
    }

    function showExpandedView(state) {
        expandedView = state
        showExpandedViewToggled(state)
        if(state) {
            toggleExpandButtonIcon = userPreferences.theme.style("InsertObjectWindow collapseIcon")
        }
        else {
            toggleExpandButtonIcon = userPreferences.theme.style("InsertObjectWindow expandIcon")
        }     
    }

    function toggleSettingsMenu(state) {
        if(state) {
            selectedCheckBox.checked = insertObjectWindow.qmlGetSelectAfterInsertSetting()
        }
        settingsDropDown.visible = state
        settingsMenuBackground.enabled = state
        settingsMenuBackground.visible = state
    }

    function clearWindowState()
    {
        toggleSettingsMenu(false)
        classToolTip.hide();
        searchBoxText.text = "";
        getCurrentView().currentIndex = defaultCurrentIndex;
    }

    function getCurrentView() {
        if (expandedView) {
            return gridView
        }
        else {
            return listView
        }
    }

    function tryFocusText() {
        searchBoxText.forceActiveFocus()
        searchBoxText.selectAll();
        rootWindow.isTextFocused = true;
    }
     function tryUnfocusText() {
        searchBoxText.focus = false;
        rootWindow.isTextFocused = false;
    }

    function insertObject() {
		classToolTip.hide();
        var currentView = getCurrentView();
        // Don't try to insert an object if the user hasn't selected any
        if (currentView.currentIndex < 0 || currentView.currentIndex > currentView.count) {
            // Close the window
            Qt.quit();
        }

        // Emit classClicked signal
        rootWindow.itemClicked(currentView.currentIndex);
        if(isWindow) {
			clearWindowState()
		}
    }

	// The dialog rectangle was added so we can add a drop shadow to it.
	Rectangle {
	    id: dialog
		width: undefined; 
		height: undefined;
		anchors.fill: parent;
        anchors.margins: isWindow ? 2 : 0
        color: userPreferences.theme.style("InsertObjectWindow mainBackground")
		x: 5
		y: 5

        MouseArea {
			id: settingsMenuBackground
            z: 19  //should be below SettingsMenu but above everything else
    		enabled: false
            visible: false
            hoverEnabled: true
    		anchors.fill: parent
            onClicked: toggleSettingsMenu(false)
        }

        // Manually defining a search box. Cannot use ListView header, as it puts the scroll bar in the wrong place.
		Rectangle {
			id: searchBox
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.top: dialog.top
            anchors.margins: 6
			height: 28
			color: "transparent"
			z: 1 // Stay on top of list when scrolling
            RobloxButton {
                id: expandButton
                visible: true
                color: "transparent"
                hoverColor: userPreferences.theme.style("Menu itemHover")
                anchors.right: settingsButton.left
                anchors.verticalCenter: searchBoxText.verticalCenter
                width: 20; height: 20
                tooltip: qsTr("Studio.App.InsertObjectWidget.ExpandTooltip")
                onClicked: showExpandedView(!expandedView)
                Image {
                    anchors.centerIn: parent
                    source: toggleExpandButtonIcon
                }
            }
             RobloxButton {
                id: settingsButton
                color: "transparent"
                hoverColor: userPreferences.theme.style("Menu itemHover")
                visible: true
                anchors.right: parent.right
                anchors.verticalCenter: searchBoxText.verticalCenter
                width: 20; height: 20
                onClicked: toggleSettingsMenu(true)
                Image {
                    anchors.centerIn: parent
                    source: userPreferences.theme.style("InsertObjectWindow dropdownIcon")
                }
            }
			TextField {
				id: searchBoxText
                objectName: "qmlInsertObjectTextFilter"
                placeholderText: qsTr("Studio.App.InsertObject.SearchObject1").arg(insertObjectConfiguration.searchShortcut)
				anchors.left: parent.left
                anchors.margins: 0
                anchors.leftMargin: 3
                anchors.rightMargin: 3
                anchors.right: expandButton.left
                anchors.top: parent.top
				focus: true
				style: TextFieldStyle {
		        	textColor: userPreferences.theme.style("CommonStyle mainText")
					placeholderTextColor: userPreferences.theme.style("CommonStyle dimmedText")
		        	background: Rectangle {
		            	radius: 3
		            	border.color: userPreferences.theme.style("InsertObjectWindow searchBoxBorder")
		            	border.width: 1
						color: userPreferences.theme.style("CommonStyle inputFieldBackground")
		        	}
		    	}

				onActiveFocusChanged: {
					if (activeFocus){
						selectAll();
						rootWindow.isTextFocused = true;
					}
					else{
						rootWindow.isTextFocused = false;
					}
				}

		    	// Is called when the user types something in the search box.
		    	onTextChanged: {
		    		rootWindow.filterTextChanged(text);

		    		var exactMatchIndex = insertObjectModelMatcher.findExactMatch(text);
                    var currentView = getCurrentView();
		    		if (exactMatchIndex >= 0) {
		    			currentView.currentIndex = exactMatchIndex;
		    		}
		    		else if (currentView.count > 0) {
		    			currentView.currentIndex = 0;
		    		}

					classToolTip.hide();
		    	}

                Keys.onUpPressed: {
                    classToolTip.hide();
                        
                    var currentView = getCurrentView();
                    if(currentView.currentIndex <= 0) {
                        currentView.currentIndex = 0;
                    }

                    var originalIndex = currentView.currentIndex;
                    currentView.currentIndex--;
                    while(currentView.currentIndex > -1 && currentView.currentItem.mIsPlaceholder) {
                        if(currentView.currentIndex == 0) {
                            currentView.currentIndex = originalIndex;
                            break;                            
                        }
                        currentView.currentIndex--;
                    }
                }
                Keys.onDownPressed: {
                    classToolTip.hide();
                        
                    var currentView = getCurrentView();
                    if(currentView.currentIndex == currentView.count - 1) {
                        return;
                    }

                    var originalIndex = currentView.currentIndex;
                    currentView.currentIndex++;
                    while(currentView.currentIndex < currentView.count && currentView.currentItem.mIsPlaceholder) {
                        if(currentView.currentIndex == currentView.count - 1) {
                            currentView.currentIndex = originalIndex;
                            break;
                        }
                        currentView.currentIndex++;
                    }
                }
                Keys.onEnterPressed: insertObject()
                Keys.onReturnPressed: insertObject()
                Keys.onEscapePressed: {
                	clearWindowState()
                    Qt.quit();
                }

                Keys.onPressed: {
                    var currentView = getCurrentView();
                    if (event.key == Qt.Key_PageUp) {
                        rootWindow.scrollPageUp();
                        event.accepted = true;
                    }
                    else if (event.key == Qt.Key_PageDown) {
                        rootWindow.scrollPageDown();
                        event.accepted = true;
                    }
                    else if (event.key == Qt.Key_Home) {
                        rootWindow.scrollToTop();
                        event.accepted = true;
                    }
                    else if (event.key == Qt.Key_End) {
                        rootWindow.scrollToBottom();
                        event.accepted = true;
                    }

					classToolTip.hide();
                }
	 		}
		}

		// This component is responsible for rendering the classes
		Component {
			id: nameDelegate
			Rectangle {
                id: nameDelegateArea
                objectName: "qmlInsertObjectRectangle" + mName
    			color: "transparent"
    			height: 25
                width: 185
                // There is a rare race condtion where parent is not defined.
    			anchors.left: undefined
    			anchors.right: undefined

    			MouseArea {
                    objectName: "qmlInsertObjectMouseArea" + mName
					id: mouseArea
    				hoverEnabled: true
					cursorShape: Qt.PointingHandCursor
    				anchors.fill: parent
    				onEntered:	{
                        var currentView = getCurrentView();
                        currentView.currentIndex = mIndex
						mouseHighlightedIndex = mIndex
						if (mDescription != "") {
							var pos = mouseArea.mapToItem(dialog, mouseArea.x, mouseArea.y);
                            classToolTip.show(mDescription ? mDescription : "", pos.x, pos.y, nameDelegateArea.height+1, dialog.height, dialog.width);
						}
					} 
					onPositionChanged: {
						if (mDescription != "") {
							// Tooltip show method hides any displayed tooltip to reset the state
							var pos = mouseArea.mapToItem(dialog, mouseArea.x, mouseArea.y);
                            classToolTip.show(mDescription ? mDescription : "", pos.x, pos.y, nameDelegateArea.height+1, dialog.height, dialog.width);		
						}
					}
					onExited: { 
						mouseHighlightedIndex = -1
						classToolTip.hide();
					}
    				onClicked: {
                        if(isWindow) {
                            insertObject()
                        }
                    }
                    onDoubleClicked: {
                        if(!isWindow) {
                            insertObject()
                        }
                    }

					onWheel: {
						// When scrolling, sets highlighted object to moused over class TODO: still lags and fix cursor
						wheel.accepted = insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? true : false;
						mouseArea.exited();
                        var currentView = getCurrentView();
                        currentView.currentIndex = -1
                        
                        if(insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements()) {
                            if (wheel.angleDelta.y > 0) {
                                rootWindow.scrollUp();
                            }
                            else {
                                rootWindow.scrollDown();
                            }
                        }
					}
    			}
                Row {
                    spacing: 3
                    leftPadding: 13
                    anchors.verticalCenter: parent.verticalCenter

    			    Image {
                        objectName: "qmlInsertObjectImage" + mName
    				    id: icon
    				    width: 16
    				    height: 16
    				    source: mImageIndex >= 0 ? "image://ClassName/" + mImageIndex : ""
    			    }
    			    PlainText {    
                        objectName: "qmlInsertObjectText" + mName
    				    font.pixelSize: 14
    				    color:{
                            mIsUnpreferred ?  
							    userPreferences.theme.style("CommonStyle dimmedText") : 
							    userPreferences.theme.style("CommonStyle mainText")
					    }
    				    // Work around rare race condition where name is undefined
    				    text: mName ? mName : ""
    			    }
                }
    		}
		}

        Component {
	        id: categoryDelegate
	        Rectangle {
		        color: "transparent"
                height: 25
		        PlainText {
			        id: categoryText
			        leftPadding : 9
			        font.pixelSize: 14
                    anchors.verticalCenter: parent.verticalCenter
			        color: userPreferences.theme.style("InsertObjectWindow categoryText")
			        text: mCategory
		        }
		        Rectangle {
			        id: divider
                    anchors.left: categoryText.right
			        anchors.leftMargin: 6
			        anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: -1
                    anchors.right: parent.right
			        height: 1
			        color:  userPreferences.theme.style("InsertObjectWindow separator")
		        }
                MouseArea {
                    objectName: "qmlInsertObjectMouseAreaCategory" + mCategory
					id: categoryMouseArea
                    visible: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements()
    				hoverEnabled: true
					cursorShape: Qt.ArrowCursor
    				anchors.fill: parent
					onWheel: {
						wheel.accepted = true;
                        if (wheel.angleDelta.y > 0) {
                            rootWindow.scrollUp();
                        }
                        else {
                            rootWindow.scrollDown();
                        }
					}
    			}
	        }
        }

        Rectangle {
        	id: settingsDropDown
            visible: false
            z: 20
			color: userPreferences.theme.style("CommonStyle mainBackground")
            border.color:  userPreferences.theme.style("InsertObjectWindow settingsBorder")
            border.width: 1
			anchors.right: parent.right
			anchors.top: searchBox.bottom
            height: settingContents.height
            width: settingContents.width
            Column {
                id: settingContents
                padding: 8
                PlainText {
                    text: qsTr("Studio.App.RobloxRibbonMainWindow.Settings")
                    font.pixelSize: 14
                    color: userPreferences.theme.style("CommonStyle mainText")
                }
                RobloxCheckBox {
			        id: showRecommendedOnlyCheckBox
                    text: qsTr("Studio.App.InsertObjectWidget.ShowRecommendedOnly")

                    checked: showRecommendedObjects
			        onClicked: rootWindow.showRecommendedOnlyChecked(checked)

			        visible: true	
			        height: 30
		        }

		        RobloxCheckBox {
			        id: selectedCheckBox
                    text: qsTr("Studio.App.InsertObjectWidget.SelectInsertedObject")

			        checked: selectAfterInsert
			        onClicked: rootWindow.selectAfterInsertChecked(checked)
	                visible: true		
			        height: 30
		        }
            }
        }

        Rectangle
        {
            id: scrollViewContainer
        	anchors.top: searchBox.bottom
            anchors.topMargin: 5
		    anchors.left: parent.left
		    anchors.right: parent.right
			anchors.bottom: parent.bottom
            color: userPreferences.theme.style("InsertObjectWindow scrollViewBackground")

            Text {
                anchors.fill: parent
			    text: searchBoxText.text.length == 0 ? qsTr("Studio.App.InsertObjectWidget.EmptyFrequentlyUsedList") : qsTr("Studio.App.InsertObjectWidget.NoResultsFound")
                wrapMode: Text.WordWrap
			    color: userPreferences.theme.style("CommonStyle dimmedText")
                visible: getCurrentView().count == 0 && isWindow
            }

            Rectangle {
                id: listViewContainer
                visible: !expandedView
                objectName: "qmlInsertObjectListViewContainer"
			    anchors.fill: parent
                color: "transparent"

                ListView {
		    	    id: listView
                    clip: true
                    boundsBehavior: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? Flickable.StopAtBounds : Flickable.DragAndOvershootBounds
                    interactive: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? false : true
		    	    anchors.fill: parent
                    anchors.rightMargin: 20
		    	    model: insertObjectListModel
                    currentIndex: defaultCurrentIndex
                    property var cellHeight: 28
                    delegate: Component {
                                Loader {
                                    property int mIndex: typeof(index) !== "undefined" ? index : -1
                                    property int mImageIndex: typeof(imageIndex) !== "undefined" ? imageIndex : -1
                                    property string mName: typeof(name) !== "undefined" ? name : ""
                                    property string mCategory: typeof(category) !== "undefined" ? category : ""
                                    property string mDescription: typeof(description) !== "undefined" ? description : ""
                                    property bool mIsPlaceholder: typeof(isPlaceholder) !== "undefined" ? isPlaceholder : false
                                    property bool mIsUnpreferred: typeof(isUnpreferred) !== "undefined" ? isUnpreferred : false

                                    anchors.left: parent ? parent.left : undefined
                                    anchors.right: parent ? parent.right : undefined
                                    height: 28
                                    sourceComponent: isPlaceholder ? categoryDelegate : nameDelegate
                                }
                            }
                    highlightFollowsCurrentItem: true
				    highlightMoveDuration: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? 0 : 50
				    highlightMoveVelocity: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? -1 : 1000
				    highlight: Rectangle {
					    id: highlightBar
		    		    color: userPreferences.theme.style("Menu itemHover")
		    		    width: listView.width
		    		    height: 28
		    		    Rectangle {
		    		        width: 4
		    		        anchors.top: parent.top
		    		        anchors.bottom: parent.bottom
		    		        color: userPreferences.theme.style("CommonStyle currentItemMarker")
                            visible: true
		    		    }
		    	    }
                }
                RobloxVerticalScrollBar {
			        id: listVerticalScrollBar
			        window: listViewContainer
			        flickable: listView
                    keyEventNotifier: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? rootWindow : null
                    scrollWheelCount: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? scrollWheelLines : 1
                    fflagStudioInsertObjectStreamliningv2_FeedbackImprovements: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements()
                }

            }
            Rectangle {
                id: gridViewContainer
                visible: expandedView
                objectName: "qmlInsertObjectGridViewContainer"
                color: "transparent"
			    anchors.fill: parent
		        GridView {
		    	    id: gridView
		    	    anchors.fill: parent
                    anchors.topMargin: 5
                    anchors.bottomMargin: 20
					clip: true
                    boundsBehavior: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? Flickable.StopAtBounds : Flickable.DragAndOvershootBounds
                    interactive: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? false : true
                    cellWidth: 185; cellHeight: 25
                    flow: GridView.TopToBottom
		    	    model: insertObjectListModel
                    currentIndex: defaultCurrentIndex
                    delegate: Component {
                                Loader {
                                    property int mIndex: typeof(index) !== "undefined" ? index : -1
                                    property int mImageIndex: typeof(imageIndex) !== "undefined" ? imageIndex : -1
                                    property string mName: typeof(name) !== "undefined" ? name : ""
                                    property string mCategory: typeof(category) !== "undefined" ? category : ""
                                    property string mDescription: typeof(description) !== "undefined" ? description : ""
                                    property bool mIsPlaceholder: typeof(isPlaceholder) !== "undefined" ? isPlaceholder : false
                                    property bool mIsUnpreferred:  typeof(isUnpreferred) !== "undefined" ? isUnpreferred : false

                                    height: 25
                                    width: 185
                                    sourceComponent: isPlaceholder ? categoryDelegate : nameDelegate
                                }
                            }
                    highlightFollowsCurrentItem: true
				    highlightMoveDuration: 50 // Speed up highlight follow
				    highlight: Rectangle {
					    id: highlightBar
		    		    color: userPreferences.theme.style("Menu itemHover")
		    		    width: 185
		    		    height: 28
		    		    Rectangle {
		    		        width: 4
		    		        anchors.top: parent.top
		    		        anchors.bottom: parent.bottom
		    		        color: userPreferences.theme.style("CommonStyle currentItemMarker")
                            visible: true
                        }
		    	    }
		        }
                RobloxHorizontalScrollBar {
			        id: gridHorizontalScrollBar
			        window: gridViewContainer
			        flickable: gridView
                    keyEventNotifier: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements() ? rootWindow : null
                    fflagStudioInsertObjectStreamliningv2_FeedbackImprovements: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_FeedbackImprovements()
                }

		    }
        }		
	}

	// Adds a drop shadow around the window.
	DropShadow {
		anchors.fill: dialog
	    horizontalOffset: 0
	    verticalOffset: 0
	    radius: 5.0
	    samples: 16
	    color: userPreferences.theme.style("InsertObjectWindow dropShadow")
	    source: dialog
	}

	ClassToolTip {
		id: classToolTip
	}
}
