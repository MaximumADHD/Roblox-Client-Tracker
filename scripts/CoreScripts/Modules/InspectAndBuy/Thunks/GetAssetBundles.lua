local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local SetBundlesAssetIsPartOf = require(InspectAndBuyFolder.Actions.SetBundlesAssetIsPartOf)

local requiredServices = {
	Network,
}

local function keyMapper(assetId)
	return "inspectAndBuy.getAssetBundles." ..tostring(assetId)
end

--[[
	Gets a list of bundles a particular asset belongs to.
]]
local function GetAssetBundles(assetId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		return PerformFetch.Single(keyMapper(assetId), function(fetchSingleStore)
			return network.getAssetBundles(assetId):andThen(
				function(results)
					local bundleIdsAssetIsIn = {}
					local newBundles = {}
					for _, bundleInfo in pairs(results.data) do
						local newBundle = BundleInfo.fromGetAssetBundles(bundleInfo)
						table.insert(newBundles, newBundle)
						table.insert(bundleIdsAssetIsIn, tostring(newBundle.bundleId))
					end

					store:dispatch(SetBundles(newBundles))
					store:dispatch(SetBundlesAssetIsPartOf(tostring(assetId), bundleIdsAssetIsIn))
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetAssetBundles