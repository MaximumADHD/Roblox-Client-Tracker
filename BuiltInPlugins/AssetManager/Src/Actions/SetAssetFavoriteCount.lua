local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(assetId, favoriteCount)
	assert(type(assetId) == "number",
		string.format("SetAssetFavoriteCount requires assetId to be a number, not %s", type(assetId)))
	assert(type(favoriteCount) == "string",
		string.format("SetAssetFavoriteCount requires favoriteCount to be a string, not %s", type(favoriteCount)))

	return {
		assetId = assetId,
		favoriteCount = favoriteCount,
	}
end)
