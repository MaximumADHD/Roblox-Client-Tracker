local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InGameMenu = script.Parent.Parent
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
--[[
	Get Item Details for items in the InspectAndBuy menu
	This is important to do other than just doing GetProductInfo
	since it gives us information on owned status, premium pricing, etc.
]]

local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)
local AssetInfo = require(InGameMenu.Models.AssetInfo)
local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)

local keyMapper = createInspectAndBuyKeyMapper("getItemDetails")

return function(assetId)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local network = services[Network]
		local key = keyMapper(store:getState().inspectAndBuy.StoreId, assetId)

		return PerformFetch.Single(key, function()
			return network.getItemDetails(assetId):andThen(function(results)
				local owned = results.Owned
				local price = results.Price or 0
				local isForSale = results.PriceStatus ~= "Offsale"
				local premiumPricing = results.PremiumPricing

				local newAsset = AssetInfo.fromGetItemDetails(results, owned, price, isForSale, premiumPricing)
				store:dispatch(SetAssets({newAsset}))
			end)
		end)(store):catch(function(err)

		end)
	end)
end