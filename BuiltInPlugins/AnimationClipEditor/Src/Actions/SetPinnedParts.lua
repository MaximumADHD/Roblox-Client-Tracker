--[[
	Sets what parts are pinned for IK manipulation.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(pinnedParts)
	return {
		pinnedParts = pinnedParts,
	}
end)
