-- local function buildFreeformDragInfo(draggerContext, draggerToolModel, event)
-- 	return {
-- 		-- TODO: I may want to make freeform drag set the pivot
-- 	}
-- end

return function(draggerContext, draggerToolModel, event)
	if event.SelectionNowContainsSelectable then
		-- return "FreeformSelectionDrag",
		-- 	buildFreeformDragInfo(draggerContext, draggerToolModel, event)
		return "Ready"
	else
		return "Ready"
	end
end