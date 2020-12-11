--[[
	Determines whether or not the scrubber should
	try to snap to a key as it gets closer to it.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(snapToKeys)
	return {
		snapToKeys = snapToKeys,
	}
end)