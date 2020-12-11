--[[
	Used to set the current AnimationData.
	Accepts an AnimationData table.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(animationData)
	return {
		animationData = animationData,
	}
end)