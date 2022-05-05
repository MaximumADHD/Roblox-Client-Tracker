local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(assetsModerationData)
	assert(type(assetsModerationData) == "table",
		string.format("SetAssetsModerationData requires a table, not %s", type(assetsModerationData)))

	return {
		assetsModerationData = assetsModerationData,
	}
end)
