local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local Urls = require(Util.Urls)
local DebugFlags = require(Util.DebugFlags)

local FFlagEnableCopyToClipboard = settings():GetFFlag("EnableCopyToClipboard")

local StudioService = game:GetService("StudioService")
local GuiService = game:GetService("GuiService")
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")

local ContextMenuHelper = {}

local function getImageIdFromDecalId(decalId)
	local tbl = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(decalId)
		if DebugFlags.shouldDebugUrls() then
			print(("Inserting decal %s"):format(url))
		end
		tbl = game:GetObjects(url)
	end)

	if success and tbl and tbl[1] then
		local decal = tbl[1]
		return decal.Texture:match("%d+")
	else
		return 0
	end
end

function ContextMenuHelper.tryCreateContextMenu(plugin, assetId, assetTypeId)
	local menu = plugin:CreatePluginMenu("ToolboxAssetMenu")

	-- only add this action if we have access to copying to clipboard
	if FFlagEnableCopyToClipboard then
		local trueAssetId = assetId
		if assetTypeId == Enum.AssetType.Decal.Value then
			trueAssetId = getImageIdFromDecalId(assetId)
		end

		menu:AddNewAction("CopyIdToClipboard", "Copy Asset Id").Triggered:connect(function()
			StudioService:CopyToClipboard(trueAssetId)
		end)

		menu:AddNewAction("CopyURIToClipboard", "Copy Asset URI").Triggered:connect(function()
			StudioService:CopyToClipboard("rbxassetid://"..trueAssetId)
		end)
	end

	-- add an action to view an asset in browser
	menu:AddNewAction("OpenInBrowser", "View In Browser").Triggered:connect(function()
		local baseUrl = ContentProvider.BaseUrl
		local targetUrl = string.format("%s/library/%s/asset", baseUrl, HttpService:urlEncode(assetId))
		GuiService:OpenBrowserWindow(targetUrl)
	end)

	menu:ShowAsync()
	menu:Destroy()

	return menu
end

return ContextMenuHelper