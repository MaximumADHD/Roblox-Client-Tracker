--[[
	Keeps track of haveToSetBackToNotLooping 
	(for face capture setting back looping to not enabled if it was not enabled pre entering in review state)
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(haveToSetBackToNotLooping)
	return {
		haveToSetBackToNotLooping = haveToSetBackToNotLooping,
	}
end)