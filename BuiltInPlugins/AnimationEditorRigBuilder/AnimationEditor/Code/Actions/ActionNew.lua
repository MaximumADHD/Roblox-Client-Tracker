-- singleton (can't be undone/redone)
local FastFlags = require(script.Parent.Parent.FastFlags)

local New = {}

function New:execute(Paths)
	if not FastFlags:isCheckForSavedChangesOn() or not Paths.UtilityScriptUndoRedo:isSaved() then 
		Paths.GUIScriptPromptOKCancel:show("Are you sure? Unsaved progress will be lost.", function() Paths.DataModelSession:resetAnimation() end)
	else
		Paths.DataModelSession:resetAnimation()
	end
end

return New
