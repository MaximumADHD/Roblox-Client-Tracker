--[[
    Reducer for the avatar preview details API. Order of items should preserve the backend order.
]]

local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetAvatarPreviewDetails = require(InspectAndBuyFolder.Actions.SetAvatarPreviewDetails)
local UpdateBulkPuchaseResults = require(InspectAndBuyFolder.Actions.UpdateBulkPuchaseResults)
local AvatarExperienceCommon = require(CorePackages.Workspace.Packages.AvatarExperienceCommon)
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local ItemType = AvatarExperienceCommon.Enums.ItemTypeEnum

type AvatarItem = AvatarExperienceInspectAndBuy.AvatarItem

local FFlagAXEnableFetchAvatarPreview = require(InspectAndBuyFolder.Flags.FFlagAXEnableFetchAvatarPreview)
local FFlagAXEnableInspectAndBuyBulkPurchase =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagAXEnableInspectAndBuyBulkPurchase

export type AvatarPreviewDetails = {
	totalPrice: number?,
	totalValue: number?,
	items: { AvatarItem },
}

return Rodux.createReducer(
	{},
	{
		[UpdateBulkPuchaseResults.name] = if FFlagAXEnableInspectAndBuyBulkPurchase
			then function(state, action: UpdateBulkPuchaseResults.UpdateBulkPuchaseResults)
				local robuxSpent: number = action.result.RobuxSpent
				local oldTotalPrice: number = state.totalPrice
				local updatedTotalPrice = oldTotalPrice - robuxSpent
				return Cryo.Dictionary.join(state, {
					totalPrice = updatedTotalPrice,
				})
			end
			else nil,
		[SetAvatarPreviewDetails.name] = if FFlagAXEnableFetchAvatarPreview
			then function(state, action: SetAvatarPreviewDetails.SetAvatarPreviewDetails)
				local items = {}
				local totalPrice
				local totalValue

				if action.avatarPreviewDetails and action.avatarPreviewDetails.look then
					local look = action.avatarPreviewDetails.look

					totalPrice = look.totalPrice
					totalValue = look.totalValue

					if look.items then
						items = Cryo.List.map(look.items, function(item)
							return {
								id = tostring(item.id),
								itemType = if item.itemType == ItemType.Asset then ItemType.Asset else ItemType.Bundle,
							}
						end)
					end
				end

				return Cryo.Dictionary.join(state, {
					totalPrice = totalPrice,
					totalValue = totalValue,
					items = items,
				})
			end
			else nil,
	} :: { [string]: any }
)
