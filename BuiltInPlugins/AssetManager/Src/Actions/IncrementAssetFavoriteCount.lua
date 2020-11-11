local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(assetId, incrementCount)
	assert(type(assetId) == "number",
		string.format("IncrementAssetFavoriteCount requires assetId to be a number, not %s", type(assetId)))
	assert(type(incrementCount) == "number",
		string.format("IncrementAssetFavoriteCount requires incrementCount to be a number, not %s", type(incrementCount)))

	return {
		assetId = assetId,
		incrementCount = incrementCount,
	}
end)