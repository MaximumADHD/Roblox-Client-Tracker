--[[
	Given an item and its type (Asset or Bundle) along
	with whether it should be favorited or unfavorited,
	use AvatarEditorService to set that favorite status and
	increment or decrement the item's favorite count
]]

local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

local InGameMenu = script.Parent.Parent
local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
local AssetInfo = require(InGameMenu.Models.AssetInfo)
local BundleInfo = require(InGameMenu.Models.BundleInfo)
local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)
local SetBundles = require(InGameMenu.Actions.InspectAndBuy.SetBundles)
local SendInspectAndBuyAnalytics = require(InGameMenu.Utility.SendInspectAndBuyAnalytics)
local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)

local keyMapper = createInspectAndBuyKeyMapper("setFavoriteForItem")

local function SetFavoriteForItem(itemId, itemType, shouldFavorite)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().inspectAndBuy.StoreId, itemType, itemId)

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.setItemFavorite(itemId, itemType, shouldFavorite):andThen(
				function()
					local analyticsFields = {
						itemType = itemType and tostring(itemType) or nil,
						itemID = itemId,
						favorite = shouldFavorite,
						success = true,
						failureReason = "",
					}

					if itemType == Enum.AvatarItemType.Asset then
						local currentFavoriteCount = store:getState().inspectAndBuy.Assets[itemId].numFavorites
						local asset = AssetInfo.fromSetItemFavorite(itemId, shouldFavorite, currentFavoriteCount)
						store:dispatch(SetAssets({asset}))
						analyticsFields.favoriteCount = asset.numFavorites 
					elseif itemType == Enum.AvatarItemType.Bundle then
						local currentFavoriteCount = store:getState().inspectAndBuy.Bundles[itemId].numFavorites
						local bundle = BundleInfo.fromSetItemFavorite(itemId, shouldFavorite, currentFavoriteCount)
						store:dispatch(SetBundles({bundle}))
						analyticsFields.favoriteCount = bundle.numFavorites
					end

					SendInspectAndBuyAnalytics("favoriteItem", store:getState().inspectAndBuy.UserId, analyticsFields)
				end)
		end)(store):catch(function(err)
			local favoriteCount = nil
			if itemType == Enum.AvatarItemType.Asset then
				local asset = store:getState().inspectAndBuy.Assets[itemId]
				favoriteCount = asset and asset.numFavorites or nil 
			elseif itemType == Enum.AvatarItemType.Bundle then
				local bundle = store:getState().inspectAndBuy.Bundles[itemId]
				favoriteCount = bundle and bundle.numFavorites or nil
			end
			local analyticsFields = {
				itemType = itemType and tostring(itemType) or nil,
				itemID = itemId,
				favorite = shouldFavorite,
				success = false,
				failureReason = err,
				favoriteCount = favoriteCount,
			}
			SendInspectAndBuyAnalytics("favoriteItem", store:getState().inspectAndBuy.UserId, analyticsFields)
		end)
	end)
end

return SetFavoriteForItem