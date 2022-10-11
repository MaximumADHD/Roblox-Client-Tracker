--[[
	Used to set the playback speed. This should not
	be called directly, but through the SetPlaybackSpeed thunk.
	The thunk makes sure that the animation does not jump around
	when the speed is changed.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(playbackSpeed)
	return {
		playbackSpeed = playbackSpeed,
	}
end)
