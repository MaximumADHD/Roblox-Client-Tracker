local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetFavoriteBundle = require(InspectAndBuyFolder.Actions.SetFavoriteBundle)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getFavoriteForBundle")

--[[
	Gets the favorite count of an asset.
]]
local function GetFavoriteForBundle(bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, bundleId)

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getFavoriteForBundle(bundleId):andThen(function(results)
				-- Endpoint returns 'null' if item isn't favorited.
				if results == "null" then
					store:dispatch(SetFavoriteBundle(tostring(bundleId), false))
				else
					store:dispatch(SetFavoriteBundle(tostring(bundleId), true))
				end
				store:dispatch(
					SendCounter(Constants.Counters.GetFavoriteForBundle .. Constants.CounterSuffix.RequestSucceeded)
				)
			end, function(err)
				store:dispatch(
					SendCounter(Constants.Counters.GetFavoriteForBundle .. Constants.CounterSuffix.RequestRejected)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(
				SendCounter(Constants.Counters.GetFavoriteForBundle .. Constants.CounterSuffix.RequestFailed)
			)
		end)
	end)
end

return GetFavoriteForBundle
