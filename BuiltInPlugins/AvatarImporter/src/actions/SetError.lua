local root = script.Parent.Parent.Parent

local Action = require(root.src.actions.Action)

return Action(script.Name, function(name, message)
	return {
		name = name,
		message = message,
	}
end)