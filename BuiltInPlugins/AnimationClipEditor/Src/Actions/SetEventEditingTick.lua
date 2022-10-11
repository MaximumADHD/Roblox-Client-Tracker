--[[
	Sets which tick's events are currently being edited.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(eventEditingTick)
	return {
		eventEditingTick = eventEditingTick,
	}
end)
