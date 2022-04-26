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

-- assetId, number, defualt to 0 for new asset.
-- type, string, the asset type of the asset.
-- instance, instance, used in post body
return function(networkInterface, assetid, type, instances)
	return function(store, services)
		local function onSuccess(result)
			local newAssetId = result.responseBody

			-- Change the screen into success.
			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
			store:dispatch(SetAssetId(newAssetId))
			store:dispatch(UploadResult(true))
		end

		local function onSerializeFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Lua toolbox: SerializeInstances failed")
			end

			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
			store:dispatch(NetworkError(tostring(result)))
			store:dispatch(UploadResult(false))
		end

		local function onFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
			store:dispatch(NetworkError(result.responseBody))
			store:dispatch(UploadResult(false))
		end

		return SerializeInstances(instances, services.StudioAssetService):andThen(function(fileDataString)
			return networkInterface:postOverrideAsset(assetid, type, fileDataString):andThen(onSuccess, onFail)
		end, onSerializeFail)
	end
end
