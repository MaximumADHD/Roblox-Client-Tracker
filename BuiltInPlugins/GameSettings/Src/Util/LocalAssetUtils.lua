--[[
	Utility functions and constants used for prompting local files from the user.
]]

local StudioService = game:GetService("StudioService")
local IMAGE_TYPES = {"jpg", "gif", "png", "tga", "bmp"}
local DIALOG_PROPS = {
	Size = Vector2.new(343, 145),
	Title = "No Image Loaded",
	Header = "Please select a compatible image.",
	Buttons = {"OK"},
}

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

local LocalAssetUtils = {}

function LocalAssetUtils.PromptForGameIcon(page)
	local icon = StudioService:PromptImportLocalAsset("Game Icon", IMAGE_TYPES)
	if icon then
		return icon
	else
		showDialog(page, SimpleDialog, DIALOG_PROPS):await()
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