--[[
    SetAnimationFromVideoErroredOut
	Stores the information if the animation from video creation has ended with an error
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(animationFromVideoErroredOut)
	return {
		animationFromVideoErroredOut = animationFromVideoErroredOut,
	}
end)