local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(results, totalResults, cursor)
	return {
		assets = results,
		totalResults = totalResults,
		cursor = cursor,
	}
end)
