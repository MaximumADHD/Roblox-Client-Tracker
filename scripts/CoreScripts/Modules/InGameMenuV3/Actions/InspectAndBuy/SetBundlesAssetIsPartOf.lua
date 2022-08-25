--[[
	Action to update assets in rodux store with the bundles they are included within
	For InspectAndBuy
]]

local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

return Rodux.makeActionCreator(script.Name, function(assetId, bundleIds)
	return {
		assetId = assetId,
		bundleIds = bundleIds,
	}
end)