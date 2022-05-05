--[[
	function dispatchWorldClick

	This function decides what to do when the user clicks in the 3d space in
	some way. `event` contains information about how they clicked in the 3d
	space. The options which can be returned are are:

	* "Ready"
		Do nothing.

	* "DragSelecting"
		Begin box-selecting

	* "FreeformSelectionDrag", dragInfo
		Potentially begin freeform dragging the selection if the user moves
		their mouse sufficiently far. If they do, begin a freeform drag will be
		started using the arbitrary `dragInfo` returned.
]]

return function(draggerContext, draggerToolModel, event)
	--[[
	event = {
		DoubleClicked = <bool>,
		ClickedSelectable = <selectable>,
		ClickedItem = <item>,
		ClickedPosition = <vector3>,
		SelectionDidContainSelectable = <bool>,
		SelectionNowContainsSelectable = <bool>,
	}
	]]

	if not event.ClickedItem then
		return "DragSelecting"
	else
		return "Ready"
	end
end