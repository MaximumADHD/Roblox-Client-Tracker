--[[
	Used in FaceControlsEditor (sub Panel of ACE for dynamic head avatars) to toggle auto focus of cam on avatar head on/off

	Params:
		boolean autoFocusFaceEnabled
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(autoFocusFaceEnabled)
	return {
		autoFocusFaceEnabled = autoFocusFaceEnabled,
	}
end)
