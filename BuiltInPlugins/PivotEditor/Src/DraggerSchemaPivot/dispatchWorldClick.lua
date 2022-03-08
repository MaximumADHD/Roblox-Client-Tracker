local Plugin = script.Parent.Parent.Parent

local getFFlagPivotEditorPreventDraggingInvalidTarget = require(Plugin.Src.Flags.getFFlagPivotEditorPreventDraggingInvalidTarget)

local function buildFreeformDragInfo(draggerContext, draggerToolModel, event)
	return {
		ClickedSelectable = event.ClickedSelectable,
		HandleId = "Part",
	}
end

return function(draggerContext, draggerToolModel, event)
	-- Only PVInstances have a pivot to drag.
	if
		(not getFFlagPivotEditorPreventDraggingInvalidTarget() or draggerToolModel:doesAllowFreeformDrag())
		and event.SelectionNowContainsSelectable
		and event.ClickedSelectable:IsA("PVInstance")
	then
		return "FreeformSelectionDrag",
			buildFreeformDragInfo(draggerContext, draggerToolModel, event)
	else
		return "Ready"
	end
end