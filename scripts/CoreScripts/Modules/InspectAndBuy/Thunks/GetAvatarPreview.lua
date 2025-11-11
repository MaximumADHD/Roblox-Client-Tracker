local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)
local SetAvatarPreviewDetails = require(InspectAndBuyFolder.Actions.SetAvatarPreviewDetails)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local AvatarExperienceFlags = require(CorePackages.Workspace.Packages.AvatarExperienceFlags)
local AvatarExperienceCommon = require(CorePackages.Workspace.Packages.AvatarExperienceCommon)
local ItemType = AvatarExperienceCommon.Enums.ItemTypeEnum
local GetItemDetails = require(InspectAndBuyFolder.Thunks.GetItemDetails)
local FFlagAXEnableBatchItemDetailsFetchV2 = AvatarExperienceFlags.FFlagAXEnableBatchItemDetailsFetchV2
local InspectAndBuyConstants = AvatarExperienceInspectAndBuy.Constants
local BatchItemDetailsPerformFetchKey = InspectAndBuyConstants.BatchItemDetailsPerformFetchKey
local FFlagAXWrapInspectAndBuyThunksInTasks = require(InspectAndBuyFolder.Flags.FFlagAXWrapInspectAndBuyThunksInTasks)

type BatchItemDetailsResponse = AvatarExperienceInspectAndBuy.BatchItemDetailsResponse
type AvatarPreviewResponse = AvatarExperienceInspectAndBuy.AvatarPreviewResponse
type BatchItemDetailsRequest = AvatarExperienceInspectAndBuy.BatchItemDetailsRequest

local requiredServices = {
	Network,
}
--[[
	Get the preview avatar of a set of assets and bundles.
]]
local function GetAvatarPreview(assets)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local assetsRequest = {}
		if assets then
			for _, asset in assets do
				table.insert(assetsRequest, {
					id = asset.assetId,
					meta = asset.meta,
				})
			end
		end

		return PerformFetch.Single("PreviewAvatar", function()
			return network.getPreviewAvatar(assetsRequest):andThen(function(results: AvatarPreviewResponse)
				store:dispatch(SetAvatarPreviewDetails(results))

				--[[
				    For each item in the returned avatar preview look, fetch additional details for that item
					from catalog API
				]]
				if not FFlagAXEnableBatchItemDetailsFetchV2 and results.look and results.look.items then
					for _, item in results.look.items do
						if FFlagAXWrapInspectAndBuyThunksInTasks then
							task.spawn(function()
								-- dispatch get item calls concurrently
								if item.itemType == ItemType.Asset then
									store:dispatch(GetItemDetails(item.id, Enum.AvatarItemType.Asset))
								elseif item.itemType == ItemType.Bundle then
									store:dispatch(GetItemDetails(item.id, Enum.AvatarItemType.Bundle))
								end
							end)
						else
							if item.itemType == ItemType.Asset then
								store:dispatch(GetItemDetails(item.id, Enum.AvatarItemType.Asset))
							elseif item.itemType == ItemType.Bundle then
								store:dispatch(GetItemDetails(item.id, Enum.AvatarItemType.Bundle))
							end
						end
					end
				end

				--[[
				    Optimized 2.0 path fetches all item details in a single request, instead of fetching one at a time
				]]
				if FFlagAXEnableBatchItemDetailsFetchV2 then
					local batchItemDetailsRequest: { BatchItemDetailsRequest } = {}
					if results.look and results.look.items then
						for _, item in results.look.items do
							table.insert(batchItemDetailsRequest, {
								itemType = if item.itemType == ItemType.Asset
									then Enum.AvatarItemType.Asset.Value
									else Enum.AvatarItemType.Bundle.Value,
								id = tonumber(item.id) or 0,
							})
						end
					end
					PerformFetch.Single(BatchItemDetailsPerformFetchKey, function()
						return network
							.getBatchItemDetailsV2(batchItemDetailsRequest)
							:andThen(function(results: BatchItemDetailsResponse)
								if FFlagAXWrapInspectAndBuyThunksInTasks and results and results.data then
									task.spawn(function()
										local assets = {}
										local bundles = {}
										for _, result in results.data do
											if result.itemType == ItemType.Asset then
												table.insert(assets, AssetInfo.fromGetItemDetailsV2(result))
											elseif result.itemType == ItemType.Bundle then
												table.insert(bundles, BundleInfo.fromGetItemDetailsV2(result))
											end
										end

										store:dispatch(SetAssets(assets))
										store:dispatch(SetBundles(bundles))
									end)
								else
									if results and results.data then
										local assets = {}
										local bundles = {}
										for _, result in results.data do
											if result.itemType == ItemType.Asset then
												table.insert(assets, AssetInfo.fromGetItemDetailsV2(result))
											elseif result.itemType == ItemType.Bundle then
												table.insert(bundles, BundleInfo.fromGetItemDetailsV2(result))
											end
										end

										store:dispatch(SetAssets(assets))
										store:dispatch(SetBundles(bundles))
									end
								end
							end, function(err)
								store:dispatch(
									SendCounter(
										Constants.Counters.BatchGetItemDetails
											.. Constants.CounterSuffix.RequestRejected
									)
								)
							end)
					end)(store)

					store:dispatch(
						SendCounter(Constants.Counters.BatchGetItemDetails .. Constants.CounterSuffix.RequestSucceeded)
					)
				end
			end, function(err)
				store:dispatch(
					SendCounter(Constants.Counters.GetAvatarPreview .. Constants.CounterSuffix.RequestRejected)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(SendCounter(Constants.Counters.GetAvatarPreview .. Constants.CounterSuffix.RequestFailed))
		end)
	end)
end

return GetAvatarPreview
