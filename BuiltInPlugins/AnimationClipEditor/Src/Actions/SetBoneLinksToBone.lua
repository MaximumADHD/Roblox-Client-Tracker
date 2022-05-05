--[[
	Sets what bones are linked
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(boneLinksToBone)
	return {
		boneLinksToBone = boneLinksToBone,
	}
end)