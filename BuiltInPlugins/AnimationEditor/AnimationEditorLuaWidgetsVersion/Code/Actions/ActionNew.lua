-- singleton (can't be undone/redone)

local New = {}

function New:execute(Paths)
	Paths.GUIScriptPromptOKCancel:show("Are you sure? Unsaved progress will be lost.", function() Paths.DataModelSession:resetAnimation() end)
end

return New
