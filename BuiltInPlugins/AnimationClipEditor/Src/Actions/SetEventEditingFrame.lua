--[[
	Sets which frame's events are currently being edited.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(eventEditingFrame)
	return {
		eventEditingFrame = eventEditingFrame,
	}
end)