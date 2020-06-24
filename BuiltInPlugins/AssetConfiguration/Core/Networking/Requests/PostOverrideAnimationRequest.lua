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
-- instance, instance, used in post body
return function(networkInterface, assetid, instance)
	return function(store)
		local function onSuccess(result)
			-- id in result is asset version id, which is not useful for us, return the original asset id if successful
			if not result or tostring(result) == '0' or result:find("Error") then
				store:dispatch(UploadResult(false))
				store:dispatch(NetworkError(assetid))
			else
				store:dispatch(SetAssetId(assetid))
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				store:dispatch(UploadResult(true))
			end
		end

		local function onFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
			store:dispatch(NetworkError(result))
			store:dispatch(UploadResult(false))
		end

		local fileDataString = SerializeInstances(instance)

		return networkInterface:postOverrideAnimation(assetid, fileDataString):andThen(onSuccess, onFail)
	end
end
