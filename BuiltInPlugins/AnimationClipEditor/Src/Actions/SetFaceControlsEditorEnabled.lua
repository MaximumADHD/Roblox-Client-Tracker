--[[
	Sets whether FaceControlsEditor is enabled.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(FaceControlsEditorEnabled)
	return {
		FaceControlsEditorEnabled = FaceControlsEditorEnabled,
	}
end)