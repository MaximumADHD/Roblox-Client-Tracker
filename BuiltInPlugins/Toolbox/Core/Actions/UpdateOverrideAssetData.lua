local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(totalResults, resultsArray, filteredResultsArray, fetchedAll)
	return {
		totalResults = totalResults,
		resultsArray = resultsArray,
		filteredResultsArray = filteredResultsArray,
		fetchedAll = fetchedAll,
	}
end)
