--[[
	Sets the creating animation from video status.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(creatingAnimationFromVideo)
	return {
		creatingAnimationFromVideo = creatingAnimationFromVideo,
	}
end)
