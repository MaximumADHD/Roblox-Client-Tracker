local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(results, totalResults, cursor)
	return {
		assets = results,
		totalResults = totalResults,
		cursor = cursor,
	}
end)
