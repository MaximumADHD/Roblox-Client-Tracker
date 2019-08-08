local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)

-- This function can be invoked by assetConfig or loading screen.
return function(networkInterface, assetid, name, description, genres, enableComments, isCopyingAllowed, locale, localName, localDescription)
	return function(store)
		return networkInterface:patchAsset(assetid, name, description, genres, enableComments, isCopyingAllowed, locale, localName, localDescription):andThen(function(result)
			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
			store:dispatch(UploadResult(true))
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(NetworkError(result))
			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
			store:dispatch(UploadResult(false))
		end)
	end
end
