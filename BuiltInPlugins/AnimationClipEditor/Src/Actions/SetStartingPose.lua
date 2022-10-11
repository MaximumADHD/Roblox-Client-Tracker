--[[
	Sets a table representing the CFrame of every part on
	the model while in base pose.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(startingPose)
	return {
		startingPose = startingPose,
	}
end)
