local FFlagOnlyWhitelistedPluginsInStudio = settings():GetFFlag("OnlyWhitelistedPluginsInStudio")
local FFlagToolboxShowGroupCreations = game:DefineFastFlag("ToolboxShowGroupCreations", false)
local FFlagFixToolboxPluginScaling = game:DefineFastFlag("FixToolboxPluginScaling", false)
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")
local FFlagEnableToolboxVideos = game:GetFastFlag("EnableToolboxVideos")
local FFlagToolboxUseNewPluginEndpoint = settings():GetFFlag("ToolboxUseNewPluginEndpoint")
local FFlagFixGroupPackagesCategoryInToolbox = game:DefineFastFlag("FixGroupPackagesCategoryInToolbox", false)
local FFlagToolboxDisableMarketplaceAndRecentsForLuobu = game:GetFastFlag("ToolboxDisableMarketplaceAndRecentsForLuobu")

local Plugin = script.Parent.Parent.Parent
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local AssetConfigUtil = require(Plugin.Core.Util.AssetConfigUtil)
local Cryo = require(Plugin.Libs.Cryo)

local RobloxAPI = require(Plugin.Libs.Framework).RobloxAPI

local Category = {}

Category.OwnershipType = {
	FREE = 0,
	MY = 1,
	RECENT = 2,
	GROUP = 3
}

Category.AssetType = {
	MODEL = 0,
	DECAL = 1,
	MESH = 2,
	MESHPART = 3,
	AUDIO = 4,
	PACKAGE = 5,
	PLUGIN = 6,
	HAT = 7,
	TEE_SHIRT = 8,
	SHIRT = 9,
	PANTS = 10,
	HAIR_ACCESSORY = 11,
	FACE_ACCESSORY = 12,
	NECK_ACCESSORY = 13,
	SHOULDER_ACCESSORY = 14,
	FRONT_ACCESSORY = 15,
	BACK_ACCESSORY = 16,
	WAIST_ACCESSORY = 17,
}

Category.ToolboxAssetTypeToEngine = {
	[Category.AssetType.MODEL] = Enum.AssetType.Model,
	[Category.AssetType.DECAL] = Enum.AssetType.Decal,
	[Category.AssetType.MESH] = Enum.AssetType.Mesh,
	[Category.AssetType.MESHPART] = Enum.AssetType.MeshPart,
	[Category.AssetType.AUDIO] = Enum.AssetType.Audio,
	[Category.AssetType.PACKAGE] = Enum.AssetType.Package,
	[Category.AssetType.PLUGIN] = Enum.AssetType.Plugin,
	[Category.AssetType.HAT] = Enum.AssetType.Hat,
	[Category.AssetType.TEE_SHIRT] = Enum.AssetType.TeeShirt,
	[Category.AssetType.SHIRT] = Enum.AssetType.Shirt,
	[Category.AssetType.PANTS] = Enum.AssetType.Pants,
	[Category.AssetType.HAIR_ACCESSORY] = Enum.AssetType.HairAccessory,
	[Category.AssetType.FACE_ACCESSORY] = Enum.AssetType.FaceAccessory,
	[Category.AssetType.NECK_ACCESSORY] = Enum.AssetType.NeckAccessory,
	[Category.AssetType.SHOULDER_ACCESSORY] = Enum.AssetType.ShoulderAccessory,
	[Category.AssetType.FRONT_ACCESSORY] = Enum.AssetType.FrontAccessory,
	[Category.AssetType.BACK_ACCESSORY] = Enum.AssetType.BackAccessory,
	[Category.AssetType.WAIST_ACCESSORY] = Enum.AssetType.WaistAccessory,
}
if FFlagEnableToolboxVideos then
	Category.AssetType.VIDEO = 18
	Category.ToolboxAssetTypeToEngine[Category.AssetType.VIDEO] = Enum.AssetType.Video
end

Category.FREE_MODELS = {name = "FreeModels", category = "FreeModels",
	ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.MODEL}
Category.FREE_DECALS = {name = "FreeDecals", category = "FreeDecals",
	ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.DECAL}
Category.FREE_MESHES = {name = "FreeMeshes", category = "FreeMeshes",
	ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.MESH}
Category.FREE_AUDIO = {name = "FreeAudio", category = "FreeAudio",
	ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.AUDIO}
Category.FREE_PLUGINS = {name = "FreePlugins", category = "FreePlugins",
	ownershipType = Category.OwnershipType.FREE, Category.AssetType.PLUGIN}
Category.WHITELISTED_PLUGINS = {name = "PaidPlugins", category = "WhitelistedPlugins",
	ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.PLUGIN}

Category.MY_MODELS = {name = "MyModels", category = "MyModelsExceptPackage",
	ownershipType = Category.OwnershipType.MY, assetType = Category.AssetType.MODEL}
Category.MY_DECALS = {name = "MyDecals", category = "MyDecals",
	ownershipType = Category.OwnershipType.MY, assetType = Category.AssetType.DECAL}
Category.MY_MESHES = {name = "MyMeshes", category = "MyMeshes",
	ownershipType = Category.OwnershipType.MY, assetType = Category.AssetType.MESH}
Category.MY_AUDIO = {name = "MyAudio", category = "MyAudio",
	ownershipType = Category.OwnershipType.MY, assetType = Category.AssetType.AUDIO}
Category.MY_PLUGINS = {name = "MyPlugins", category = "MyPlugins",
	ownershipType = Category.AssetType.PLUGIN, assetType = Category.AssetType.PLUGIN}

if FFlagEnableToolboxVideos then
	Category.MARKETPLACE_VIDEOS = {name = "FreeVideo", category = "FreeVideo",
		ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.VIDEO}
	Category.MY_VIDEOS = {name = "MyVideo", category = "MyVideo",
		ownershipType = Category.AssetType.MY, assetType = Category.AssetType.VIDEO}
	Category.RECENT_VIDEO = {name = "RecentVideo", category = "RecentVideo",
		ownershipType = Category.OwnershipType.VIDEO, assetType = Category.AssetType.VIDEO}
end

Category.RECENT_MODELS = {name = "RecentModels", category = "RecentModels",
	ownershipType = Category.OwnershipType.RECENT, assetType = Category.AssetType.MODEL}
Category.RECENT_DECALS = {name = "RecentDecals", category = "RecentDecals",
	ownershipType = Category.OwnershipType.RECENT, assetType = Category.AssetType.DECAL}
Category.RECENT_MESHES = {name = "RecentMeshes", category = "RecentMeshes",
	ownershipType = Category.OwnershipType.RECENT, assetType = Category.AssetType.MESH}
Category.RECENT_AUDIO = {name = "RecentAudio", category = "RecentAudio",
	ownershipType = Category.OwnershipType.RECENT, assetType = Category.AssetType.AUDIO}

Category.GROUP_MODELS = {name = "GroupModels", category = "GroupModelsExceptPackage",
	ownershipType = Category.OwnershipType.GROUP, assetType = Category.AssetType.MODEL}
Category.GROUP_DECALS = {name = "GroupDecals", category = "GroupDecals",
	ownershipType = Category.OwnershipType.GROUP, assetType = Category.AssetType.DECAL}
Category.GROUP_MESHES = {name = "GroupMeshes", category = "GroupMeshes",
	ownershipType = Category.OwnershipType.GROUP, assetType = Category.AssetType.MESH}
Category.GROUP_AUDIO = {name = "GroupAudio", category = "GroupAudio",
	ownershipType = Category.OwnershipType.GROUP, assetType = Category.AssetType.AUDIO}
Category.GROUP_PLUGINS = {name = "GroupPlugins", category = "GroupPlugins",
	ownershipType = Category.OwnershipType.GROUP, assetType = Category.AssetType.PLUGIN}

Category.MY_PACKAGES = {name = "MyPackages", category = "MyPackages",
	ownershipType = Category.OwnershipType.MY, assetType = Category.AssetType.PACKAGE}
Category.GROUP_PACKAGES = {name = "GroupPackages", category = "GroupPackages",
	ownershipType = Category.OwnershipType.GROUP, assetType = Category.AssetType.PACKAGE}

Category.CREATIONS_DEVELOPMENT_SECTION_DIVIDER = {name = "CreationsDevelopmentSectionDivider", selectable=false}
Category.CREATIONS_MODELS = {name = "CreationsModels", assetType = Category.AssetType.MODEL,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_DECALS = {name = "CreationsDecals", assetType = Category.AssetType.DECAL,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_AUDIO = {name = "CreationsAudio", assetType = Category.AssetType.AUDIO,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_MESHES = {name = "CreationsMeshes", assetType = Category.AssetType.MESHPART,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_PLUGIN = {name = "CreationsPlugins", assetType = Category.AssetType.PLUGIN,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_GROUP_MODELS = {name = "CreationsGroupModels", assetType = Category.AssetType.MODEL,
	ownershipType = Category.OwnershipType.GROUP,}
Category.CREATIONS_GROUP_DECALS = {name = "CreationsGroupDecals", assetType = Category.AssetType.DECAL,
	ownershipType = Category.OwnershipType.GROUP,}
Category.CREATIONS_GROUP_AUDIO = {name = "CreationsGroupAudio", assetType = Category.AssetType.AUDIO,
	ownershipType = Category.OwnershipType.GROUP,}
Category.CREATIONS_GROUP_MESHES = {name = "CreationsGroupMeshes", assetType = Category.AssetType.MESHPART,
	ownershipType = Category.OwnershipType.GROUP,}
Category.CREATIONS_GROUP_PLUGIN = {name = "CreationsGroupPlugins", assetType = Category.AssetType.PLUGIN,
	ownershipType = Category.OwnershipType.GROUP,}
Category.CREATIONS_CATALOG_SECTION_DIVIDER = {name = "CreationsCatalogSectionDivider", selectable=false}
Category.CREATIONS_HATS = {name = "CreationsHats", assetType = Category.AssetType.HAT,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_TEE_SHIRT = {name = "CreationsTeeShirts", assetType = Category.AssetType.TEE_SHIRT,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_SHIRT = {name = "CreationsShirts", assetType = Category.AssetType.SHIRT,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_PANTS = {name = "CreationsPants", assetType = Category.AssetType.PANTS,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_HAIR = {name = "CreationsHair", assetType = Category.AssetType.HAIR_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_FACE_ACCESSORIES = {name = "CreationsFaceAccessories", assetType = Category.AssetType.FACE_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_NECK_ACCESSORIES = {name = "CreationsNeckAccessories", assetType = Category.AssetType.NECK_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_SHOULDER_ACCESSORIES = {name = "CreationsShoulderAccessories", assetType = Category.AssetType.SHOULDER_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_FRONT_ACCESSORIES = {name = "CreationsFrontAccessories", assetType = Category.AssetType.FRONT_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_BACK_ACCESSORIES = {name = "CreationsBackAccessories", assetType = Category.AssetType.BACK_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,}
Category.CREATIONS_WAIST_ACCESSORIES = {name = "CreationsWaistAccessories", assetType = Category.AssetType.WAIST_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,}

-- Category sets used for splitting inventory/shop
Category.MARKETPLACE = {
	Category.FREE_MODELS,
	Category.FREE_DECALS,
	Category.FREE_MESHES,
	Category.FREE_AUDIO,
}

Category.INVENTORY = {
	Category.MY_MODELS,
	Category.MY_DECALS,
	Category.MY_MESHES,
	Category.MY_AUDIO,
	Category.MY_PACKAGES,
}

Category.INVENTORY_WITH_GROUPS = {
	Category.MY_MODELS,
	Category.MY_DECALS,
	Category.MY_MESHES,
	Category.MY_AUDIO,
	Category.MY_PACKAGES,
	Category.GROUP_MODELS,
	Category.GROUP_DECALS,
	Category.GROUP_MESHES,
	Category.GROUP_AUDIO,
	Category.GROUP_PACKAGES,
}

Category.RECENT = {
	Category.RECENT_MODELS,
	Category.RECENT_DECALS,
	Category.RECENT_MESHES,
	Category.RECENT_AUDIO,
	Category.RECENT_VIDEO,
}

Category.DEFAULT = nil
if FFlagToolboxDisableMarketplaceAndRecentsForLuobu and RobloxAPI:baseURLHasChineseHost() then
	Category.DEFAULT = Category.MY_MODELS
else
	Category.DEFAULT = Category.FREE_MODELS
end

-- NOTE: When FFlagEnableToolboxVideos is enabled, remember to move the keys directy into the tables for cleaner code!
if FFlagEnableToolboxVideos then
	local insertIndex = Cryo.List.find(Category.INVENTORY_WITH_GROUPS, Category.MY_PACKAGES) + 1
	table.insert(Category.INVENTORY_WITH_GROUPS, insertIndex, Category.MY_VIDEOS)
	table.insert(Category.INVENTORY, Category.MY_VIDEOS)
	table.insert(Category.MARKETPLACE, Category.MARKETPLACE_VIDEOS)
end

if FFlagToolboxUseNewPluginEndpoint then
	Category.API_NAMES = {
		[Category.FREE_AUDIO.name] = "Audio",
		[Category.WHITELISTED_PLUGINS.name] = "Plugins",
	}
end

local function getCreationCategories()
	local categories
	if FFlagToolboxShowGroupCreations then
		categories = {
			Category.CREATIONS_DEVELOPMENT_SECTION_DIVIDER,
			Category.CREATIONS_MODELS,
			Category.CREATIONS_DECALS,
			Category.CREATIONS_AUDIO,
			Category.CREATIONS_MESHES,
			Category.CREATIONS_GROUP_MODELS,
			Category.CREATIONS_GROUP_DECALS,
			Category.CREATIONS_GROUP_AUDIO,
			Category.CREATIONS_GROUP_MESHES,
		}
	else
		categories = {
			Category.CREATIONS_DEVELOPMENT_SECTION_DIVIDER,
			Category.CREATIONS_MODELS,
			Category.CREATIONS_DECALS,
			Category.CREATIONS_AUDIO,
			Category.CREATIONS_MESHES,
		}
	end

	table.insert(categories, Cryo.List.find(categories, Category.CREATIONS_MESHES) + 1,
		Category.CREATIONS_PLUGIN)
	if FFlagToolboxShowGroupCreations then
		table.insert(
			categories,
			Cryo.List.find(categories, Category.CREATIONS_GROUP_MESHES) + 1,
			Category.CREATIONS_GROUP_PLUGIN
		)
	end

	return categories
end

Category.MARKETPLACE_KEY = "Marketplace"
Category.INVENTORY_KEY = "Inventory"
Category.RECENT_KEY = "Recent"
Category.CREATIONS_KEY = "Creations"

table.insert(Category.INVENTORY, Category.MY_PLUGINS)
if FFlagOnlyWhitelistedPluginsInStudio then
	table.insert(Category.MARKETPLACE, Category.WHITELISTED_PLUGINS)
else
	table.insert(Category.MARKETPLACE, Category.FREE_PLUGINS)
end
local insertIndex = Cryo.List.find(Category.INVENTORY_WITH_GROUPS, Category.MY_PACKAGES) + 1
table.insert(Category.INVENTORY_WITH_GROUPS, insertIndex, Category.MY_PLUGINS)
local insertIndex2 = Cryo.List.find(Category.INVENTORY_WITH_GROUPS, Category.GROUP_AUDIO) + 1
table.insert(Category.INVENTORY_WITH_GROUPS, insertIndex2, Category.GROUP_PLUGINS)

if FFlagUseCategoryNameInToolbox then
	local tabForCategoryName = {}
	local tabKeyForCategoryName = {}
	local categoryByName = {}

	for _, category in pairs(Category) do
		if category.name then
			categoryByName[category.name] = category
		end
	end

	Category.CREATIONS = getCreationCategories()

	local tabs
	local tabKeys
	if FFlagToolboxDisableMarketplaceAndRecentsForLuobu and RobloxAPI:baseURLHasChineseHost() then
		tabs = {
			Category.INVENTORY_WITH_GROUPS,
			Category.CREATIONS,
		}
		tabKeys = {
			Category.INVENTORY_KEY,
			Category.CREATIONS_KEY,
		}
	else
		tabs = {
			Category.MARKETPLACE,
			Category.INVENTORY_WITH_GROUPS,
			Category.RECENT,
			Category.CREATIONS,
		}
		tabKeys = {
			Category.MARKETPLACE_KEY,
			Category.INVENTORY_KEY,
			Category.RECENT_KEY,
			Category.CREATIONS_KEY,
		}
	end

	for index, tab in ipairs(tabs) do
		for _, category in ipairs(tab) do
			tabForCategoryName[category.name] = tab
			tabKeyForCategoryName[category.name] = tabKeys[index]
		end
	end

	function Category.getTabForCategoryName(categoryName)
		return tabForCategoryName[categoryName]
	end
	function Category.getTabKeyForCategoryName(categoryName)
		return tabKeyForCategoryName[categoryName]
	end

	function Category.getCategoryByName(categoryName)
		local category = categoryByName[categoryName]
		if not category and DebugFlags.shouldDebugWarnings() then
			warn(("Lua Toolbox: no category for name %s"):format(tostring(categoryName)))
		end
		return category
	end

	function Category.getCategoryIndex(categoryName)
		local tab = Category.getTabForCategoryName(categoryName)
		if categoryName == "" then
			return 1
		end
		for index, category in ipairs(tab) do
			if category.name == categoryName then
				return index
			end
		end
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua Toolbox: no category index for name %s"):format(tostring(categoryName)))
		end
		return 1
	end
end

if FFlagUseCategoryNameInToolbox then
	function Category.categoryIsPackage(categoryName)
		local category = Category.getCategoryByName(categoryName)
		return category.assetType == Category.AssetType.PACKAGE
	end

	function Category.categoryIsFreeAsset(categoryName)
		local category = Category.getCategoryByName(categoryName)
		return category.ownershipType == Category.OwnershipType.FREE
	end

	function Category.categoryIsGroupAsset(categoryName)
		local category = Category.getCategoryByName(categoryName)
		return category.ownershipType == Category.OwnershipType.GROUP
	end

	function Category.categoryIsAudio(categoryName)
		local category = Category.getCategoryByName(categoryName)
		return category.assetType == Category.AssetType.AUDIO
	end

	function Category.categoryIsVideo(categoryName)
		local category = Category.getCategoryByName(categoryName)
		return category.assetType == Category.AssetType.VIDEO
	end

	function Category.categoryIsGroupPackages(categoryName)
		local category = Category.getCategoryByName(categoryName)
		return category.assetType == Category.AssetType.GROUP_PACKAGES
	end

	function Category.categoryIsPlugin(categoryName)
		local category = Category.getCategoryByName(categoryName)
		return category.assetType == Category.AssetType.PLUGIN
	end

	function Category.shouldShowPrices(categoryName)
		if FFlagFixToolboxPluginScaling then
			local isPlugins = Category.categoryIsPlugin(categoryName)
			local tab = Category.getTabForCategoryName(categoryName)
			local showPrices = isPlugins and tab == Category.MARKETPLACE
			return showPrices
		else
			return Category.categoryIsPlugin(categoryName)
		end
	end
else
	local function checkBounds(index)
		return index and index >= 1 and index <= #Category.INVENTORY_WITH_GROUPS
	end

	function Category.categoryIsPackage(index, currentTab)
		local categoryKey = FFlagFixGroupPackagesCategoryInToolbox and Category.INVENTORY_KEY or Category.MARKETPLACE_KEY
		return checkBounds(index) and currentTab == categoryKey and
			Category.INVENTORY_WITH_GROUPS[index].assetType == Category.AssetType.PACKAGE
	end

	function Category.categoryIsFreeAsset(index)
		return checkBounds(index) and Category.INVENTORY_WITH_GROUPS[index].ownershipType == Category.OwnershipType.FREE
	end

	function Category.categoryIsGroupAsset(currentTab, index)
		if currentTab == Category.CREATIONS_KEY then
			if FFlagToolboxShowGroupCreations then
				local categories = Category.getCategories(currentTab, {})
				if categories[index] == nil then
					return false
				end
				return categories[index].ownershipType == Category.OwnershipType.GROUP
			else
				return false
			end
		end
		return checkBounds(index) and
			Category.INVENTORY_WITH_GROUPS[index].ownershipType == Category.OwnershipType.GROUP
	end

	function Category.categoryIsAudio(currentTab, index)
		if currentTab == Category.MARKETPLACE_KEY then
			return checkBounds(index) and Category.MARKETPLACE[index].assetType == Category.AssetType.AUDIO
		else
			return checkBounds(index) and Category.INVENTORY_WITH_GROUPS[index].assetType == Category.AssetType.AUDIO
		end
	end

	function Category.categoryIsPlugin(currentTab, index)
		if currentTab == Category.MARKETPLACE_KEY then
			return checkBounds(index) and Category.MARKETPLACE[index].assetType == Category.AssetType.PLUGIN
		else
			return checkBounds(index) and Category.INVENTORY_WITH_GROUPS[index].assetType == Category.AssetType.PLUGIN
		end
	end

	function Category.categoryIsVideo(category, index)
		return category and category[index] and category[index].assetType == Category.AssetType.VIDEO
	end

	function Category.shouldShowPrices(currentTab, index)
		if FFlagFixToolboxPluginScaling then
			local isPlugins = Category.categoryIsPlugin(currentTab, index)
			local showPrices = isPlugins and currentTab == Category.MARKETPLACE_KEY
			return showPrices
		else
			return Category.categoryIsPlugin(currentTab, index)
		end
	end
end

local ASSET_ENUM_CATEGORY_MAP = {
	[Enum.AssetType.Hat] = Category.CREATIONS_HATS,
	[Enum.AssetType.HairAccessory] = Category.CREATIONS_HAIR,
	[Enum.AssetType.FaceAccessory] = Category.CREATIONS_FACE_ACCESSORIES,
	[Enum.AssetType.NeckAccessory] = Category.CREATIONS_NECK_ACCESSORIES,
	[Enum.AssetType.ShoulderAccessory] = Category.CREATIONS_SHOULDER_ACCESSORIES,
	[Enum.AssetType.FrontAccessory] = Category.CREATIONS_FRONT_ACCESSORIES,
	[Enum.AssetType.BackAccessory] = Category.CREATIONS_BACK_ACCESSORIES,
	[Enum.AssetType.WaistAccessory] = Category.CREATIONS_WAIST_ACCESSORIES,
}

function Category.getCategories(tabName, roles)
	if Category.CREATIONS_KEY == tabName then
		local categories = getCreationCategories()
		if roles then
			local allowedAssetTypeEnums = AssetConfigUtil.getAllowedAssetTypeEnums(roles.allowedAssetTypesForRelease)
			if #allowedAssetTypeEnums > 0 then
				table.insert(categories, Category.CREATIONS_CATALOG_SECTION_DIVIDER)
				for _, assetTypeEnum in pairs(allowedAssetTypeEnums) do
					table.insert(categories, ASSET_ENUM_CATEGORY_MAP[assetTypeEnum])
				end
			end
		end
		return categories
	elseif Category.MARKETPLACE_KEY == tabName then
		return Category.MARKETPLACE
	elseif Category.INVENTORY_KEY == tabName then
		return Category.INVENTORY
	elseif Category.RECENT_KEY == tabName then
		return Category.RECENT
	end
end

function Category.getEngineAssetType(assetType)
	local result = Category.ToolboxAssetTypeToEngine[assetType]
	if not result then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua toolbox: No engine assetType for category asset type %s"):format(tostring(assetType)))
		end
	end
	return result
end

return Category