local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(assetId, bundleInfo)
	return {
		assetId = assetId,
		bundleInfo = bundleInfo,
	}
end)
