local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)
local Action = Util.Action

local FFlagImproveAssetCreationsPageFetching2 = game:GetFastFlag("ImproveAssetCreationsPageFetching2")

if FFlagImproveAssetCreationsPageFetching2 then
	return Action(script.Name, function(resultsArray, fetchedAll)
		assert(typeof(resultsArray) == "table", "UpdateOverrideAssetData resultsArray parameter must be a table")
		assert(typeof(fetchedAll) == "boolean", "UpdateOverrideAssetData fetchedAll parameter must be a boolean")
		return {
			resultsArray = resultsArray,
			fetchedAll = fetchedAll,
		}
	end)
else
	return Action(script.Name, function(totalResults, resultsArray, filteredResultsArray, fetchedAll)
		return {
			totalResults = totalResults,
			resultsArray = resultsArray,
			filteredResultsArray = filteredResultsArray,
			fetchedAll = fetchedAll,
		}
	end)
end
