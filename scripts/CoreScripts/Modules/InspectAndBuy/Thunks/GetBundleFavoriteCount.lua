local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getBundleFavoriteCount")

--[[
	Gets the favorite count of a bundle.
]]
local function GetBundleFavoriteCount(bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, bundleId)

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getBundleFavoriteCount(bundleId):andThen(function(numFavorites)
				if numFavorites then
					local bundle = BundleInfo.fromGetBundleFavoriteCount(bundleId, numFavorites)
					store:dispatch(SetBundles({ bundle }))
				end
				store:dispatch(
					SendCounter(Constants.Counters.GetBundleFavoriteCount .. Constants.CounterSuffix.RequestSucceeded)
				)
			end, function(err)
				store:dispatch(
					SendCounter(Constants.Counters.GetBundleFavoriteCount .. Constants.CounterSuffix.RequestRejected)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(
				SendCounter(Constants.Counters.GetBundleFavoriteCount .. Constants.CounterSuffix.RequestFailed)
			)
		end)
	end)
end

return GetBundleFavoriteCount
