local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(assetData)
	assert(type(assetData) == "table", "assetData has to be a table.")
	assert(next(assetData) ~= nil, "assetData can't be an empty table.")

	return {
		assetConfigData = assetData,
	}
end)
