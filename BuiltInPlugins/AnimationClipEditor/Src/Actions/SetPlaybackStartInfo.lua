--[[
	Stores the reference time and playhead position
	when playback is turned on.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(playbackStartInfo)
	return {
		playbackStartInfo = playbackStartInfo,
	}
end)
