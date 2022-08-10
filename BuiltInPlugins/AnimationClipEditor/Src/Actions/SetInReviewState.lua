--[[
	Keeps track of inReviewState (for face capture)
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(inReviewState)
	return {
		inReviewState = inReviewState,
	}
end)