local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)
local SetAvatarPreviewDetails = require(InspectAndBuyFolder.Actions.SetAvatarPreviewDetails)
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local AvatarExperienceCommon = require(CorePackages.Workspace.Packages.AvatarExperienceCommon)
local ItemType = AvatarExperienceCommon.Enums.ItemTypeEnum
local GetItemDetails = require(InspectAndBuyFolder.Thunks.GetItemDetails)

type AvatarPreviewResponse = AvatarExperienceInspectAndBuy.AvatarPreviewResponse

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
				if results.look and results.look.items then
					for _, item in results.look.items do
						if item.itemType == ItemType.Asset then
							store:dispatch(GetItemDetails(item.id, Enum.AvatarItemType.Asset))
						elseif item.itemType == ItemType.Bundle then
							store:dispatch(GetItemDetails(item.id, Enum.AvatarItemType.Bundle))
						end
					end
				end

				store:dispatch(
					SendCounter(Constants.Counters.GetAvatarPreview .. Constants.CounterSuffix.RequestSucceeded)
				)
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
