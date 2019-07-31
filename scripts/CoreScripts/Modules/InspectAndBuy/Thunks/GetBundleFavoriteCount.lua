local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)

local requiredServices = {
	Network,
}

local function keyMapper(bundleId)
	return "inspectAndBuy.getBundleFavoriteCount." ..tostring(bundleId)
end

--[[
	Gets the favorite count of a bundle.
]]
local function GetAssetFavoriteCount(bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		return PerformFetch.Single(keyMapper(bundleId), function(fetchSingleStore)
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