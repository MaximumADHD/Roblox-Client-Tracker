--[[
	This file is responsible for handling the interaction between Studio and the Lua plugin for converting an object to a package.
]]

local FFlagFixConvertToPackageHang = game:DefineFastFlag("FixConvertToPackageHang", false)

local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)

local Actions = Plugin.Src.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)

-- Remove with FFlagFixConvertToPackageHang
local Promise = require(Plugin.Packages.Http.Promise)

local Urls = require(Plugin.Src.Util.Urls)
local StudioService = game:GetService("StudioService")


-- Remove with FFlagFixConvertToPackageHang
local function createConvertToPackageUploadPromise(urlToUse)
	assert(not FFlagFixConvertToPackageHang)
	local uploadPromise = Promise.new(function(resolve, reject)
		spawn(function()
			local result, errorMessage = StudioService.OnConvertToPackageResult:wait()
			if result then
				resolve()
			else
				reject(errorMessage)
			end
		end)
	end)
	StudioService:ConvertToPackageUpload(urlToUse)
	return uploadPromise
end

-- assetId, number, default to 0 for new asset.
-- name, string, need to be url encoded.
-- description, string, need to be url encoded.
-- genreTypeId, Id, for genre.
-- ispublic, bool
-- allowComments, bool
-- groupId, number, default to nil
return function(assetid, name, description, genreTypeID, ispublic, allowComments, groupId)
	return function(store)
		-- Remove with FFlagFixConvertToPackageHang
		local function onSuccess()
			assert(not FFlagFixConvertToPackageHang)
			store:dispatch(UploadResult(true))
		end

		-- Remove with FFlagFixConvertToPackageHang
		local function onFailure(errorMessage)
			assert(not FFlagFixConvertToPackageHang)
			store:dispatch(UploadResult(false))
			store:dispatch(NetworkError(errorMessage, "uploadRequest"))
		end

		store:dispatch(SetCurrentScreen(Constants.SCREENS.UPLOADING_ASSET))
		local urlToUse = Urls.constructPostUploadAssetUrl(assetid, "Model", name or "", description or "", genreTypeID, ispublic, allowComments, groupId)

		if FFlagFixConvertToPackageHang then
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
		else
			return createConvertToPackageUploadPromise(urlToUse):andThen(onSuccess, onFailure)
		end
	end
end
