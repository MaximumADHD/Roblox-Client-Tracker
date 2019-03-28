local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(tabName, categories)
	return {
		tabName = tabName,
		categories = categories,
	}
end)
