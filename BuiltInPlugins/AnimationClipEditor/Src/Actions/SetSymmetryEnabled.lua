--[[
	Used in FaceControlsEditor (sub Panel of ACE for dynamic head avatars) to toggle symmetry editing on/off

	Params:
		boolean symmetryEnabled
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(symmetryEnabled)
	return {
		symmetryEnabled = symmetryEnabled,
	}
end)
