--[[
	Determines the visibility of the events track.

	Parameters:
		bool showEvents = Whether or not to show the Events track.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(showEvents)
	return {
		showEvents = showEvents,
	}
end)