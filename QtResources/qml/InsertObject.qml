import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQml.Models 2.2
import QtGraphicalEffects 1.0
import "."

Rectangle {
    id: rootWindow
	width: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? undefined : 400; 
	height: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? undefined : 600;
    color: "transparent"
    anchors.fill: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? parent : undefined;

    readonly property int defaultCurrentIndex: -1 // See Qt documentation
    property bool showBelow: false
    property bool expandedView: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() ? initialExpandedValue : false
	property bool isTextFocused: false
	property int mouseHighlightedIndex: -1

    signal itemClicked(int index)
    signal filterTextChanged(string filterText)
	signal selectAfterInsertChecked(bool checked)
    signal showRecommendedOnlyChecked(bool checked)
	signal openInsertObjectWidget()
    signal showExpandedViewToggled(bool state)

    Connections {
        target: insertObjectWindow
        onForceTextFocusEvent: {
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

    function showExpandedView(state) {
        expandedView = state
        showExpandedViewToggled(state)
    }

    function getCurrentView() {
        if (insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() && expandedView) {
            return gridView
        }
        else {
            if(insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView()) {
                return listView
            }
            else {
                return _DEPRECATED_listView
            }
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
		if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget()) {
			classToolTip.hide();
		}
        var currentView = getCurrentView();
        // Don't try to insert an object if the user hasn't selected any
        if (currentView.currentIndex < 0 || currentView.currentIndex > currentView.count) {
            // Close the window
            Qt.quit();
        }

        // Emit classClicked signal
        rootWindow.itemClicked(currentView.currentIndex);
		if (!insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() || isWindow){
			searchBoxText.text = "";
			currentView.currentIndex = defaultCurrentIndex;
		}
    }

	// The dialog rectangle was added so we can add a drop shadow to it.
	Rectangle {
	    id: dialog
		width: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? undefined : 240; 
		height: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? undefined : 456;
		anchors.fill: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? parent : undefined;
        anchors.margins: (insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() && isWindow) ? 2 : 0
	    color: userPreferences.theme.style("CommonStyle mainBackground")
		x: 5
		y: 5

        // Manually defining a search box. Cannot use ListView header, as it puts the scroll bar in the wrong place.
		Rectangle {
			id: searchBox
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.top: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? dialog.top : undefined;
            anchors.margins: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? 6 : 0
			height:insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? 28 : 36
			color: userPreferences.theme.style("CommonStyle mainBackground")
			z: 1 // Stay on top of list when scrolling
            RobloxButton {
                id: expandButton
                visible: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView()
                anchors.left: parent.left
                anchors.verticalCenter: searchBoxText.verticalCenter
                width: 20; height: 20
                tooltip: qsTr("Studio.App.InsertObjectWidget.ExpandTooltip")
                onClicked: showExpandedView(!expandedView)
                Image {
                    anchors.centerIn: parent
                    source: "/16x16/images/Studio 2.0 icons/16x16/resize.png"
                }
            }
			TextField {
				id: searchBoxText
                objectName: "qmlInsertObjectTextFilter"
                placeholderText: qsTr("Studio.App.InsertObject.SearchObject1").arg(insertObjectConfiguration.searchShortcut)
				anchors.left: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() ? expandButton.right : parent.left
                anchors.margins: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() ? 0 : 6
                anchors.leftMargin: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() ? 3 : 0
                anchors.right: parent.right
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
					if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget()){
						if (activeFocus){
							selectAll();
							rootWindow.isTextFocused = true;
						}
						else{
							rootWindow.isTextFocused = false;
						}
					}
				}

		    	// Is called when the user types something in the search box.
		    	onTextChanged: {
		    		rootWindow.filterTextChanged(text);
					if (!insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() && insertObjectWindow.getFFlagStudioInsertObjectStreamlining_FlattenedFiltering()){
						if (!text){
							_DEPRECATED_listView.section.delegate = _DEPRECATED_categoryDelegate;
						}
						else{
							_DEPRECATED_listView.section.delegate = _DEPRECATED_hiddenCategoryDelegate;
						}
					}

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
                    var currentView = getCurrentView();
                    currentView.currentIndex = Math.max(0, currentView.currentIndex-1);
					classToolTip.hide();
                }
                Keys.onDownPressed: {
                    var currentView = getCurrentView();
                    currentView.currentIndex = Math.min(currentView.count-1, currentView.currentIndex+1);
					classToolTip.hide();
                }
                Keys.onEnterPressed: insertObject()
                Keys.onReturnPressed: insertObject()
                Keys.onEscapePressed: {
					if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget()) {
						classToolTip.hide();
					}
                    Qt.quit();
                }

                // Handle PageUp and PageDown separately. There are no special events for them,.
                Keys.onPressed: {
                    var itemsPerPage = 5;
                    var currentView = getCurrentView();
                    if (event.key == Qt.Key_PageUp) {
                        currentView.currentIndex = Math.max(0, currentView.currentIndex-itemsPerPage);
                        event.accepted = true;
                    }
                    else if (event.key == Qt.Key_PageDown) {
                        currentView.currentIndex = Math.min(currentView.count-1, currentView.currentIndex+itemsPerPage);
                        event.accepted = true;
                    }
					else if (insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() && event.key == Qt.Key_Tab) {
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
    			height: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() ? 25 : 28
                width: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() ? 185 : undefined
                // There is a rare race condtion where parent is not defined.
    			anchors.left: (parent && !insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView()) ? parent.left : undefined
    			anchors.right: (parent && !insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView()) ? parent.right : undefined

    			MouseArea {
                    objectName: "qmlInsertObjectMouseArea" + mName
					id: mouseArea
    				hoverEnabled: true
					cursorShape: Qt.PointingHandCursor
    				anchors.fill: parent
    				onEntered:	{
                        var currentView = getCurrentView();
                        currentView.currentIndex = mIndex
						if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_DragAndDrop()){
							mouseHighlightedIndex = mIndex
						}
						if (mDescription != "") {
							var pos = mouseArea.mapToItem(dialog, mouseArea.x, mouseArea.y);
                            if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget()) {
                                classToolTip.show(mDescription ? mDescription : "", pos.x, pos.y, nameDelegateArea.height+1, dialog.height, dialog.width);
                            }
							else {
                                classToolTip.deprecated_show(mDescription ? mDescription : "", pos.x, pos.y + 29);
                            }
						}
					} 
					onPositionChanged: {
						if (mDescription != "") {
							// Tooltip show method hides any displayed tooltip to reset the state
							var pos = mouseArea.mapToItem(dialog, mouseArea.x, mouseArea.y);
                            if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget()) {
                                classToolTip.show(mDescription ? mDescription : "", pos.x, pos.y, nameDelegateArea.height+1, dialog.height, dialog.width);
                            }
                            else {
                                classToolTip.deprecated_show(mDescription ? mDescription : "", pos.x, pos.y + 29);
                            }			
						}
					}
					onExited: { 
						if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_DragAndDrop()){
							mouseHighlightedIndex = -1
						}
						classToolTip.hide();
					}
    				onClicked: insertObject()

					onWheel: {
						// When scrolling, sets highlighted object to moused over class TODO: still lags and fix cursor
						wheel.accepted = false;
						mouseArea.exited();
						classToolTip.hide();
						mouseArea.entered();				
					}
    			}
                Row {
                    spacing: 3
                    leftPadding: 13
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
					        if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_Filtering()){
					            mIsUnpreferred ?  
							        userPreferences.theme.style("CommonStyle dimmedText") : 
							        userPreferences.theme.style("CommonStyle mainText")
					        }
					        else{
					            userPreferences.theme.style("CommonStyle mainText")
					        }
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
		        color: userPreferences.theme.style("CommonStyle mainBackground")
		        PlainText {
			        id: categoryText
			        leftPadding : 9
			        font.pixelSize: 14
			        color: userPreferences.theme.style("InsertObjectWindow categoryText")
			        text: mCategory
		        }
		        Rectangle {
			        id: divider
                    anchors.left: categoryText.right
			        anchors.leftMargin: 6
			        anchors.verticalCenter: categoryText.verticalCenter 
                    anchors.verticalCenterOffset: -1
                    anchors.right: parent.right
			        height: 1
			        color:  userPreferences.theme.style("InsertObjectWindow separator")
		        }
	        }
        }
		// This component is responsible for rendering the category
        // FIXME(rmendelsohn)
        // 2020/01/27
        // remove with FFlag StudioInsertObjectStreamliningv2_ExpandedView
		Component {
			id: _DEPRECATED_categoryDelegate
			Rectangle {
				color: userPreferences.theme.style("CommonStyle mainBackground")
				height: 30
				anchors.left: parent.left
				anchors.right: parent.right
				PlainText {
					id: categoryText
					anchors.verticalCenter: parent.verticalCenter
					anchors.left: parent.left
					anchors.leftMargin: 12
					font.pixelSize: 14
					color: userPreferences.theme.style("InsertObjectWindow categoryText")
					text: section
				}
				Rectangle {
					id: divider
					anchors.left: categoryText.right
					anchors.right: parent.right
					anchors.top: parent.top
					anchors.leftMargin: 6
					anchors.topMargin: 15 // Looks better than vertically centered
					height: 1
					color: userPreferences.theme.style("InsertObjectWindow separator")
				}
			}
		}
        // FIXME(rmendelsohn)
        // 2020/01/27
        // remove with FFlag StudioInsertObjectStreamliningv2_ExpandedView
		// This component is responsible for hiding the category
		Component {
		    id: _DEPRECATED_hiddenCategoryDelegate
			Rectangle {
			    visible: false
				height:0
			}
		}

        RobloxCheckBox {
			id: showRecommendedOnlyCheckBox
            text: qsTr("Studio.App.InsertObjectWidget.ShowRecommendedOnly")

            checked: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ShowRecommendedObjectsOnly() ? showRecommendedObjects : true
			onClicked: rootWindow.showRecommendedOnlyChecked(checked)

			anchors.left: parent.left
			anchors.top: searchBox.bottom
			anchors.leftMargin: 6

			visible: {
			    if(insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ShowRecommendedObjectsOnly()){
                    if(insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView) {
                        return true
                    }
                    else {
                        return !isWindow;
                    }
				}
				else
				{
				    return false;
				}
			}			
			height: {
				if(insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ShowRecommendedObjectsOnly()){
                    if(insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView) {
                        return 30
                    }
                    else {
                        return isWindow ? 0 : 30
                    }
				}
				else
				{
				    return 0;
				}		
			}
		}

		RobloxCheckBox {
			id: selectedCheckBox
            text: qsTr("Studio.App.InsertObjectWidget.SelectInsertedObject")

			checked: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_SelectAfterInsert() ? selectAfterInsert : true
			onClicked: rootWindow.selectAfterInsertChecked(checked)
			anchors.left: parent.left
			anchors.top: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ShowRecommendedObjectsOnly() ? showRecommendedOnlyCheckBox.bottom : searchBox.bottom
			anchors.leftMargin: 6
	        visible: {
			    if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() && insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_SelectAfterInsert()){
                    if(insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView) {
                        return true
                    }
                    else {
                        return !isWindow;
                    }
				}
				else
				{
				    return false;
				}
			}			
			height: {
				if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() && insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_SelectAfterInsert()){
                    if(insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView) {
                        return 30
                    }
                    else {
                        return isWindow ? 0 : 30
                    }
				}
				else
				{
				    return 0;
				}		
			}
		}

		Rectangle
		{
		    id: seeAllSection
			color: userPreferences.theme.style("CommonStyle mainBackground")
			visible: {
			    if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() && insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_InsertMenuTuning()){
				    return isWindow;
				}
				else
				{
				    return false;
				}
			}			
			height: {
				if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() && insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_InsertMenuTuning()){
				    return isWindow ? 25 : 0
				}
				else
				{
				    return 0;
				}	
			}
			anchors.left: parent.left
		    anchors.right: parent.right
		    anchors.bottom: dialog.bottom
			Rectangle {
				id: seeAllDivider
				anchors.top: seeAllSection.top
				anchors.left: parent.left
				anchors.right: parent.right
				height: 2
				color: userPreferences.theme.style("InsertObjectWindow separator")
			}
			Button{
				    id: seeAllButton
					anchors.top: seeAllDivider.bottom
					anchors.left: parent.left
					anchors.right: parent.right
					text: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_InsertMenuTuning() ? qsTr("Studio.App.InsertObjectWidget.SeeAllButton") + " " + openWidgetHotKey : "";
					onClicked: openInsertObjectWidget()
			}
		}
        Rectangle
        {
            id: scrollViewContainer
        	anchors.top: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_SelectAfterInsert() ? selectedCheckBox.bottom : searchBox.bottom	  
            anchors.topMargin: 5
		    anchors.left: parent.left
		    anchors.right: parent.right
			anchors.bottom: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_InsertMenuTuning() ? seeAllSection.top : parent.bottom
            color: userPreferences.theme.style("CommonStyle mainBackground")

            Text {
                anchors.fill: parent
			    text:{
                    if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget()){
                        searchBoxText.text.length == 0 ? qsTr("Studio.App.InsertObjectWidget.EmptyFrequentlyUsedList") : qsTr("Studio.App.InsertObjectWidget.NoResultsFound")
                    }
                    else{
                        qsTr("Studio.App.InsertObjectWidget.EmptyFrequentlyUsedList")
                    }
                }
                wrapMode: Text.WordWrap
			    color: userPreferences.theme.style("CommonStyle dimmedText")
                visible: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() && getCurrentView().count == 0 && isWindow
            }


             ScrollView {
                // FIXME(rmendelsohn)
                // 2020/01/31
                // remove with FFlag StudioInsertObjectStreamliningv2_ExpandedView
                id: _DEPRECATED_listScrollView
                visible: !insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView()
                objectName: "qmlInsertObjectListScrollView"
			    anchors.fill: parent
                ListView {
		    	    id: _DEPRECATED_listView
		    	    anchors.fill: parent
		    	    model: insertObjectListModel
                    currentIndex: defaultCurrentIndex
                    delegate: Component {
                                Loader {
                                    property int mIndex: index
                                    property int mImageIndex: imageIndex
                                    property string mName: name
                                    property string mCategory: category
                                    property string mDescription: description
                                    property bool mIsUnpreferred: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_Filtering() ? isUnpreferred : false

                                    anchors.left: parent ? parent.left : undefined
                                    anchors.right: parent ? parent.right : undefined
                                    height: 28
                                    sourceComponent: (insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() && isPlaceholder) ? categoryDelegate : nameDelegate
                                }
                            }
                    highlightFollowsCurrentItem: true
				    highlightMoveDuration: 50 // Speed up highlight follow
				    highlightMoveVelocity: 1000
				    highlight: Rectangle {
					    id: highlightBar
		    		    color: userPreferences.theme.style("Menu itemHover")
		    		    width: _DEPRECATED_listView.width
		    		    height: 28
		    		    Rectangle {
		    		        width: 4
		    		        anchors.top: parent.top
		    		        anchors.bottom: parent.bottom
		    		        color: userPreferences.theme.style("CommonStyle currentItemMarker")
                            visible: true
		    		    }
		    	    }
                    // FIXME(rmendelsohn)
                    // 2020/01/27
                    // remove with FFlag StudioInsertObjectStreamliningv2_ExpandedView
                    section {
                        id: _DEPRECATED_section
		    		    property: "category"
		    		    criteria: ViewSection.FullString
		    		    delegate:  insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() ? _DEPRECATED_hiddenCategoryDelegate : _DEPRECATED_categoryDelegate
		    	    }
                }
            }

            Rectangle {
                id: listViewContainer
                visible: insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() && !expandedView
                objectName: "qmlInsertObjectListViewContainer"
			    anchors.fill: parent
                color: "transparent"

                ListView {
		    	    id: listView
                    clip: true
		    	    anchors.fill: parent
                    anchors.rightMargin: 20
		    	    model: insertObjectListModel
                    currentIndex: defaultCurrentIndex
                    delegate: Component {
                                Loader {
                                    property int mIndex: index
                                    property int mImageIndex: imageIndex
                                    property string mName: name
                                    property string mCategory: category
                                    property string mDescription: description
                                    property bool mIsUnpreferred: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_Filtering() ? isUnpreferred : false

                                    anchors.left: parent ? parent.left : undefined
                                    anchors.right: parent ? parent.right : undefined
                                    height: 28
                                    sourceComponent: (insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() && isPlaceholder) ? categoryDelegate : nameDelegate
                                }
                            }
                    highlightFollowsCurrentItem: true
				    highlightMoveDuration: 50 // Speed up highlight follow
				    highlightMoveVelocity: 1000
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
                    cellWidth: 185; cellHeight: 25
                    flow: GridView.TopToBottom
		    	    model: insertObjectListModel
                    currentIndex: defaultCurrentIndex
                    delegate: Component {
                                Loader {
                                    property int mIndex: index
                                    property int mImageIndex: imageIndex
                                    property string mName: name
                                    property string mCategory: category
                                    property string mDescription: description
                                    property bool mIsUnpreferred: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_Filtering() ? isUnpreferred : false

                                    height: 25
                                    width: 185
                                    sourceComponent: (insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamliningv2_ExpandedView() && isPlaceholder) ? categoryDelegate : nameDelegate
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

	states: [
		State {
			name: "" // Default state
			when: {
				!insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_SelectAfterInsert() 
				&& rootWindow.showBelow 
				&& !insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget()
			}
			AnchorChanges {
				target: searchBox
				anchors.top: dialog.top
			}
			AnchorChanges {
				target: scrollViewContainer
				anchors.top: searchBox.bottom
				anchors.bottom: dialog.bottom
			}
		},
		State {
			name: "STATE_DEFAULT_FLAGGED" // Default state with getFFlagStudioInsertObjectStreamlining_InsertWidget flag
			when: {
				!insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_SelectAfterInsert() 
				&& rootWindow.showBelow 
				&& insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget()
			}
			AnchorChanges {
				target: searchBox
				anchors.top: dialog.top
				anchors.bottom: undefined;
			}
			AnchorChanges {
				target: scrollViewContainer
				anchors.top: searchBox.bottom
				anchors.bottom: dialog.bottom
			}
		},
		State {
			name: "STATE_SHOW_ABOVE"
			when: {
				!insertObjectWindow.qmlGetFFlagStudioInsertObjectStreamlining_SelectAfterInsert() 
				&& !rootWindow.showBelow 
			}
			AnchorChanges {
				target: searchBox
				anchors.top: insertObjectWindow.getFFlagStudioInsertObjectStreamlining_InsertWidget() ? undefined : scrollViewContainer.bottom;
				anchors.bottom: dialog.bottom
			}
			AnchorChanges {
				target: scrollViewContainer
				anchors.top: dialog.top
				anchors.bottom: searchBox.top
			}
		}
	]
}
