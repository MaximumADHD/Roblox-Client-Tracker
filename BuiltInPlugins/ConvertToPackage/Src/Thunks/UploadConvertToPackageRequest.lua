--[[
	This file is responsible for handling the interaction between Studio and the Lua plugin for converting an object to a package.
]]
local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)

local Actions = Plugin.Src.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)

local Urls = require(Plugin.Src.Util.Urls)
local StudioService = game:GetService("StudioService")

-- assetId, number, default to 0 for new asset.
-- name, string, need to be url encoded.
-- description, string, need to be url encoded.
-- genreTypeId, Id, for genre.
-- ispublic, bool
-- allowComments, bool
-- groupId, number, default to nil
return function(assetid, name, description, genreTypeID, ispublic, allowComments, groupId)
	return function(store)
		store:dispatch(SetCurrentScreen(Constants.SCREENS.UPLOADING_ASSET))
		local urlToUse = Urls.constructPostUploadAssetUrl(assetid, "Model", name or "", description or "", genreTypeID, ispublic, allowComments, groupId)

		local conn; conn = StudioService.OnConvertToPackageResult:Connect(function(result, errorMessage)
			conn:Disconnect()
			store:dispatch(UploadResult(result))
			if errorMessage then
				store:dispatch(NetworkError(errorMessage, "uploadRequest"))
			end
			return
		end)
		StudioService:ConvertToPackageUpload(urlToUse)
		return
	end
end
