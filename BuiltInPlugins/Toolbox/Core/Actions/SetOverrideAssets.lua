local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(totalResults, resultsArray, filteredResultsArray)
	return {
		totalResults = totalResults,
		resultsArray = resultsArray,
		filteredResultsArray = filteredResultsArray,
	}
end)
