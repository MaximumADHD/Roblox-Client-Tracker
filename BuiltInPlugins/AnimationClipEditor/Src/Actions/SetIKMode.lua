--[[
	Sets the IK manipluation mode.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(ikMode)
	return {
		ikMode = ikMode,
	}
end)
