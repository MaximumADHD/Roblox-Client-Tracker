local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(assetId, bundleIdsAssetIsIn)
	return {
		assetId = assetId,
		bundleIds = bundleIdsAssetIsIn,
	}
end)
