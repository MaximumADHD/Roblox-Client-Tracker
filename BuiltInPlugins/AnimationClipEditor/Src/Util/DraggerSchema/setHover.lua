--[[
	function setHover

	Set what the currently hovered selectable / item is. This exists side by
	side with getSelectionBoxComponent intentionally. The selection box
	component is for rendering a hover box _on top_ of the hovered object.
	This function is for:
	 * Setting which object thinks it is hovered for the purpose of rendering
	   any "innate" hover details of the selectable.
	 * Notifying any global UIs which render information about the hovered
	   object that the hover has changed.
]]
return function(draggerContext, hoverSelectable, hoverItem)
	-- Set some global state tracking what the hover is in the context, and
	-- possibly fire some "hover changed" event.
end