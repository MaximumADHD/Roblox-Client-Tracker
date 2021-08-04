local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(assetId, isAssetFavorited)
	assert(type(assetId) == "number",
        string.format("SetAssetFavorited requires assetId to be a number, not %s", type(assetId)))
    assert(type(isAssetFavorited) == "boolean",
        string.format("SetAssetFavorited requires isAssetFavorited to be a boolean, not %s", type(isAssetFavorited)))

	return {
        assetId = assetId,
		isAssetFavorited = isAssetFavorited,
	}
end)
