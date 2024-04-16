--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local SetBundlesAssetIsPartOf = require(InspectAndBuyFolder.Actions.SetBundlesAssetIsPartOf)
local SetAssetFromBundleInfo = require(InspectAndBuyFolder.Actions.SetAssetFromBundleInfo)
local GetFFlagIBEnableNewDataCollectionForCollectibleSystem =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableNewDataCollectionForCollectibleSystem)
local GetFFlagIBFixBuyingFromResellers = require(InspectAndBuyFolder.Flags.GetFFlagIBFixBuyingFromResellers)

return Rodux.createReducer({}, {
	--[[
		Set a group of assets, joining with any existing assets.
	]]
	[SetAssets.name] = function(state, action)
		local assets = {}

		for _, asset in ipairs(action.assets) do
			assert(asset.assetId ~= nil, "Expected an asset id when setting an asset's information.")
			local currentAsset = state[asset.assetId] or {}
			assets[asset.assetId] = Cryo.Dictionary.join(currentAsset, asset)
			if GetFFlagIBFixBuyingFromResellers() then
				local newAsset = assets[asset.assetId]
				if newAsset then
					assets[asset.assetId] = AssetInfo.getSaleDetailsForCollectibles(newAsset)
				end
			end
		end

		assets = Cryo.Dictionary.join(state, assets)

		return assets
	end,

	--[[
		Sets the list of bundles an asset is part of. At this point
		the asset should already exist in the store. This is called
		after the user navigates to the details page.
	]]
	[SetBundlesAssetIsPartOf.name] = function(state, action)
		local assetId = tostring(action.assetId)
		local bundles = action.bundleIds
		local currentAsset = state[assetId] or {}
		local asset = AssetInfo.fromGetAssetBundles(assetId, bundles)
		asset = Cryo.Dictionary.join(currentAsset, asset)
		return Cryo.Dictionary.join(state, { [assetId] = asset })
	end,

	[SetAssetFromBundleInfo.name] = if GetFFlagIBEnableNewDataCollectionForCollectibleSystem()
		then function(state, action)
			local bundleInfo = action.bundleInfo
			local assetId = tostring(action.assetId)
			local currentAsset = state[assetId] or {}
			local asset = AssetInfo.fromBundleInfo(assetId, bundleInfo)
			asset = Cryo.Dictionary.join(currentAsset, asset)

			return Cryo.Dictionary.join(state, { [assetId] = asset })
		end
		else nil,
})
