local InGameMenu = script.Parent.Parent
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
local BundleInfo = require(InGameMenu.Models.BundleInfo)
local AssetInfo = require(InGameMenu.Models.AssetInfo)
local SetBundles = require(InGameMenu.Actions.InspectAndBuy.SetBundles)
local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)

--[[
	Updates the owned status of an asset/bundle if it was purchased through the inspect and buy menu.
]]
local function UpdateOwnedStatus(itemId, itemType)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local state = store:getState()

		if itemType == Enum.AvatarItemType.Asset then
			local currentAssets = state.inspectAndBuy.Assets
			if currentAssets[itemId] then
				local updatedAsset = AssetInfo.fromPurchaseSuccess(itemId)
				store:dispatch(SetAssets({updatedAsset}))
			end
		elseif itemType == Enum.AvatarItemType.Bundle then
			local currentBundles = state.inspectAndBuy.Bundles
			if currentBundles[itemId] then
				local updatedBundle = BundleInfo.fromPurchaseSuccess(itemId)
				store:dispatch(SetBundles({updatedBundle}))
			end
		end
	end)
end

return UpdateOwnedStatus