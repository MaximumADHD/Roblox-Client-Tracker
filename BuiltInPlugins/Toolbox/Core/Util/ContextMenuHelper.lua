local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local Url = require(Plugin.Libs.Http.Url)
local Urls = require(Util.Urls)
local DebugFlags = require(Util.DebugFlags)
local Analytics = require(Util.Analytics.Analytics)

local AssetConfigConstants = require(Util.AssetConfigConstants)
local EnumConvert = require(Util.EnumConvert)

local FFlagToolboxShowMeshAndTextureId2 = game:GetFastFlag("ToolboxShowMeshAndTextureId2")
local FFlagToolboxRemoveAssetUris = game:GetFastFlag("ToolboxRemoveAssetUris")
local FFlagToolboxRedirectToLibraryAbuseReport = game:GetFastFlag("ToolboxRedirectToLibraryAbuseReport")

local getReportUrl
if FFlagToolboxRedirectToLibraryAbuseReport then
	getReportUrl = require(Util.getReportUrl)
end

local StudioService = game:GetService("StudioService")
local GuiService = game:GetService("GuiService")
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")

local isCli = require(script.Parent.isCli)

local AssetManagerService
if FFlagToolboxShowMeshAndTextureId2 then
	-- AssetManagerService is not available in roblox-cli. So we create a mock of the asset manager service functionality here.
	if isCli() then
		AssetManagerService = {}
		function AssetManagerService:GetMeshIdFromAssetId() return 1 end
		function AssetManagerService:GetTextureIdFromAssetId() return 1 end
	else
		AssetManagerService = game:GetService("AssetManagerService")
	end
end

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
function ContextMenuHelper.tryCreateContextMenu(plugin, assetId, assetTypeId, showEditOption, localizedContent, editAssetFunc, isPackageAsset, currentCategory, trackingAttributes)
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
			local targetUrl
			if FFlagToolboxRedirectToLibraryAbuseReport then
				targetUrl = getReportUrl(assetId, assetTypeId)
			else
				targetUrl = string.format("%s/abusereport/asset?id=%s", baseUrl, HttpService:urlEncode(assetId))
			end
			GuiService:OpenBrowserWindow(targetUrl)
		end)
	end

	-- only add this action if we have access to copying to clipboard and we aren't looking at a plugin asset
	if assetTypeId ~= Enum.AssetType.Plugin.Value then
		local trueAssetId = assetId
		if assetTypeId == Enum.AssetType.Decal.Value then
			trueAssetId = getImageIdFromDecalId(assetId)
		end

		if FFlagToolboxShowMeshAndTextureId2 then
			menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("CopyAssetIdToClipboard-%s", instanceGuid) or "CopyAssetIdToClipboard", localize.RightClickMenu.CopyAssetID).Triggered:connect(function()
				Analytics.onContextMenuClicked("CopyAssetId", assetId, assetTypeId, currentCategory)
				StudioService:CopyToClipboard(trueAssetId)
			end)

			if not FFlagToolboxRemoveAssetUris then
				menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("CopyAssetUriToClipboard-%s", instanceGuid) or "CopyAssetUriToClipboard", localize.RightClickMenu.CopyAssetURI).Triggered:connect(function()
					Analytics.onContextMenuClicked("CopyAssetUri", assetId, assetTypeId, currentCategory)
					StudioService:CopyToClipboard("rbxassetid://" .. trueAssetId)
				end)
			end

			if assetTypeId == Enum.AssetType.MeshPart.Value then
				local meshIdSuccess, meshId = pcall(AssetManagerService.GetMeshIdFromAssetId, AssetManagerService, trueAssetId)
				local textureIdSuccess, textureId = pcall(AssetManagerService.GetTextureIdFromAssetId, AssetManagerService, trueAssetId)

				if meshIdSuccess then
					menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("CopyMeshIdToClipboard-%s", instanceGuid) or "CopyMeshIdToClipboard", localize.RightClickMenu.CopyMeshID).Triggered:connect(function()
						Analytics.onContextMenuClicked("CopyMeshId", assetId, assetTypeId, currentCategory)
						StudioService:CopyToClipboard(meshId)
					end)
				else
					warn("Failed to get mesh id for asset id " .. trueAssetId)
				end

				-- do not display warning for texture ids because meshes can be valid without a texture
				if textureIdSuccess then
					menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("CopyTextureIdToClipboard-%s", instanceGuid) or "CopyTextureIdToClipboard", localize.RightClickMenu.CopyTextureID).Triggered:connect(function()
						Analytics.onContextMenuClicked("CopyTextureId", assetId, assetTypeId, currentCategory)
						StudioService:CopyToClipboard(textureId)
					end)
				end
			end
		else
			menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("CopyIdToClipboard-%s", instanceGuid) or "CopyIdToClipboard", localize.RightClickMenu.CopyAssetID).Triggered:connect(function()
				StudioService:CopyToClipboard(trueAssetId)
			end)

			if not FFlagToolboxRemoveAssetUris then
				menu:AddNewAction(FFlagToolboxAssetMenuGuid and string.format("CopyURIToClipboard-%s", instanceGuid) or "CopyURIToClipboard", localize.RightClickMenu.CopyAssetURI).Triggered:connect(function()
					StudioService:CopyToClipboard("rbxassetid://"..trueAssetId)
				end)
			end
		end
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