--[[
	Used to set which keyframes are selected.
	Accepts a table of keyframes, or an empty
	table to clear the selection.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(selected)
	return {
		selected = selected,
	}
end)
