local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(assetPreviewData)
	assert(type(assetPreviewData) == "table",
		string.format("SetAssetPreviewData requires a table, not %s", type(assetPreviewData)))

	return {
		assetPreviewData = assetPreviewData,
	}
end)