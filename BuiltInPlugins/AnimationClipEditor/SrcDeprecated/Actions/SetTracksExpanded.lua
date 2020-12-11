--[[
	Toggles the expanded state of given tracks.

	Params:
		array tracks = list of track names that need to be expanded/collapsed
		bool expanded = whether every track in tracks should be expanded or collapsed
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(tracks, expanded)
	return {
		tracks = tracks,
		expanded = expanded,
	}
end)