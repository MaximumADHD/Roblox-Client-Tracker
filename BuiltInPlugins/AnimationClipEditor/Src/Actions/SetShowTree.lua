--[[
	Determines whether or not the IK tree view is
	currently visible or not.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(showTree)
	return {
		showTree = showTree,
	}
end)
