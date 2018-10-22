local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(settings, index, selected)
	return {
		settings = settings,
		index = index,
		selected = selected,
	}
end)
