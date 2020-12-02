local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local SetFavoriteAsset = require(InspectAndBuyFolder.Actions.SetFavoriteAsset)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local FFlagFixInspectAndBuyPerformFetch = require(InspectAndBuyFolder.Flags.FFlagFixInspectAndBuyPerformFetch)

local requiredServices = {
	Network,
	Analytics,
}

local keyMapper
if FFlagFixInspectAndBuyPerformFetch then
	keyMapper = createInspectAndBuyKeyMapper("deleteFavoriteForAsset")
else
	keyMapper = function(assetId)
		return "inspectAndBuy.deleteFavoriteForAsset." ..tostring(assetId)
	end
end

--[[
	Unfavorites an asset.
]]
local function DeleteFavoriteForAsset(assetId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local analytics = services[Analytics]

		local key
		if FFlagFixInspectAndBuyPerformFetch then
			key = keyMapper(store:getState().storeId, assetId)
		else
			key = keyMapper(assetId)
		end

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.deleteFavoriteForAsset(assetId):andThen(
				function()
					-- If Promise was resolved, the delete was a success!
					store:dispatch(SetFavoriteAsset(assetId, false))
					local currentFavoriteCount = store:getState().assets[assetId].numFavorites
					local updatedAssetInformation = AssetInfo.fromGetAssetFavoriteCount(assetId, currentFavoriteCount - 1)
					store:dispatch(SetAssets({updatedAssetInformation}))
					analytics.reportFavoriteItem("Asset", assetId, false, true, "", currentFavoriteCount - 1)
					return Promise.resolve()
				end,
				function(err)
					return Promise.reject(tostring(err.StatusMessage))
				end)
		end)(store):catch(function(err)
			local favoriteCount = store:getState().assets[assetId].numFavorites
			analytics.reportFavoriteItem("Asset", assetId, false, false, err, favoriteCount)
		end)
	end)
end

return DeleteFavoriteForAsset