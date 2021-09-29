local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local Url = require(Plugin.Libs.Http.Url)
local Urls = require(Util.Urls)
local DebugFlags = require(Util.DebugFlags)
local Analytics = require(Util.Analytics.Analytics)

local AssetConfigConstants = require(Util.AssetConfigConstants)
local EnumConvert = require(Util.EnumConvert)

local StudioService = game:GetService("StudioService")
local GuiService = game:GetService("GuiService")
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")

local FFlagToolboxAssetMenuGuid = game:GetFastFlag("ToolboxAssetMenuGuid")
local FFlagToolboxTrackReportAction = game:GetFastFlag("ToolboxTrackReportAction")

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
function ContextMenuHelper.tryCreateContextMenu(plugin, assetId, assetTypeId, showEditOption, localizedContent, editAssetFunc, isPackageAsset, trackingAttributes)
	local menuName
	local instanceGuid

	if FFlagToolboxAssetMenuGuid then
		instanceGuid = HttpService:GenerateGUID()
		menuName = string.format("ToolboxAssetMenu-%s", instanceGuid)
	else
		menuName = "ToolboxAssetMenu"
	end

	local menu = plugin:CreatePluginMenu(menuName)

	local localize = localizedContent

	-- add an action to view an asset in browser
	menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("OpenInBrowser-%s", instanceGuid) or "OpenInBrowser", localize.RightClickMenu.ViewInBrowser).Triggered:connect(function()
		local baseUrl = ContentProvider.BaseUrl
		local targetUrl = string.format("%slibrary/%s/asset", baseUrl, HttpService:urlEncode(assetId))
		if trackingAttributes then
			targetUrl = targetUrl .. "?" .. Url.makeQueryString(trackingAttributes)
		end
		GuiService:OpenBrowserWindow(targetUrl)
	end)

	if not showEditOption then
		-- User should only be able to report assets they can't edit
		menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("Report-%s", instanceGuid) or "Report", localize.RightClickMenu.Report).Triggered:connect(function()
			if FFlagToolboxTrackReportAction then
				Analytics.reportAssetClicked(assetId, assetTypeId)
			end

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

		menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("CopyIdToClipboard-%s", instanceGuid) or "CopyIdToClipboard", localize.RightClickMenu.CopyAssetID).Triggered:connect(function()
			StudioService:CopyToClipboard(trueAssetId)
		end)

		menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("CopyURIToClipboard-%s", instanceGuid) or "CopyURIToClipboard", localize.RightClickMenu.CopyAssetURI).Triggered:connect(function()
			StudioService:CopyToClipboard("rbxassetid://"..trueAssetId)
		end)
	end

	if showEditOption and editAssetFunc then
		if isPackageAsset then
			menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("PackageDetails-%s", instanceGuid) or "PackageDetails", localize.PackagePermissions.RightClickMenu.PackageDetails).Triggered:connect(function()
				editAssetFunc(assetId, AssetConfigConstants.FLOW_TYPE.EDIT_FLOW, nil, EnumConvert.convertAssetTypeValueToEnum(assetTypeId))
			end)
		else
			menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("EditAsset-%s", instanceGuid) or "EditAsset", localize.RightClickMenu.EditAsset).Triggered:connect(function()
				editAssetFunc(assetId, AssetConfigConstants.FLOW_TYPE.EDIT_FLOW, nil, EnumConvert.convertAssetTypeValueToEnum(assetTypeId))
			end)
		end
	end

	menu:ShowAsync()
	menu:Destroy()

	return menu
end

return ContextMenuHelper