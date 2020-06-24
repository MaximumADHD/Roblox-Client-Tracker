local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(totalResults, resultsArray, filteredResultsArray, fetchedAll)
	return {
		totalResults = totalResults,
		resultsArray = resultsArray,
		filteredResultsArray = filteredResultsArray,
		fetchedAll = fetchedAll,
	}
end)
