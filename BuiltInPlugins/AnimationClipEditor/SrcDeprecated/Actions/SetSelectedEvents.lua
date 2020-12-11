--[[
	Used to set which events are selected.
	Accepts a table of events, or an empty
	table to clear the selection.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(selected)
	return {
		selected = selected,
	}
end)