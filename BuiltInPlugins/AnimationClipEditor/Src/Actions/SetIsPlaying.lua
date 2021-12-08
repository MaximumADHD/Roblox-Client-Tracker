--[[
	Keeps track if playback is currently
	running in the Editor.
]]
-- Deprecated when GetFFlagMoarMediaControls() is ON
local Action = require(script.Parent.Action)

return Action(script.Name, function(isPlaying)
	return {
		isPlaying = isPlaying,
	}
end)