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

-- assetId, number, defualt to 0 for new asset.
-- type, string, the asset type of the asset.
-- name, string, need to be url encoded.
-- description, string, need to be url encoded.
-- genreTypeId, Id, for genre.
-- ispublic, bool
-- allowComments, bool
-- groupId, number, default to nil
-- instance, instance, used in post body
return function(networkInterface, assetid, type, name, description, genreTypeID, ispublic, allowComments, groupId, instances)
	return function(store)
		local function onSuccess(result)
			local newAssetId = result.responseBody

			-- Check the result for uploading
			if (result.responseBody):find("Error") then
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
				store:dispatch(UploadResult(false))
				store:dispatch(NetworkError(result.responseBody))
			else
				-- Change the screen into succuss.
				store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))
				store:dispatch(UploadResult(true))
				store:dispatch(SetAssetId(newAssetId))
			end
		end

		local function onFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
			store:dispatch(UploadResult(false))
			store:dispatch(NetworkError(result.responseBody))
		end

		local fileDataString = SerializeInstances(instances)

		return networkInterface:postUploadAsset(
			assetid,
			type,
			name or "",
			description or "",
			genreTypeID,
			ispublic,
			allowComments,
			groupId,
			fileDataString
		):andThen(onSuccess, onFail)
	end
end
