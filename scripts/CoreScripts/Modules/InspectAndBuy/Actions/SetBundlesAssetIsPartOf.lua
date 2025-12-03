local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(assetId, bundleIds)
	return {
		assetId = assetId,
		bundleIds = bundleIds,
	}
end)
