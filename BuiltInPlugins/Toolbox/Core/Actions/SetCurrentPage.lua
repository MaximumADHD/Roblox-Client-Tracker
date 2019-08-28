local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(currentPage)
	return {
		currentPage = currentPage,
	}
end)
