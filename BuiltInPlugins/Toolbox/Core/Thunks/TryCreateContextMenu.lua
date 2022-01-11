local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local ContextMenuHelper = require(Util.ContextMenuHelper)
local CreatorInfoHelper = require(Util.CreatorInfoHelper)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)
local Category = require(Plugin.Core.Types.Category)

local FFlagToolboxHideReportFlagForCreator = game:GetFastFlag("ToolboxHideReportFlagForCreator")

local function nameForValueInEnum(enum, value)
	local items = enum:GetEnumItems()

	for _, item in ipairs(items) do
		if item.Value == value then
			return item.Name
		end
	end
	return
end

-- TODO: Call tryOpenAssetConfig as a function instead of as parameter (involves refactoring main.server.lua)
return function(assetData, localizedContent, plugin, tryOpenAssetConfig)
	return function(store)
		local asset = assetData.Asset
		local assetId = asset.Id
		local assetTypeId = asset.TypeId

		local state = store:getState()
		local assets = state.assets or {}
		local pageInfo = state.pageInfo or {}

		local manageableAssets = assets.manageableAssets
		local showEditOption = manageableAssets[tostring(assetId)]

		local categoryName = pageInfo.categoryName or Category.DEFAULT.name
		local currentUserPackagePermissions = state.packages.permissionsTable or {}

		local isPackageAsset = Category.categoryIsPackage(categoryName)
		if isPackageAsset then
			local canEditPackage = (currentUserPackagePermissions[assetId] == PermissionsConstants.EditKey or
				currentUserPackagePermissions[assetId] == PermissionsConstants.OwnKey)
			showEditOption = canEditPackage
		end

		local context = assetData.Context
		local creatorTypeEnumValue

		-- TODO STM-406: Refactor creator types to be stored as Enum.CreatorType in Toolbox Rodux
		-- The data for Creations is stored as Enum.CreatorType Values, whereas for other tabs
		-- it is stored as backend enum values with range [1, 2] instead of [0, 1]
		-- We can address this by storing Enum.CreatorType instead of numeric Values and converting to/from backend [1, 2]
		-- values in the network interfacing code.
		if context.toolboxTab == Category.CREATIONS_KEY then
			creatorTypeEnumValue = assetData.Creator.Type
		else
			creatorTypeEnumValue = CreatorInfoHelper.backendToClient(assetData.Creator.Type)
		end

		local trackingAttributes = {
			Category = nameForValueInEnum(Enum.AssetType, assetTypeId),
			SortType = context.sort,
			CreatorId = assetData.Creator.Id,
			CreatorType = nameForValueInEnum(Enum.CreatorType, creatorTypeEnumValue),
			SearchKeyword = context.searchKeyword,
			Position = context.position,
			SearchId = context.searchId,
			ViewInBrowser = true,
		}

		local creatorId = FFlagToolboxHideReportFlagForCreator and (assetData.Creator and assetData.Creator.Id) or nil
		local currentCategory = assetData.Context.currentCategory
		ContextMenuHelper.tryCreateContextMenu(
			plugin,
			assetId,
			assetTypeId,
			showEditOption,
			localizedContent,
			tryOpenAssetConfig, -- TODO: Call as a function instead of as parameter (involves refactoring main.server.lua)
			isPackageAsset,
			currentCategory,
			trackingAttributes,
			creatorId
		)
	end
end
