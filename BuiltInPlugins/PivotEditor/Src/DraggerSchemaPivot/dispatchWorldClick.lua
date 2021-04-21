local function buildFreeformDragInfo(draggerContext, draggerToolModel, event)
	return {
		ClickedSelectable = event.ClickedSelectable,
		HandleId = "Part",
	}
end

return function(draggerContext, draggerToolModel, event)
	if event.SelectionNowContainsSelectable then
		return "FreeformSelectionDrag",
			buildFreeformDragInfo(draggerContext, draggerToolModel, event)
	else
		return "Ready"
	end
end