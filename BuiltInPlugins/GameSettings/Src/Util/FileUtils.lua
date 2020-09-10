--!nolint ImplicitReturn
--^ DEVTOOLS-4493

--[[
	Utility functions and constants used for prompting local files from the user.
]]

local DFIntFileMaxSizeBytes = tonumber(settings():GetFVariable("FileMaxSizeBytes"))

local StudioService = game:GetService("StudioService")
local HttpService = game:GetService("HttpService")

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
local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)
local ListDialog = require(Plugin.Src.Components.Dialog.ListDialog)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local FileUtils = {}

local TEXT_SIZE = 22

local function showSingleImageFailedDialog(page, localized, showDialog)
	local DIALOG_PROPS = {
		Size = Vector2.new(343, 145),
		Title = localized:getText("General", "SingleImageDialogHeader"),
		Header = localized:getText("General", "SingleImageDialogBody"),
		Buttons = {
			localized:getText("General", "ReplyOK"),
		},
	}
	showDialog(page, SimpleDialog, DIALOG_PROPS):await()
end

local function showMultiImageFailedDialog(page, localized, showDialog, files)
	local DIALOG_PROPS = {
		Size = Vector2.new(460, 200 + #files * TEXT_SIZE),
		Title = localized:getText("General", "MultiImageDialogHeader"),
		Header = localized:getText("General", "MultiImageDialogBody", {
			-- Convert to MB
			maxThumbnailSize = (DFIntFileMaxSizeBytes / 10^6)
		}),
		Entries = files,
		Buttons = {
			localized:getText("General", "ReplyOK"),
		},
		Wrapped = false,
		Truncate = Enum.TextTruncate.AtEnd,
	}
	showDialog(page, ListDialog, DIALOG_PROPS):await()
end

local function createConfigDataTable(nameWithoutExtension, assetTypeId, description)
	return {
		[nameWithoutExtension] = {
			type = assetTypeId.Name,
			name = nameWithoutExtension,
			description = description
		}
	}
end

local function createFormDataBody(configDataJsonBlob, nameWithoutExtension, extension, fileDataBlob)
	local result =	"--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E\r\n" ..
		"Content-Type: application/json\r\n" ..
		"Content-Disposition: form-data; name=\"config\"; filename=\"config.json\"\r\n" ..
		"\r\n" .. configDataJsonBlob .. "\r\n" ..
		"--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E\r\n" ..
		"Content-Disposition: form-data; name=\"" .. nameWithoutExtension .. "\"; filename=\"" .. nameWithoutExtension .. "." .. extension .. "\"\r\n" ..
		"Content-Type: application/octet-stream\r\n" ..
		"\r\n" .. fileDataBlob .. "\r\n" ..
		"--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E--\r\n"
	return result
end

function FileUtils.PromptForGameIcon(page, localization)
	assert(localization)
	local icon = StudioService:PromptImportFile(DEPRECATED_Constants.IMAGE_TYPES)

	if icon then
		if icon.Size > DFIntFileMaxSizeBytes then
			showSingleImageFailedDialog(page, localization)
		else
			return icon
		end
	end
end

function FileUtils.PromptForThumbnails(page, localization, showDialog)
	assert(localization and showDialog)
	local thumbnails = StudioService:PromptImportFiles(DEPRECATED_Constants.IMAGE_TYPES)

	local rejectedThumbnailNames = {}
	local acceptedThumbnails = {}
	if thumbnails and #thumbnails > 0 then
		for _, thumb in ipairs(thumbnails) do
			if thumb.Size > DFIntFileMaxSizeBytes then
				table.insert(rejectedThumbnailNames, thumb.Name)
			else
				table.insert(acceptedThumbnails, thumb)
			end
		end
		if next(rejectedThumbnailNames) ~= nil then
			showMultiImageFailedDialog(page, localization, showDialog, rejectedThumbnailNames)
		end
		return acceptedThumbnails
	end
end

function FileUtils.GetAssetPublishRequestInfo(asset, url)
	local contents = asset:GetBinaryContents()
	local name = string.lower(asset.Name)
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

function FileUtils.CreatePostV1AssetsUpload(asset, url, assetType)
	local contents = asset:GetBinaryContents()
	local name = string.lower(asset.Name)
	local index = string.find(name, ".", 1, true)
	local extension = string.sub(name, index + 1)
	local nameWithoutExtension = string.sub(asset.Name, 1, index-1)

	local configDataBlob = HttpService:JSONEncode(createConfigDataTable(nameWithoutExtension, Enum.AssetType.Image, ""))
	local form = createFormDataBody(configDataBlob, nameWithoutExtension, extension, contents)

	print(form)

	local requestInfo = {
		Url = url,
		Method = "POST",
		Body = form,
		Headers = {
			["Content-Type"] = "multipart/form-data; boundary=EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E",
		}
	}

	return requestInfo
end

return FileUtils
