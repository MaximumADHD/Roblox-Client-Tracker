local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(screen, variable, value)
	return {
		screen = screen,
		variable = variable,
		value = value
	}
end)
