--[[
	Gets a list of bundles a particular asset belongs to.
]]

local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InGameMenu = script.Parent.Parent
local BundleInfo = require(InGameMenu.Models.BundleInfo)
local SetBundles = require(InGameMenu.Actions.InspectAndBuy.SetBundles)
local SetBundlesAssetIsPartOf = require(InGameMenu.Actions.InspectAndBuy.SetBundlesAssetIsPartOf)
local GetProductInfo = require(InGameMenu.Thunks.GetProductInfo)

local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)
local keyMapper = createInspectAndBuyKeyMapper("getAssetBundles")

local function GetAssetBundles(assetId)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().inspectAndBuy.StoreId, assetId)

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getAssetBundles(assetId):andThen(
				function(results)
					local data = results.data
					local bundleIdsAssetIsIn = {}
					local newBundles = {}

					for _, bundleInfo in pairs(data) do
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
								if not store:getState().inspectAndBuy.Assets[asset.id] then
									coroutine.wrap(function()
										store:dispatch(GetProductInfo(tostring(asset.id)))
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