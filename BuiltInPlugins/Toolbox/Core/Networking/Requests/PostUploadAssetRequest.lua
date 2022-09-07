--[[
	This file is responsible for hanlding publishing new asset for marketplace.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Util = Plugin.Core.Util
local DebugFlags = require(Util.DebugFlags)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local SerializeInstances = require(Util.SerializeInstances)
local Analytics = require(Util.Analytics.Analytics)
local Urls = require(Plugin.Core.Util.Urls)
local sendResultToKibana = require(Plugin.Packages.Framework).Util.sendResultToKibana

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)
local SetAssetId = require(Actions.SetAssetId)
local SetIsPackage = require(Actions.SetIsPackage)

local TrySaveSalesAndThumbnailRequest = require(Plugin.Core.Networking.Requests.TrySaveSalesAndThumbnailRequest)

local FFlagDebugAssetConfigNetworkError = game:GetFastFlag("DebugAssetConfigNetworkError")
local FFlagUnifyModelPackagePublish3 = game:GetFastFlag("UnifyModelPackagePublish3")

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
	return function(store, services)
		store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
		local newAssetId = nil

		local function onSuccess(result)
			-- Check the result for uploading
			if (result.responseBody):find("Error") then
				store:dispatch(UploadResult(false))
				store:dispatch(NetworkError(result.responseBody))

				Analytics.incrementUploadAssetFailure(publishInfo.assetType)
			else
				newAssetId = result.responseBody
				-- No matter what, save the new assetID first.
				store:dispatch(SetAssetId(newAssetId))
				Analytics.incrementUploadAssetSuccess(publishInfo.assetType)

				-- Then for sales status, no matter if the user is whitelisted or not. As long as it's buyable
				-- we will always need to override the sales status.
				local needToCheckSale = publishInfo.saleStatus

				if FFlagDebugAssetConfigNetworkError then
					publishInfo.assetId = newAssetId
					store:dispatch(TrySaveSalesAndThumbnailRequest(publishInfo))
				elseif needToCheckSale or publishInfo.iconFile then
					publishInfo.assetId = newAssetId
					store:dispatch(TrySaveSalesAndThumbnailRequest(publishInfo))
				else
					-- Then we will try to set the price once the asset is uploaded.
					store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
					store:dispatch(UploadResult(true))
				end
			end
		end

		local function onSerializeFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Lua toolbox: SerializeInstances failed")
			end

			store:dispatch(UploadResult(false))
			store:dispatch(NetworkError(tostring(result)))

			Analytics.incrementUploadAssetFailure(publishInfo.assetType)
		end

		local function onFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(UploadResult(false))
			store:dispatch(NetworkError(result.responseBody))

			Analytics.incrementUploadAssetFailure(publishInfo.assetType)
		end

		if FFlagUnifyModelPackagePublish3 and publishInfo.packageOn then 
			for _, instance in pairs(publishInfo.sourceInstances) do
				if not instance:isDescendantOf(game) then
					warn("Failed to convert to Package: the original instance was deleted")
					return
				end
			end

			local url = Urls.constructPostUploadAssetUrl(
				publishInfo.assetId,
				publishInfo.assetType,
				publishInfo.name,
				publishInfo.description,
				publishInfo.genreTypeID,
				publishInfo.copyOn,
				publishInfo.commentOn,
				publishInfo.groupId
			)

			local function onConvertToPackageResult(result, errorMessage)

				local convertedResponse = {
					["url"] = url,
					["responseCode"] = result and 200 or -1,
					["responseBody"] = errorMessage
				}
				sendResultToKibana(convertedResponse)
				
				if result == false then
					store:dispatch(NetworkError(errorMessage, "uploadRequest"))
					store:dispatch(UploadResult(false))
					Analytics.incrementUploadAssetFailure(publishInfo.assetType)
				else
					local sourceInstance = publishInfo.sourceInstances[1]
					local packageLink = sourceInstance:FindFirstChildOfClass("PackageLink")
					newAssetId = string.gsub(packageLink.PackageId, "rbxassetid://", "")
					-- No matter what, save the new assetID first.
					store:dispatch(SetAssetId(newAssetId))
					store:dispatch(SetIsPackage(true))
					
					Analytics.incrementUploadAssetSuccess(publishInfo.assetType)

					-- Then for sales status, no matter if the user is whitelisted or not. As long as it's buyable
					-- we will always need to override the sales status.
					local needToCheckSale = publishInfo.saleStatus

					if FFlagDebugAssetConfigNetworkError then
						publishInfo.assetId = newAssetId
						store:dispatch(TrySaveSalesAndThumbnailRequest(publishInfo))
					elseif needToCheckSale or publishInfo.iconFile then
						publishInfo.assetId = newAssetId
						store:dispatch(TrySaveSalesAndThumbnailRequest(publishInfo))
					else
						-- Then we will try to set the price once' the asset is uploaded.
						store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
						store:dispatch(UploadResult(true))
					end 
				end
			end

			services.StudioAssetService.OnConvertToPackageResult:Once(onConvertToPackageResult)
			services.StudioAssetService:ConvertToPackageUpload(url, publishInfo.sourceInstances, publishInfo.instances)
			return
		end

		return SerializeInstances(publishInfo.instances, services.StudioAssetService):andThen(function(fileDataString)

			return publishInfo.networkInterface
				:postUploadAsset(
					publishInfo.assetId,
					publishInfo.assetType,
					publishInfo.name,
					publishInfo.description,
					publishInfo.genreTypeID,
					publishInfo.copyOn,
					publishInfo.commentOn,
					publishInfo.groupId,
					fileDataString
				)
				:andThen(onSuccess, onFail)
		end, onSerializeFail)
	end
end
