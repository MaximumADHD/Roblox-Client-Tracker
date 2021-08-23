local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(assetModerationData)
	assert(type(assetModerationData) == "table",
		string.format("SetAssetModerationData requires a table, not %s", type(assetModerationData)))

	return {
		assetModerationData = assetModerationData,
	}
end)
