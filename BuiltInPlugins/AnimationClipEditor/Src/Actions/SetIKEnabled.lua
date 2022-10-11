--[[
	Sets whether or not the joint manipulators use
	IK constraints when manipulating the model or
	not.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(ikEnabled)
	return {
		ikEnabled = ikEnabled,
	}
end)
