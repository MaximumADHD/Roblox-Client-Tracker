local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(assetData)
	assert(type(assetData) == "table", "assetData has to be a table.")
	assert(next(assetData) ~= nil, "assetData can't be an empty table.")

	return {
		assetConfigData = assetData,
	}
end)
