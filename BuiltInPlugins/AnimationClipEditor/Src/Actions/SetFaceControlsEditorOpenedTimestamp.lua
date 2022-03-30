--[[
	Stores timestamp of when the FaceControlsEditor window is opened. (used for analytics reporting, see ToggleFaceControlsEditorEnabled)
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(faceControlsEditorOpenedTimestamp)
	return {
		faceControlsEditorOpenedTimestamp = faceControlsEditorOpenedTimestamp,
	}
end)