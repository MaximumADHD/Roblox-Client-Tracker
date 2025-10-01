local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local GetProductInfo = require(InspectAndBuyFolder.Thunks.GetProductInfo)
local GetAssetBundles = require(InspectAndBuyFolder.Thunks.GetAssetBundles)
local GetVersionInfo = require(InspectAndBuyFolder.Thunks.GetVersionInfo)

local requiredServices = {
	Network,
}
--[[
	Get the details of a set of assets.
]]
local function BatchGetAssets(assets)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local assetsRequest = {}
		if assets then
			for _, asset in assets do
				table.insert(assetsRequest, tonumber(asset.assetId))
			end
		end

		return PerformFetch.Single("BatchGetAssets", function()
			return network.getBatchItemDetails(assetsRequest, Enum.AvatarItemType.Asset):andThen(function(results)
				local newAssets: { { assetId: string, parentBundleId: string? } } = {}
				for _, result in results do
					table.insert(newAssets, { assetId = tostring(result.Id) })
				end

				for _, asset in newAssets do
					coroutine.wrap(function()
						store:dispatch(GetProductInfo(asset.assetId))

						if asset.parentBundleId == nil then
							store:dispatch(GetAssetBundles(asset.assetId))
						end

						--[[
                            Seehttps://roblox.atlassian.net/browse/AVBURST-12905
                            This will be changed once backend sends "creating universe" with asset details.
                            Either GetProductInfo will get us the "creating universe" id, or we hit different/better
                            endpoint (like generic "get asset details" endpoint to this id.)
                        --]]
						store:dispatch(GetVersionInfo(asset.assetId))
					end)()
				end

				store:dispatch(SetAssets(newAssets))

				store:dispatch(
					SendCounter(Constants.Counters.BatchGetAssets .. Constants.CounterSuffix.RequestSucceeded)
				)
			end, function(err)
				store:dispatch(
					SendCounter(Constants.Counters.BatchGetAssets .. Constants.CounterSuffix.RequestRejected)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(SendCounter(Constants.Counters.BatchGetAssets .. Constants.CounterSuffix.RequestFailed))
		end)
	end)
end

return BatchGetAssets
