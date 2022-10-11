--[[
	Determines whether or not the FaceControlsEditorPanel is
	currently visible or not.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(showFaceControlsEditorPanel)
	return {
		showFaceControlsEditorPanel = showFaceControlsEditorPanel,
	}
end)
