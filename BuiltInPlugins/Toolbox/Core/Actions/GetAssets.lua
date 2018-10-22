local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(newData)
	return {
		assets = newData.Results,
		totalResults = newData.TotalResults,
	}
end)
