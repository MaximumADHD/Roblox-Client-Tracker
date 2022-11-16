--[[
	Given an item and it's type (Asset or Bundle),
	Determine if a user has the item favorited or not
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
local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)

local keyMapper = createInspectAndBuyKeyMapper("getFavoriteForItem")
local function GetFavoriteForItem(itemId, itemType)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().inspectAndBuy.StoreId, itemType, itemId)

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getItemFavorite(itemId, itemType):andThen(
				function(results)
					if itemType == Enum.AvatarItemType.Asset then
						local asset = AssetInfo.fromGetItemFavorite(itemId, results)
						store:dispatch(SetAssets({asset}))
					elseif itemType == Enum.AvatarItemType.Bundle then
						local bundle = BundleInfo.fromGetItemFavorite(itemId, results)
						store:dispatch(SetBundles({bundle}))
					end
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetFavoriteForItem