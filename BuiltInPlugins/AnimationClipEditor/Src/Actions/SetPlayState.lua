--[[
	Keeps track of the current play state (Reverse, Pause, Play).
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(playState)
	return {
		playState = playState,
	}
end)