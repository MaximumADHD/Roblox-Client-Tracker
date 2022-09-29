--[[
    SetAnimationFromVideoUploadStartTime
	Stores the reference start time of the animation from video file upload
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(animationFromVideoUploadStartTime)
	return {
		animationFromVideoUploadStartTime = animationFromVideoUploadStartTime,
	}
end)