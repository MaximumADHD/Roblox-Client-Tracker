local root = script.Parent.Parent.Parent

local Action = require(root.src.actions.Action)

return Action(script.Name, function(screen)
	return {
		screen = screen,
	}
end)