local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(resultsArray, fetchedAll)
	assert(typeof(resultsArray) == "table", "UpdateOverrideAssetData resultsArray parameter must be a table")
	assert(typeof(fetchedAll) == "boolean", "UpdateOverrideAssetData fetchedAll parameter must be a boolean")
	return {
		resultsArray = resultsArray,
		fetchedAll = fetchedAll,
	}
end)
