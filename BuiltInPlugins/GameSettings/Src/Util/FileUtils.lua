--[[
	Utility functions and constants used for prompting local files from the user.
]]

local DFIntFileMaxSizeBytes = tonumber(settings():GetFVariable("FileMaxSizeBytes"))

local FFlagGameSettingsOnlyRejectLargeFiles = settings():GetFFlag("GameSettingsOnlyRejectLargeFiles")

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
local ListDialog = require(Plugin.Src.Components.Dialog.ListDialog)
local Constants = require(Plugin.Src.Util.Constants)
local getLocalizedContent = require(Plugin.Src.Consumers.getLocalizedContent)

local FileUtils = {}

local TEXT_SIZE = 22

local function showSingleImageFailedDialog(page, localized)
	local DIALOG_PROPS = {
		Size = Vector2.new(343, 145),
		Title = localized.SingleImageDialog.Header,
		Header = localized.SingleImageDialog.Body,
		Buttons = localized.SingleImageDialog.Buttons,
	}
	showDialog(page, SimpleDialog, DIALOG_PROPS):await()
end

local function showMultiImageFailedDialog(page, localized, files)
	local DIALOG_PROPS = {
		Size = Vector2.new(460, 200 + #files * TEXT_SIZE),
		Title = localized.MultiImageDialog.Header,
		Header = localized.MultiImageDialog.Body({
			-- Convert to MB
			maxThumbnailSize = (DFIntFileMaxSizeBytes / 10^6)
		}),
		Entries = files,
		Buttons = localized.SingleImageDialog.Buttons,
		Wrapped = false,
		Truncate = Enum.TextTruncate.AtEnd,
	}
	showDialog(page, ListDialog, DIALOG_PROPS):await()
end


function FileUtils.PromptForGameIcon(page)
	local localized = getLocalizedContent(page)
	local icon = StudioService:PromptImportFile(Constants.IMAGE_TYPES)

	if icon then
		if icon.Size > DFIntFileMaxSizeBytes then
			showSingleImageFailedDialog(page, localized)
		else
			return icon
		end
	end
end

function FileUtils.PromptForThumbnails(page)
	local localized = getLocalizedContent(page)
	local thumbnails = StudioService:PromptImportFiles(Constants.IMAGE_TYPES)

	if FFlagGameSettingsOnlyRejectLargeFiles then
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
				showMultiImageFailedDialog(page, localized, rejectedThumbnailNames)
			end
			return acceptedThumbnails
		end
	else
		if thumbnails and #thumbnails > 0 then
			for _, thumb in ipairs(thumbnails) do
				if thumb.Size > DFIntFileMaxSizeBytes then
					showSingleImageFailedDialog(page, localized)
					return
				end
			end
			return thumbnails
		end
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

return FileUtils