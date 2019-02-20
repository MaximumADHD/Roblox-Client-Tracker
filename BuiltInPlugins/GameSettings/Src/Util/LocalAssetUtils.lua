--[[
	DEPRECATED, to be deleted when FFlagStudioRenameLocalAssetToFile is removed
	Utility functions and constants used for prompting local files from the user.
]]

local StudioService = game:GetService("StudioService")

--multipart/form-data for uploading images to Roblox endpoints
--Moderation occurs on the web
local FORM_DATA =
	"--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E\r\n" ..
	"Content-Type: image/%s\r\n" ..
	"Content-Disposition: form-data; filename=\"%s\"; name=\"request.files\"\r\n" ..
	"\r\n" ..
	"%s\r\n" ..
	"--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E--\r\n"

local Plugin = script.Parent.Parent.Parent
local showDialog = require(Plugin.Src.Consumers.showDialog)
local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)
local Constants = require(Plugin.Src.Util.Constants)
local getLocalizedContent = require(Plugin.Src.Consumers.getLocalizedContent)

local LocalAssetUtils = {}

local function showImageFailedDialog(page, localized)
	local DIALOG_PROPS = {
		Size = Vector2.new(343, 145),
		Title = localized.ImageDialog.Header,
		Header = localized.ImageDialog.Body,
		Buttons = localized.ImageDialog.Buttons,
	}
	showDialog(page, SimpleDialog, DIALOG_PROPS):await()
end

function LocalAssetUtils.PromptForGameIcon(page)
	local localized = getLocalizedContent(page)
	local icon = StudioService:PromptImportLocalAsset(
		localized.AddPrompts.GameIcon, Constants.IMAGE_TYPES)

	if icon then
		return icon
	else
		showImageFailedDialog(page, localized)
	end
end

function LocalAssetUtils.PromptForThumbnails(page)
	local localized = getLocalizedContent(page)
	local thumbnails = StudioService:PromptImportLocalAssets(
		localized.AddPrompts.Thumbnail, Constants.IMAGE_TYPES)

	if thumbnails and #thumbnails > 0 then
		return thumbnails
	else
		showImageFailedDialog(page, localized)
	end
end

function LocalAssetUtils.GetAssetPublishRequestInfo(asset, url)
	local contents = asset:GetFileContentsBinary()
	local name = string.lower(asset.FileName)
	local index = string.find(name, ".", 1, true)
	local extension = string.sub(name, index + 1)

	local form = string.format(FORM_DATA, extension, name, contents)

	local requestInfo = {
		Url = url,
		Method = "POST",
		Body = form,
		CachePolicy = Enum.HttpCachePolicy.None,
		Headers = {
			["Content-Type"] = "multipart/form-data; boundary=EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E",
		}
	}

	return requestInfo
end

return LocalAssetUtils