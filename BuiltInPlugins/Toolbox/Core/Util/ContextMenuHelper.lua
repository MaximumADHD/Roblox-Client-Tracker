local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local Url = require(Plugin.Libs.Http.Url)
local Urls = require(Util.Urls)
local DebugFlags = require(Util.DebugFlags)
local Analytics = require(Util.Analytics.Analytics)

local AssetConfigConstants = require(Util.AssetConfigConstants)
local EnumConvert = require(Util.EnumConvert)
local ToolboxUtilities = require(Util.ToolboxUtilities)

local getReportUrl = require(Util.getReportUrl)

local StudioService = game:GetService("StudioService")
local GuiService = game:GetService("GuiService")
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")

local isCli = require(script.Parent.isCli)

local AssetManagerService
-- AssetManagerService is not available in roblox-cli. So we create a mock of the asset manager service functionality here.
if isCli() then
	AssetManagerService = {}
	function AssetManagerService:GetMeshIdFromAssetId()
		return 1
	end
	function AssetManagerService:GetTextureIdFromAssetId()
		return 1
	end
else
	AssetManagerService = game:GetService("AssetManagerService")
end

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
function ContextMenuHelper.tryCreateContextMenu(
	plugin,
	assetId,
	assetTypeId,
	showEditOption,
	localizedContent,
	editAssetFunc,
	isPackageAsset,
	currentCategory,
	trackingAttributes,
	creatorId
)
	local instanceGuid = HttpService:GenerateGUID()
	local menuName = string.format("ToolboxAssetMenu-%s", instanceGuid)

	local menu = plugin:CreatePluginMenu(menuName)

	local localize = localizedContent

	-- add an action to view an asset in browser
	menu:AddNewAction(string.format("OpenInBrowser-%s", instanceGuid), localize.RightClickMenu.ViewInBrowser).Triggered
		:connect(function()
			local targetUrl
			local baseUrl = ToolboxUtilities.getCreatorMarketplaceWebBaseUrl()
			if baseUrl then
				targetUrl = string.format("%sasset/%s", baseUrl, HttpService:urlEncode(assetId))
				if trackingAttributes then
					targetUrl = targetUrl
						.. "?"
						.. Url.makeQueryString({
							keyword = trackingAttributes.SearchKeyword,
							searchId = trackingAttributes.SearchId,
							viewFromStudio = true,
						})
				end
			else
				baseUrl = ContentProvider.BaseUrl
				targetUrl = string.format("%slibrary/%s/asset", baseUrl, HttpService:urlEncode(assetId))
				if trackingAttributes then
					targetUrl = targetUrl .. "?" .. Url.makeQueryString(trackingAttributes)
				end
			end
			GuiService:OpenBrowserWindow(targetUrl)
		end)

	if not showEditOption and creatorId ~= 1 then
		-- User should only be able to report assets they can't edit
		menu:AddNewAction(string.format("Report-%s", instanceGuid), localize.RightClickMenu.Report).Triggered
			:connect(function()
				Analytics.reportAssetClicked(assetId, assetTypeId)

				local baseUrl = ContentProvider.BaseUrl
				local targetUrl = getReportUrl(assetId, assetTypeId)
				GuiService:OpenBrowserWindow(targetUrl)
			end)
	end

	-- only add this action if we have access to copying to clipboard and we aren't looking at a plugin asset
	if assetTypeId ~= Enum.AssetType.Plugin.Value then
		local trueAssetId = assetId
		if assetTypeId == Enum.AssetType.Decal.Value then
			trueAssetId = getImageIdFromDecalId(assetId)
		end

		menu:AddNewAction(string.format("CopyAssetIdToClipboard-%s", instanceGuid), localize.RightClickMenu.CopyAssetID).Triggered
			:connect(function()
				Analytics.onContextMenuClicked("CopyAssetId", assetId, assetTypeId, currentCategory)
				StudioService:CopyToClipboard(trueAssetId)
			end)

		if assetTypeId == Enum.AssetType.MeshPart.Value then
			local meshIdSuccess, meshId =
				pcall(AssetManagerService.GetMeshIdFromAssetId, AssetManagerService, trueAssetId)
			local textureIdSuccess, textureId =
				pcall(AssetManagerService.GetTextureIdFromAssetId, AssetManagerService, trueAssetId)

			if meshIdSuccess then
				menu:AddNewAction(
					string.format("CopyMeshIdToClipboard-%s", instanceGuid),
					localize.RightClickMenu.CopyMeshID
				).Triggered
					:connect(function()
						Analytics.onContextMenuClicked("CopyMeshId", assetId, assetTypeId, currentCategory)
						StudioService:CopyToClipboard(meshId)
					end)
			else
				warn("Failed to get mesh id for asset id " .. trueAssetId)
			end

			-- do not display warning for texture ids because meshes can be valid without a texture
			if textureIdSuccess then
				menu:AddNewAction(
					string.format("CopyTextureIdToClipboard-%s", instanceGuid),
					localize.RightClickMenu.CopyTextureID
				).Triggered
					:connect(function()
						Analytics.onContextMenuClicked("CopyTextureId", assetId, assetTypeId, currentCategory)
						StudioService:CopyToClipboard(textureId)
					end)
			end
		end
	end

	if showEditOption and editAssetFunc then
		if isPackageAsset then
			menu:AddNewAction(
				string.format("PackageDetails-%s", instanceGuid),
				localize.PackagePermissions.RightClickMenu.PackageDetails
			).Triggered
				:connect(function()
					editAssetFunc(
						assetId,
						AssetConfigConstants.FLOW_TYPE.EDIT_FLOW,
						nil,
						EnumConvert.convertAssetTypeValueToEnum(assetTypeId)
					)
				end)
		else
			menu:AddNewAction(string.format("EditAsset-%s", instanceGuid), localize.RightClickMenu.EditAsset).Triggered
				:connect(function()
					editAssetFunc(
						assetId,
						AssetConfigConstants.FLOW_TYPE.EDIT_FLOW,
						nil,
						EnumConvert.convertAssetTypeValueToEnum(assetTypeId)
					)
				end)
		end
	end

	menu:ShowAsync()
	menu:Destroy()

	return menu
end

return ContextMenuHelper
