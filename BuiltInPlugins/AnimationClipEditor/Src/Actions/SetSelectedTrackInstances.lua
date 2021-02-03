--[[
	Used to set the instances of which track(s) are currently selected.

	Params:
		array selected = instances of tracks that are selected.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(tracks)
	return {
		selectedTrackInstances = tracks,
	}
end)