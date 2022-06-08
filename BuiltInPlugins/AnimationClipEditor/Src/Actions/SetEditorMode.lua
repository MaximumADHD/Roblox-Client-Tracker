--[[
	Used to switch the editor between DopeSheet and CurvesCanvas

	Note: This should not be called directly. Instead, use the SwitchEditorMode
	thunk to report analytics.

	Params:
		string editorMode
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(editorMode)
	return {
		editorMode = editorMode,
		editorModeSwitchTime = os.time()
	}
end)
