--[[
	function getNextSelectables

	This function allows you to select a "next" set of selectables when clicking
	or double clicking on an object which is already in the selection.

	This may be usefull for drilling to a more specific context, or broadening
	the selection on clicked, or selecting a sub-selectable underneath the
	clicked selectable.
]]
return function(draggerContext, currentSelection, dragInfo, isDoubleClick)
	-- Return a new array of selectables here for that to become the selection.

	-- Here "dragInfo" is the dragInfo you returned from dispatchWorldClick
	-- if you returned FreeformDragging, or the "event" which was passed to
	-- dispatchWorldClick if you returned Ready.

	-- If you want the current selection to remain selected, just return nil:
	return nil
end