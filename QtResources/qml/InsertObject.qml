import QtQuick 2.3
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQml.Models 2.2
import QtGraphicalEffects 1.0
import "."

Rectangle {
    id: rootWindow
	// Window size is larger than actual widget size to prevent tooltip from being cut off
    width: 400; height: 600
    color: "transparent"

    readonly property int defaultCurrentIndex: -1 // See Qt documentation
    property bool showBelow: false

    signal itemClicked(int index)
    signal filterTextChanged(string filterText)

    function insertObject() {
        // Don't try to insert an object if the user hasn't selected any
        if (listView.currentIndex < 0 || listView.currentIndex > listView.count) {
            // Close the window
            Qt.quit();
        }

        // Emit classClicked signal
        rootWindow.itemClicked(listView.currentIndex);
        searchBoxText.text = "";
        listView.currentIndex = defaultCurrentIndex;
    }

	// The dialog rectangle was added so we can add a drop shadow to it.
	Rectangle {
	    id: dialog
	    width: 240; height: 456
	    color: userPreferences.theme.style("CommonStyle mainBackground")
		x: 5
		y: 5

        // Manually defining a search box. Cannot use ListView header, as it puts the scroll bar in the wrong place.
		Rectangle {
			id: searchBox
			anchors.left: parent.left
			anchors.right: parent.right
			height: 36
			color: userPreferences.theme.style("CommonStyle mainBackground")
			z: 1 // Stay on top of list when scrolling
			TextField {
				id: searchBoxText
                objectName: "qmlInsertObjectTextFilter"
                placeholderText: qsTr("Studio.App.InsertObject.SearchObject1").arg(insertObjectConfiguration.searchShortcut)
				anchors.fill: parent			
				anchors.margins: 6
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

		    	// Is called when the user types something in the search box.
		    	onTextChanged: {
		    		rootWindow.filterTextChanged(text);
		    		var exactMatchIndex = insertObjectModelMatcher.findExactMatch(text);
		    		if (exactMatchIndex >= 0) {
		    			listView.currentIndex = exactMatchIndex;
		    		}
		    		else if (listView.count > 0) {
		    			listView.currentIndex = 0;
		    		}

					classToolTip.hide();
		    	}

                Keys.onUpPressed: {
                    listView.currentIndex = Math.max(0, listView.currentIndex-1);
					classToolTip.hide();
                }
                Keys.onDownPressed: {
                    listView.currentIndex = Math.min(listView.count-1, listView.currentIndex+1);
					classToolTip.hide();
                }
                Keys.onEnterPressed: insertObject()
                Keys.onReturnPressed: insertObject()
                Keys.onEscapePressed: {
                    Qt.quit();
                }

                // Handle PageUp and PageDown separately. There are no special events for them,.
                Keys.onPressed: {
                    var itemsPerPage = 5;

                    if (event.key == Qt.Key_PageUp) {
                        listView.currentIndex = Math.max(0, listView.currentIndex-itemsPerPage);
                        event.accepted = true;
                    }
                    else if (event.key == Qt.Key_PageDown) {
                        listView.currentIndex = Math.min(listView.count-1, listView.currentIndex+itemsPerPage);
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
                objectName: "qmlInsertObjectRectangle" + name
    			color: "transparent"
    			height: 28
    			// There is a rare race condtion where parent is not defined.
    			anchors.left: parent ? parent.left : undefined
    			anchors.right: parent ? parent.right : undefined

    			MouseArea {
                    objectName: "qmlInsertObjectMouseArea" + name
					id: mouseArea
    				hoverEnabled: true
					cursorShape: Qt.PointingHandCursor
    				anchors.fill: parent
    				onEntered:	{
						listView.currentIndex = index;
						if (description != "") {
							var pos = mouseArea.mapToItem(dialog, mouseArea.x, mouseArea.y);
							classToolTip.show(description ? description : "", pos.x, pos.y + 29);
						}
					} 
					onPositionChanged: {
						if (description != "") {
							// Tooltip show method hides any displayed tooltip to reset the state
							var pos = mouseArea.mapToItem(dialog, mouseArea.x, mouseArea.y);
							classToolTip.show(description ? description : "", pos.x, pos.y + 29);
						}
					}
					onExited: { 
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

    			Image {
                    objectName: "qmlInsertObjectImage" + name
    				id: icon
    				width: 16
    				height: 16
    				anchors.left: parent.left
    				anchors.verticalCenter: parent.verticalCenter
    				anchors.leftMargin: 12
    				source: imageIndex >= 0 ? "image://ClassName/" + imageIndex : ""
    			}
    			PlainText {    
                    objectName: "qmlInsertObjectText" + name		
    				anchors.verticalCenter: parent.verticalCenter
    				anchors.left: icon.right
    				anchors.leftMargin: 12
    				font.pixelSize: 14
    				color:{
					    if(insertObjectWindow.getFFlagStudioInsertObjectStreamlining_Filtering()){
					        isUnpreferred ?  
							    userPreferences.theme.style("CommonStyle mutedText") : 
							    userPreferences.theme.style("CommonStyle mainText")
					    }
					    else{
					        userPreferences.theme.style("CommonStyle mainText")
					    }
					}
    				// Work around rare race condition where name is undefined
    				text: name ? name : ""
    			}
    		}
		}

		// This component is responsible for rendering the category
		Component {
			id: categoryDelegate
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

		ScrollView {
            id: scrollView
            objectName: "qmlInsertObjectScrollView"
			anchors.top: searchBox.bottom	    
		    anchors.left: parent.left
		    anchors.right: parent.right
            anchors.bottom: parent.bottom

		    ListView {
		    	id: listView	    
		    	anchors.fill: parent
		    	model: insertObjectListModel
                currentIndex: defaultCurrentIndex
		    	delegate: nameDelegate
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

		    	section {
		    		property: "category"
		    		criteria: ViewSection.FullString
		    		delegate: categoryDelegate
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
			when: rootWindow.showBelow
			AnchorChanges {
				target: searchBox
				anchors.top: dialog.top
			}
			AnchorChanges {
				target: scrollView
				anchors.top: searchBox.bottom
				anchors.bottom: dialog.bottom
			}
		},
		State {
			name: "STATE_SHOW_ABOVE"
			when: !rootWindow.showBelow
			AnchorChanges {
				target: searchBox
				anchors.top: scrollView.bottom
				anchors.bottom: dialog.bottom
			}
			AnchorChanges {
				target: scrollView
				anchors.top: dialog.top
				anchors.bottom: searchBox.top
			}
		}
	]
}
