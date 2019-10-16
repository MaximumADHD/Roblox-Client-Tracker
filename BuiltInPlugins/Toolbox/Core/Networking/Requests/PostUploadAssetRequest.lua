--[[
	This file is responsible for hanlding publishing new asset for marketplace.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)
local SetAssetId = require(Actions.SetAssetId)

local Util = Plugin.Core.Util
local SerializeInstances = require(Util.SerializeInstances)
local Analytics = require(Util.Analytics.Analytics)
local Constants = require(Util.Constants)

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")

-- assetId, number, defualt to 0 for new asset.
-- assetType, string, the asset type of the asset.
-- name, string, need to be url encoded.
-- description, string, need to be url encoded.
-- genreTypeId, Id, for genre.
-- ispublic, bool
-- allowComments, bool
-- groupId, number, default to nil
-- instance, instance, used in post body
-- saleStatus, defined in Constants, use to set the sales status for the newly published asset.
-- price, number, only useful when the sales status is set to OnSale.
return function(networkInterface, assetid, assetType, name, description, genreTypeID, ispublic, allowComments, groupId, instances, saleStatus, price)
	return function(store)
		local function onPriceSetSuccess(result)
			-- Update the sale status and price
			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
			store:dispatch(UploadResult(true))
		end

		local function onPriceSetFail(result)
			-- DEVTOOLS-3120
			-- This this case, we still consider the upload succuss.
			-- We will need to tell user failed to set the price.
		end

		local function onSuccess(result)
			local newAssetId = result.responseBody

			-- Check the result for uploading
			if (result.responseBody):find("Error") then
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
				store:dispatch(UploadResult(false))
				store:dispatch(NetworkError(result.responseBody))

				Analytics.incrementUploadeAssetFailure(assetType)
			else
				-- Then we will try to set the price once' the asset is uploaded.
				if FFlagEnablePurchasePluginFromLua2 and assetType == Enum.AssetType.Plugin.Name then
					-- Default sales status is unknown. But for plugin, if it's unknown, we will be putting it offsale.
					local salesStatusOverride = saleStatus
					if (not saleStatus) or saleStatus == Constants.AssetStatus.Unknown then
						salesStatusOverride = Constants.AssetStatus.OffSale
					end

					store:dispatch(SetAssetId(newAssetId))
					Analytics.incrementUploadAssetSuccess(assetType)

					networkInterface:configureSales(newAssetId, salesStatusOverride, price):andThen(onPriceSetSuccess, onPriceSetFail)
				else
					-- Change the screen into succuss.
					store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
					store:dispatch(UploadResult(true))
					store:dispatch(SetAssetId(newAssetId))

					Analytics.incrementUploadAssetSuccess(assetType)
				end
			end
		end

		local function onFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
			store:dispatch(UploadResult(false))
			store:dispatch(NetworkError(result.responseBody))

			Analytics.incrementUploadeAssetFailure(assetType)
		end

		local fileDataString = SerializeInstances(instances)

		-- We will override ispublic if it's a purchasable asset.
		local ispublicOverride = ispublic
		-- Only Plugin can be purchased now.
		if FFlagEnablePurchasePluginFromLua2 and assetType == Enum.AssetType.Plugin.Name then
			ispublicOverride = false
		end

		return networkInterface:postUploadAsset(
			assetid,
			assetType,
			name or "",
			description or "",
			genreTypeID,
			ispublicOverride,
			allowComments,
			groupId,
			fileDataString
		):andThen(onSuccess, onFail)
	end
end
