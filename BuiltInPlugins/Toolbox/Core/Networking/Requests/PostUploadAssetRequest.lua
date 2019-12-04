--[[
	This file is responsible for hanlding publishing new asset for marketplace.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Util = Plugin.Core.Util
local DebugFlags = require(Util.DebugFlags)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local SerializeInstances = require(Util.SerializeInstances)
local Analytics = require(Util.Analytics.Analytics)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)
local SetAssetId = require(Actions.SetAssetId)

local TrySaveSalesAndThumbnailRequest = require(Plugin.Core.Networking.Requests.TrySaveSalesAndThumbnailRequest)

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")
local FFlagDebugAssetConfigNetworkError = game:GetFastFlag("DebugAssetConfigNetworkError")

-- publishInfo is a table contains the following:
-- assetId, number, defualt to 0 for new asset.
-- assetType, string, the asset type of the asset.
-- name, string, need to be url encoded.
-- description, string, need to be url encoded.
-- genreTypeId, Id, for genre.
-- copyOn, bool
-- commentOn, bool
-- groupId, number, default to nil
-- instances, instance, used in post body
-- saleStatus, defined in Constants, use to set the sales status for the newly published asset.
-- price, number, only useful when the sales status is set to OnSale.
-- iconFile, userData, used for uploading thumbnail for asset.
return function(publishInfo)
	return function(store)
		store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
		local newAssetId = nil

		local function onSuccess(result)
			-- Check the result for uploading
			if (result.responseBody):find("Error") then
				store:dispatch(UploadResult(false))
				store:dispatch(NetworkError(result.responseBody))

				Analytics.incrementUploadeAssetFailure(publishInfo.assetType)
			else
				newAssetId = result.responseBody
				-- No matter what, save the new assetID first.
				store:dispatch(SetAssetId(newAssetId))
				Analytics.incrementUploadAssetSuccess(publishInfo.assetType)

				-- Then for sales status, no matter if the user is whitelisted or not. As long as it's buyable
				-- we will always need to overrid the sales status.
				local needToCheckSale = publishInfo.saleStatus and store:getState().allowedAssetTypesForRelease[publishInfo.assetType]
				if FFlagDebugAssetConfigNetworkError then
					publishInfo.assetId = newAssetId
					store:dispatch(TrySaveSalesAndThumbnailRequest(publishInfo))
				elseif FFlagEnablePurchasePluginFromLua2 and
					(needToCheckSale or publishInfo.iconFile) then
						publishInfo.assetId = newAssetId
						store:dispatch(TrySaveSalesAndThumbnailRequest(publishInfo))
				else
					-- Then we will try to set the price once' the asset is uploaded.
					store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
					store:dispatch(UploadResult(true))
				end
			end
		end

		local function onFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(UploadResult(false))
			store:dispatch(NetworkError(result.responseBody))

			Analytics.incrementUploadeAssetFailure(publishInfo.assetType)
		end

		local fileDataString = SerializeInstances(publishInfo.instances)

		-- We will only override ispublic when purchase for plugin is enabled.
		local ispublicOverride = publishInfo.copyOn
		if FFlagEnablePurchasePluginFromLua2 then
			if publishInfo.assetType == Enum.AssetType.Plugin.Name then
				ispublicOverride = true
			end
		end

		return publishInfo.networkInterface:postUploadAsset(
			publishInfo.assetId,
			publishInfo.assetType,
			publishInfo.name,
			publishInfo.description,
			publishInfo.genreTypeID,
			ispublicOverride,
			publishInfo.commentOn,
			publishInfo.groupId,
			fileDataString
		):andThen(onSuccess, onFail)
	end
end
