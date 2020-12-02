local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local FFlagFixInspectAndBuyPerformFetch = require(InspectAndBuyFolder.Flags.FFlagFixInspectAndBuyPerformFetch)

local requiredServices = {
	Network,
}

local keyMapper
if FFlagFixInspectAndBuyPerformFetch then
	keyMapper = createInspectAndBuyKeyMapper("getAssetFavoriteCount")
else
	keyMapper = function(assetId)
		return "inspectAndBuy.getAssetFavoriteCount." ..tostring(assetId)
	end
end

--[[
	Gets the favorite count of an asset.
]]
local function GetAssetFavoriteCount(assetId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key
		if FFlagFixInspectAndBuyPerformFetch then
			key = keyMapper(store:getState().storeId, assetId)
		else
			key = keyMapper(assetId)
		end

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getAssetFavoriteCount(assetId):andThen(
				function(numFavorites)
					if numFavorites then
						local asset = AssetInfo.fromGetAssetFavoriteCount(assetId, numFavorites)
						store:dispatch(SetAssets({asset}))
					end
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetAssetFavoriteCount