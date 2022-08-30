--[[
	Given an asset and a bundles table, return a table with information needed
	for creating the purchase flow ui. This includes the text and
	icon to show in the item card footers on the InspectAndBuyPage
	and the BottomBar action button in the AssetDetailsPage
]]
local CorePackages = game:GetService("CorePackages")
local memoize = require(CorePackages.AppTempCommon.Common.memoize)

local getPurchaseInfoHelper = memoize(function(asset, bundles)
	local owned = if asset then asset.owned else nil
	local robuxPrice = if asset then asset.price else nil
	local partOfBundle = asset and asset.bundlesAssetIsIn and #asset.bundlesAssetIsIn == 1
	local partOfBundleAndOffsale = partOfBundle and not asset.isForSale
	if partOfBundleAndOffsale then
		local bundleId = asset.bundlesAssetIsIn[1]
		local bundleInfo = bundles[bundleId]
		if bundleInfo then
			owned = bundleInfo.owned
			robuxPrice = bundleInfo.price
		end
	end

	return {
		owned = owned,
		robuxPrice = robuxPrice,
		isLoading = not asset
	}
end)

local function getPurchaseInfo(state, overrideAsset)
	local selectedItem = overrideAsset or state.inspectAndBuy.SelectedItem
	local bundles = state.inspectAndBuy.Bundles

	return getPurchaseInfoHelper(selectedItem, bundles)
end

return getPurchaseInfo