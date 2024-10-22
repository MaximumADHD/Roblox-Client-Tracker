local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetAssetToBundlesMapping = require(InspectAndBuyFolder.Actions.SetAssetToBundlesMapping)

--[[
	Record the asset and the bundles mapping in a different reducer.
	We need to request both asset and bundle almost together.
	To avoid race conditions, we use a separated reducer to record the mapping.
	{
		[assetId] = {bundleId1, bundleId2, ...}
	}
]]
return Rodux.createReducer({}, {
	--[[
		Set/update asset and bundles mapping info.
	]]
	[SetAssetToBundlesMapping.name] = function(state, action)
		local assetId = tostring(action.assetId)
		local bundleIds = action.bundleIds

		return Cryo.Dictionary.join(state, { [assetId] = bundleIds })
	end,
})
