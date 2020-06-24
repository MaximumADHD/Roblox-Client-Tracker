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
	return function(store)
		local function onSuccess(result)
			local newAssetId = result.responseBody

			-- Change the screen into success.
			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
			store:dispatch(SetAssetId(newAssetId))
			store:dispatch(UploadResult(true))
		end

		local function onFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
			store:dispatch(NetworkError(result.responseBody))
			store:dispatch(UploadResult(false))
		end

		local fileDataString = SerializeInstances(instances)

		return networkInterface:postOverrideAsset(assetid, type, fileDataString):andThen(onSuccess, onFail)
	end
end
