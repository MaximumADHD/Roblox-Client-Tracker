local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(resultsArray)
	assert(typeof(resultsArray) == "table", "SetOverrideAssets resultsArray must be a table")
	return {
		resultsArray = resultsArray,
	}
end)
