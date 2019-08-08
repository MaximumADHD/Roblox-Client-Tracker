local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(changes, settings)
	return {
		changes = changes,
		settings = settings,
	}
end)
