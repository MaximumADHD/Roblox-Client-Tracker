local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getAssetFavoriteCount")

--[[
	Gets the favorite count of an asset.
]]
local function GetAssetFavoriteCount(assetId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, assetId)

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getAssetFavoriteCount(assetId):andThen(function(numFavorites)
				if numFavorites then
					local asset = AssetInfo.fromGetAssetFavoriteCount(assetId, numFavorites)
					store:dispatch(SetAssets({ asset }))
				end
				store:dispatch(
					SendCounter(Constants.Counters.GetAssetFavoriteCount .. Constants.CounterSuffix.RequestSucceeded)
				)
			end, function(err)
				store:dispatch(
					SendCounter(Constants.Counters.GetAssetFavoriteCount .. Constants.CounterSuffix.RequestRejected)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(
				SendCounter(Constants.Counters.GetAssetFavoriteCount .. Constants.CounterSuffix.RequestFailed)
			)
		end)
	end)
end

return GetAssetFavoriteCount
