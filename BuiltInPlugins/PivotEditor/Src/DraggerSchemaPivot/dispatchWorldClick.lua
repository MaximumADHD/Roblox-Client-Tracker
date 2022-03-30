local function buildFreeformDragInfo(draggerContext, draggerToolModel, event)
	return {
		ClickedSelectable = event.ClickedSelectable,
		HandleId = "Part",
	}
end

return function(draggerContext, draggerToolModel, event)
	-- Only PVInstances have a pivot to drag.
	if
		draggerToolModel:doesAllowFreeformDrag()
		and event.SelectionNowContainsSelectable
		and event.ClickedSelectable:IsA("PVInstance")
	then
		return "FreeformSelectionDrag",
			buildFreeformDragInfo(draggerContext, draggerToolModel, event)
	else
		return "Ready"
	end
end