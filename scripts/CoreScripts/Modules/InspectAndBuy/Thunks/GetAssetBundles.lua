local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local SetBundlesAssetIsPartOf = require(InspectAndBuyFolder.Actions.SetBundlesAssetIsPartOf)
local GetProductInfo = require(InspectAndBuyFolder.Thunks.GetProductInfo)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getAssetBundles")

--[[
	Gets a list of bundles a particular asset belongs to.
]]
local function GetAssetBundles(assetId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, assetId)

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getAssetBundles(assetId):andThen(
				function(results)
					local bundleIdsAssetIsIn = {}
					local newBundles = {}
					for _, bundleInfo in pairs(results.data) do
						local newBundle = BundleInfo.fromGetAssetBundles(bundleInfo)
						table.insert(newBundles, newBundle)
						table.insert(bundleIdsAssetIsIn, tostring(newBundle.bundleId))

						-- determine if the bundle has a UserOutfit
						local hasUserOutfit = false
						for _, asset in pairs(bundleInfo.items) do
							if asset.type == "UserOutfit" then
								hasUserOutfit = true
								break
							end
						end

						-- Get asset info for other assets found in relevant bundles.
						-- This is useful in the case where the bundle has no costumeId
						-- and it must be tried on via the individual assets in TryOnViewport
						if not hasUserOutfit then
							for _, asset in pairs(bundleInfo.items) do
								if not store:getState().assets[asset.id] then
									coroutine.wrap(function()
										store:dispatch(GetProductInfo(asset.id))
									end)()
								end
							end
						end
					end

					store:dispatch(SetBundles(newBundles))
					store:dispatch(SetBundlesAssetIsPartOf(tostring(assetId), bundleIdsAssetIsIn))
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetAssetBundles
