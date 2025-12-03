--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.Packages.Promise)
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local SetFavoriteBundle = require(InspectAndBuyFolder.Actions.SetFavoriteBundle)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
	Analytics,
}

local keyMapper = createInspectAndBuyKeyMapper("deleteFavoriteForBundle")

--[[
	Unfavorites a bundle.
]]
local function DeleteFavoriteForBundle(bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local analytics = services[Analytics]

		local key = keyMapper(store:getState().storeId, bundleId)

		return PerformFetch.Single(key, function()
			return network.deleteFavoriteForBundle(bundleId):andThen(function()
				-- If Promise was resolved, the delete was a success!
				store:dispatch(SetFavoriteBundle(bundleId, false))
				local currentFavoriteCount = store:getState().bundles[bundleId].numFavorites
				local updatedAssetInformation =
					BundleInfo.fromGetBundleFavoriteCount(bundleId, currentFavoriteCount - 1)
				store:dispatch(SetBundles({ updatedAssetInformation }))
				analytics.reportFavoriteItem("Bundle", bundleId, false, true, "", currentFavoriteCount - 1)
				store:dispatch(
					SendCounter(Constants.Counters.DeleteFavoriteForBundle .. Constants.CounterSuffix.RequestSucceeded)
				)
				return Promise.resolve()
			end, function(err)
				store:dispatch(
					SendCounter(Constants.Counters.DeleteFavoriteForBundle .. Constants.CounterSuffix.RequestRejected)
				)
				return Promise.reject(tostring(err.StatusMessage))
			end)
		end)(store):catch(function(err)
			local favoriteCount = store:getState().bundles[bundleId].numFavorites
			analytics.reportFavoriteItem("Bundle", bundleId, false, false, err, favoriteCount)
			store:dispatch(
				SendCounter(Constants.Counters.DeleteFavoriteForBundle .. Constants.CounterSuffix.RequestFailed)
			)
		end)
	end)
end

return DeleteFavoriteForBundle
