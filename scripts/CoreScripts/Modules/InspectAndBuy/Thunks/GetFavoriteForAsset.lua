local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetFavoriteAsset = require(InspectAndBuyFolder.Actions.SetFavoriteAsset)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getFavoriteForAsset")

--[[
	Gets whether the user has favorited an asset or not.
]]
local function GetFavoriteForAsset(assetId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, assetId)

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getFavoriteForAsset(assetId):andThen(function(results)
				-- Endpoint returns 'null' if item isn't favorited.
				if results == "null" then
					store:dispatch(SetFavoriteAsset(tostring(assetId), false))
				else
					store:dispatch(SetFavoriteAsset(tostring(assetId), true))
				end
				store:dispatch(
					SendCounter(Constants.Counters.GetFavoriteForAsset .. Constants.CounterSuffix.RequestSucceeded)
				)
			end, function(err)
				store:dispatch(
					SendCounter(Constants.Counters.GetFavoriteForAsset .. Constants.CounterSuffix.RequestRejected)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(SendCounter(Constants.Counters.GetFavoriteForAsset .. Constants.CounterSuffix.RequestFailed))
		end)
	end)
end

return GetFavoriteForAsset
