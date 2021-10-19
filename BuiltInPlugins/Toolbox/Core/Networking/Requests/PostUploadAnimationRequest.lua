--[[
	This file is responsible for hanlding publishing new animation assets.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Util = Plugin.Core.Util
local DebugFlags = require(Util.DebugFlags)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local SerializeInstances_Deprecated = require(Util.SerializeInstances_Deprecated)
local SerializeInstances = require(Util.SerializeInstances)
local Analytics = require(Util.Analytics.Analytics)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)
local SetAssetId = require(Actions.SetAssetId)

local FFlagStudioSerializeInstancesOffUIThread = game:GetFastFlag("StudioSerializeInstancesOffUIThread")

-- publishInfo is a table contains the following:
-- assetId, number, defualt to 0 for new asset.
-- assetType, string, the asset type of the asset.
-- name, string, need to be url encoded.
-- description, string, need to be url encoded.
-- groupId, number, default to nil
-- instances, instance, used in post body
return function(publishInfo)
	return function(store, services)
		store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))

		local function onSuccess(result)
			if not result or tostring(result) == '0' or result:find("Error") then
				store:dispatch(UploadResult(false))
				store:dispatch(NetworkError(result))

				Analytics.incrementUploadAssetFailure(publishInfo.assetType)
			else
				store:dispatch(SetAssetId(result))
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				Analytics.incrementUploadAssetSuccess(publishInfo.assetType)
				store:dispatch(UploadResult(true))
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
			store:dispatch(NetworkError(result))

			Analytics.incrementUploadAssetFailure(publishInfo.assetType)
		end

		if FFlagStudioSerializeInstancesOffUIThread then
			return SerializeInstances(publishInfo.instances, services.StudioAssetService):andThen(function(fileDataString)
				return publishInfo.networkInterface:postUploadAnimation(
					publishInfo.assetId,
					publishInfo.name,
					publishInfo.description,
					publishInfo.groupId,
					fileDataString
				):andThen(onSuccess, onFail)
			end, onSerializeFail)
		else
			local fileDataString = SerializeInstances_Deprecated(publishInfo.instance)

			return publishInfo.networkInterface:postUploadAnimation(
				publishInfo.assetId,
				publishInfo.name,
				publishInfo.description,
				publishInfo.groupId,
				fileDataString
			):andThen(onSuccess, onFail)
		end
	end
end
