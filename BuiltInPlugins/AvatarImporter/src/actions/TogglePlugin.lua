local root = script.Parent.Parent.Parent

local Action = require(root.src.actions.Action)

return Action(script.Name, function()
	return {}
end)