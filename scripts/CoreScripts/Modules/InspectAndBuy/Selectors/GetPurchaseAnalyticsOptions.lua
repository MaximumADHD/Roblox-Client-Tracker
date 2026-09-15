local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local Constants = require(InspectAndBuyFolder.Constants)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)

type PurchaseOptions = Analytics.PurchaseOptions
type InspectAndBuyState = AvatarExperienceInspectAndBuy.InspectAndBuyState

--[[
	Collects the item metadata a unified purchase event needs but the purchase
	call sites do not carry: the asset or bundle sub-type, and the price paid.

	`resalePrice` is the lowest available resale price, which the caller only has
	when prompting a limited resale. It wins over the catalog price because that
	is what the buyer is actually charged.
]]
return function(state: InspectAndBuyState, itemId: string?, itemType: string?, resalePrice: number?): PurchaseOptions
	if not itemId then
		return { price = resalePrice }
	end

	local itemSubType: string?
	local catalogPrice: number?

	if itemType == Constants.ItemType.Bundle then
		local bundleInfo = state.bundles and state.bundles[itemId]
		if not bundleInfo then
			return { price = resalePrice }
		end

		itemSubType = bundleInfo.bundleType
		catalogPrice = tonumber(bundleInfo.price)
	else
		local assetInfo = state.assets and state.assets[itemId]
		if not assetInfo then
			return { price = resalePrice }
		end

		itemSubType = assetInfo.assetTypeId
		catalogPrice = tonumber(assetInfo.price)
	end

	return {
		-- The models store these as strings, and empty means the item details
		-- response has not populated them yet.
		itemSubType = if itemSubType ~= nil and itemSubType ~= "" then itemSubType else nil,
		price = resalePrice or catalogPrice,
	}
end
