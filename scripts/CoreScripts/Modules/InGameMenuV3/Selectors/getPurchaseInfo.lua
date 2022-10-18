--[[
	Given an asset and a bundles table, return a table with information needed
	for creating the purchase flow ui. This includes the text and
	icon to show in the item card footers on the InspectAndBuyPage
	and the BottomBar action button in the AssetDetailsPage
]]
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local memoize = require(CorePackages.Workspace.Packages.AppCommonLib).memoize

local getPurchaseInfoHelper = memoize(function(asset, bundles)
	local itemInfo = asset
	local offsale = if itemInfo then not itemInfo.isForSale and not itemInfo.isLimited else nil
	local partOfBundle = asset and asset.bundlesAssetIsIn and #asset.bundlesAssetIsIn == 1
	local partOfBundleAndOffsale = partOfBundle and not asset.isForSale
	if partOfBundleAndOffsale then
		local bundleId = asset.bundlesAssetIsIn[1]
		itemInfo = bundles[bundleId]
		offsale = not itemInfo.isForSale
	end

	local robuxPrice = itemInfo.price
	local premiumExclusiveWhileNotPremium = false
	if itemInfo.isForSale and itemInfo.premiumPricing ~= nil then
		if (Players.LocalPlayer :: Player).MembershipType == Enum.MembershipType.Premium then
			robuxPrice = itemInfo.premiumPricing.premiumPriceInRobux
		elseif itemInfo.price == nil then
			premiumExclusiveWhileNotPremium = true
		end
	end

	return {
		owned = itemInfo.owned,
		robuxPrice = robuxPrice,
		isLoading = not itemInfo,
		offsale = offsale,
		isLimited = itemInfo.isLimited,
		premiumExclusiveWhileNotPremium = premiumExclusiveWhileNotPremium,
	}
end)

local function getPurchaseInfo(state, overrideAsset)
	local selectedItem = overrideAsset or state.inspectAndBuy.SelectedItem
	local bundles = state.inspectAndBuy.Bundles

	return getPurchaseInfoHelper(selectedItem, bundles)
end

return getPurchaseInfo