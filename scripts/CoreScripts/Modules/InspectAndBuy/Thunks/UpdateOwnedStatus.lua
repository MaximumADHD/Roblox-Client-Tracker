local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Constants = require(InspectAndBuyFolder.Constants)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)

--[[
	Updates the owned status of an asset/bundle if it was purchased through the inspect and buy menu.
]]
local function UpdateOwnedStatus(itemId, itemType)
	return Thunk.new(script.Name, {}, function(store, services)
		local state = store:getState()

		if itemType == Constants.ItemType.Asset then
			local currentAssets = state.assets
			if currentAssets[itemId] then
				local updatedAsset = AssetInfo.fromPurchaseSuccess(itemId)
				store:dispatch(SetAssets({updatedAsset}))
			end
		elseif itemType == Constants.ItemType.Bundle then
			local currentBundles = state.bundles
			if currentBundles[itemId] then
				local updatedBundle = BundleInfo.fromPurchaseSuccess(itemId)
				store:dispatch(SetBundles({updatedBundle}))
			end
		end
	end)
end

return UpdateOwnedStatus