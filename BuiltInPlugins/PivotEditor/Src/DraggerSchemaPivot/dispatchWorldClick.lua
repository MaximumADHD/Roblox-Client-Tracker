local Plugin = script.Parent.Parent.Parent

local getFFlagPivotEditorErrors = require(Plugin.Src.Flags.getFFlagPivotEditorErrors)

local function buildFreeformDragInfo(draggerContext, draggerToolModel, event)
	return {
		ClickedSelectable = event.ClickedSelectable,
		HandleId = "Part",
	}
end

return function(draggerContext, draggerToolModel, event)
	if getFFlagPivotEditorErrors() then
		-- Only PVInstances have a pivot to drag.
		if event.SelectionNowContainsSelectable and event.ClickedSelectable:IsA("PVInstance") then
			return "FreeformSelectionDrag",
				buildFreeformDragInfo(draggerContext, draggerToolModel, event)
		else
			return "Ready"
		end
	else
		if event.SelectionNowContainsSelectable then
			return "FreeformSelectionDrag",
				buildFreeformDragInfo(draggerContext, draggerToolModel, event)
		else
			return "Ready"
		end
	end
end