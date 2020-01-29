local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local Urls = require(Util.Urls)
local DebugFlags = require(Util.DebugFlags)

local AssetConfigConstants = require(Util.AssetConfigConstants)
local EnumConvert = require(Util.EnumConvert)

local FFlagShowReportOptionInToolbox = game:DefineFastFlag("ShowReportOptionInToolbox", false)

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

-- typeof(assetTypeId) == number
function ContextMenuHelper.tryCreateContextMenu(plugin, assetId, assetTypeId, showEditOption, localizedContent, editAssetFunc, isPackageAsset)
	local menu = plugin:CreatePluginMenu("ToolboxAssetMenu")

	local localize = localizedContent

-- add an action to view an asset in browser
	menu:AddNewAction("OpenInBrowser", localize.RightClickMenu.ViewInBrowser).Triggered:connect(function()
		local baseUrl = ContentProvider.BaseUrl
		local targetUrl = string.format("%s/library/%s/asset", baseUrl, HttpService:urlEncode(assetId))
		GuiService:OpenBrowserWindow(targetUrl)
	end)

	if FFlagShowReportOptionInToolbox and not showEditOption then
		-- User should only be able to report assets they can't edit
		menu:AddNewAction("Report", localize.RightClickMenu.Report).Triggered:connect(function()
			local baseUrl = ContentProvider.BaseUrl
			local targetUrl = string.format("%s/abusereport/asset?id=%s", baseUrl, HttpService:urlEncode(assetId))
			GuiService:OpenBrowserWindow(targetUrl)
		end)
	end

	-- only add this action if we have access to copying to clipboard and we aren't looking at a plugin asset
	if assetTypeId ~= Enum.AssetType.Plugin.Value then
		local trueAssetId = assetId
		if assetTypeId == Enum.AssetType.Decal.Value then
			trueAssetId = getImageIdFromDecalId(assetId)
		end

		menu:AddNewAction("CopyIdToClipboard", localize.RightClickMenu.CopyAssetID).Triggered:connect(function()
			StudioService:CopyToClipboard(trueAssetId)
		end)

		menu:AddNewAction("CopyURIToClipboard", localize.RightClickMenu.CopyAssetURI).Triggered:connect(function()
			StudioService:CopyToClipboard("rbxassetid://"..trueAssetId)
		end)
	end

	if showEditOption and editAssetFunc then
		if isPackageAsset then
			menu:AddNewAction("PackageDetails", localize.PackagePermissions.RightClickMenu.PackageDetails).Triggered:connect(function()
				editAssetFunc(assetId, AssetConfigConstants.FLOW_TYPE.EDIT_FLOW, nil, EnumConvert.convertAssetTypeValueToEnum(assetTypeId))
			end)
		else
			menu:AddNewAction("EditAsset", localize.RightClickMenu.EditAsset).Triggered:connect(function()
				editAssetFunc(assetId, AssetConfigConstants.FLOW_TYPE.EDIT_FLOW, nil, EnumConvert.convertAssetTypeValueToEnum(assetTypeId))
			end)
		end
	end

	menu:ShowAsync()
	menu:Destroy()

	return menu
end

return ContextMenuHelper