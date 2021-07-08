local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

return Framework.Util.Action(script.Name, function(assetSettings)
	-- Double parens to work around the fact that AssetImportSettings is only
	-- present in Studio right now, so the linter doesn't think it exists.
	assert(typeof(assetSettings) == "Instance" and assetSettings:IsA(("AssetImportSettings")),
		"assetSettings should be an AssetImportSettings")

	return {
		assetSettings = assetSettings,
	}
end)
