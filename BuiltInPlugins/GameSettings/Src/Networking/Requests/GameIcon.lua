--[[
	Get and set requests for the current game's icon.
]]

local FFlagStudioRenameLocalAssetToFile = settings():GetFFlag("StudioRenameLocalAssetToFile")

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)
local FileUtils = require(Plugin.Src.Util.FileUtils)

-- Deprecated, remove with FFlagStudioRenameLocalAssetToFile
local DEPRECATED_LocalAssetUtils = require(Plugin.Src.Util.LocalAssetUtils)

local ICON_URL_OLD = "places/icons/json?placeId=%d"
local ICON_REQUEST_TYPE_OLD = "www"

local ICON_URL = "v1/universes/%d/icon"
local ICON_REQUEST_TYPE = "develop"

local ICON_CHANGE_URL = "v1/games/%d/icon"
local ICON_CHANGE_REQUEST_TYPE = "publish"

local GameIcon = {}

function GameIcon.AcceptsValue(key)
	return key == "gameIcon"
end

function GameIcon.Get(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(ICON_REQUEST_TYPE, ICON_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)

		return {
			gameIcon = result.imageId and ("rbxassetid://" .. result.imageId) or "None",
			gameIconApproved = result.isApproved or false,
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load game icon.")
		Analytics.onLoadError("Icon")
		return Promise.reject()
	end)
end

function GameIcon.DEPRECATED_Get(rootPlaceId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(ICON_REQUEST_TYPE_OLD, ICON_URL_OLD, rootPlaceId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local imageId = result.ImageId

		return {
			gameIcon = imageId ~= rootPlaceId and ("rbxassetid://" .. imageId) or "None"
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load game icon.")
		Analytics.onLoadError("Icon")
		return Promise.reject()
	end)
end

function GameIcon.Set(universeId, newIcon)
	if newIcon == nil then
		return Promise.resolve()
	end

	local url = Http.BuildRobloxUrl(ICON_CHANGE_REQUEST_TYPE, ICON_CHANGE_URL, universeId)

	local requestInfo
	if FFlagStudioRenameLocalAssetToFile then
		requestInfo = FileUtils.GetAssetPublishRequestInfo(newIcon, url)
	else
		requestInfo = DEPRECATED_LocalAssetUtils.GetAssetPublishRequestInfo(newIcon, url)
	end

	return Http.RequestInternal(requestInfo)
	:catch(function(err)
		warn("Game Settings: Could not save game icon.")
		if err == "HTTP error: 429" then
			return Promise.reject({gameIcon = "UploadingTooQuickly"})
		elseif err == "HTTP error: 400" then
			return Promise.reject({gameIcon = "ImageNotRecognized"})
		end
		Analytics.onSaveError("Icon")
		return Promise.reject()
	end)
end

return GameIcon