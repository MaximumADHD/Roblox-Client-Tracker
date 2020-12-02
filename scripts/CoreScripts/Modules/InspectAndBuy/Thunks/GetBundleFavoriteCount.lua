local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local FFlagFixInspectAndBuyPerformFetch = require(InspectAndBuyFolder.Flags.FFlagFixInspectAndBuyPerformFetch)

local requiredServices = {
	Network,
}

local keyMapper
if FFlagFixInspectAndBuyPerformFetch then
	keyMapper = createInspectAndBuyKeyMapper("getBundleFavoriteCount")
else
	keyMapper = function(bundleId)
		return "inspectAndBuy.getBundleFavoriteCount." ..tostring(bundleId)
	end
end

--[[
	Gets the favorite count of a bundle.
]]
local function GetAssetFavoriteCount(bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key
		if FFlagFixInspectAndBuyPerformFetch then
			key = keyMapper(store:getState().storeId, bundleId)
		else
			key = keyMapper(bundleId)
		end

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getBundleFavoriteCount(bundleId):andThen(
				function(numFavorites)
					if numFavorites then
						local bundle = BundleInfo.fromGetBundleFavoriteCount(bundleId, numFavorites)
						store:dispatch(SetBundles({bundle}))
					end
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetAssetFavoriteCount