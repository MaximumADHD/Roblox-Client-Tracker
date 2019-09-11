--[[
	Keeps track if playback is currently 
	running in the Editor.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(isPlaying)
	return {
		isPlaying = isPlaying,
	}
end)