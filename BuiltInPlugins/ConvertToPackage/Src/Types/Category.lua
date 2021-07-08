local Plugin = script.Parent.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

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
	AUDIO = 3,
	PACKAGE = 4,
	PLUGIN = 5,
	HAT = 6,
	TEE_SHIRT = 7,
	SHIRT = 8,
	PANTS = 9,
	HAIR_ACCESSORY = 10,
	FACE_ACCESSORY = 11,
	NECK_ACCESSORY = 12,
	SHOULDER_ACCESSORY = 13,
	FRONT_ACCESSORY = 14,
	BACK_ACCESSORY = 15,
	WAIST_ACCESSORY = 16
}

Category.ToolboxAssetTypeToEngine = {
	[Category.AssetType.MODEL] = Enum.AssetType.Model,
	[Category.AssetType.DECAL] = Enum.AssetType.Decal,
	[Category.AssetType.MESH] = Enum.AssetType.Mesh,
	[Category.AssetType.AUDIO] = Enum.AssetType.Audio,
	[Category.AssetType.PACKAGE] = Enum.AssetType.Package,
	[Category.AssetType.PLUGIN] = Enum.AssetType.Plugin,
	[Category.AssetType.HAT] = Enum.AssetType.Hat,
	[Category.AssetType.TEE_SHIRT] = Enum.AssetType.TShirt,
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

Category.FREE_MODELS = {name = "FreeModels", category = "FreeModels",
	ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.MODEL}
Category.FREE_DECALS = {name = "FreeDecals", category = "FreeDecals",
	ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.DECAL}
Category.FREE_MESHES = {name = "FreeMeshes", category = "FreeMeshes",
	ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.MESH}
Category.FREE_AUDIO = {name = "FreeAudio", category = "FreeAudio",
	ownershipType = Category.OwnershipType.FREE, assetType = Category.AssetType.AUDIO}

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

Category.MY_PACKAGES = {name = "MyPackages", category = "MyPackages",
	ownershipType = Category.OwnershipType.MY, assetType = Category.AssetType.PACKAGE}
Category.GROUP_PACKAGES = {name = "GroupPackages", category = "GroupPackages",
	ownershipType = Category.OwnershipType.GROUP, assetType = Category.AssetType.PACKAGE}

Category.CREATIONS_DEVELOPMENT_SECTION_DIVIDER = {name = "CreationsDevelopmentSectionDivider", selectable=false}
Category.CREATIONS_MODELS = {name = "CreationsModels", assetType = Category.AssetType.MODEL}
Category.CREATIONS_DECALS = {name = "CreationsDecals", assetType = Category.AssetType.DECAL}
Category.CREATIONS_AUDIO = {name = "CreationsAudio", assetType = Category.AssetType.AUDIO}
Category.CREATIONS_MESHES = {name = "CreationsMeshes", assetType = Category.AssetType.MESH}
Category.CREATIONS_CATALOG_SECTION_DIVIDER = {name = "CreationsCatalogSectionDivider", selectable=false}
Category.CREATIONS_HATS = {name = "CreationsHats", assetType = Category.AssetType.HAT}
Category.CREATIONS_TEE_SHIRT = {name = "CreationsTeeShirts", assetType = Category.AssetType.TEE_SHIRT}
Category.CREATIONS_SHIRT = {name = "CreationsShirts", assetType = Category.AssetType.SHIRT}
Category.CREATIONS_PANTS = {name = "CreationsPants", assetType = Category.AssetType.PANTS}
Category.CREATIONS_HAIR = {name = "CreationsHair", assetType = Category.AssetType.HairAccessory}
Category.CREATIONS_FACE_ACCESSORYS = {name = "CreationsFaceAccessorys", assetType = Category.AssetType.FaceAccessory}
Category.CREATIONS_NECK_ACCESSORYS = {name = "CreationsNeckAccessorys", assetType = Category.AssetType.NeckAccessory}
Category.CREATIONS_SHOULDER_ACCESSORYS = {name = "CreationsShoulderAccessorys", assetType = Category.AssetType.ShoulderAccessory}
Category.CREATIONS_FRONT_ACCESSORYS = {name = "CreationsFrontAccessorys", assetType = Category.AssetType.FrontAccessory}
Category.CREATIONS_BACK_ACCESSORYS = {name = "CreationsBackAccessorys", assetType = Category.AssetType.BackAccessory}
Category.CREATIONS_WAIST_ACCESSORYS = {name = "CreationsWaistAccessorys", assetType = Category.AssetType.WaistAccessory}

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
}

Category.RECENT = {
	Category.RECENT_MODELS,
	Category.RECENT_DECALS,
	Category.RECENT_MESHES,
	Category.RECENT_AUDIO,
}

local CREATIONS = {
	Category.CREATIONS_DEVELOPMENT_SECTION_DIVIDER,
	Category.CREATIONS_MODELS,
	Category.CREATIONS_DECALS,
	Category.CREATIONS_AUDIO,
	Category.CREATIONS_MESHES,
}

local CREATIONS_CATALOG_ITEM_CREATOR = {
	Category.CREATIONS_DEVELOPMENT_SECTION_DIVIDER,
	Category.CREATIONS_MODELS,
	Category.CREATIONS_DECALS,
	Category.CREATIONS_AUDIO,
	Category.CREATIONS_MESHES,
	Category.CREATIONS_CATALOG_SECTION_DIVIDER,
	Category.CREATIONS_HATS,
}

Category.MARKETPLACE_KEY = "Marketplace"
Category.INVENTORY_KEY = "Inventory"
Category.RECENT_KEY = "Recent"
Category.CREATIONS_KEY = "Creations"

local CreationsCatagoriesKey = 1
local CreationsCatalogItemCreatorCategoriesKey = 2

local TABS = {
	[Category.MARKETPLACE_KEY] = Category.MARKETPLACE,
	[Category.INVENTORY_KEY] = Category.INVENTORY,
	[Category.RECENT_KEY] = Category.RECENT,
	[Category.CREATIONS_KEY] = {
		[CreationsCatagoriesKey] = CREATIONS,
		[CreationsCatalogItemCreatorCategoriesKey] = CREATIONS_CATALOG_ITEM_CREATOR
	}
}

local function checkBounds(index)
	return index and index >= 1 and index <= #Category.INVENTORY_WITH_GROUPS
end

function Category.categoryIsPackage(index)
	return checkBounds(index) and Category.INVENTORY_WITH_GROUPS[index].assetType == Category.AssetType.PACKAGE
end

function Category.categoryIsFreeAsset(index)
	return checkBounds(index) and Category.INVENTORY_WITH_GROUPS[index].ownershipType == Category.OwnershipType.FREE
end

function Category.categoryIsGroupAsset(currentTab, index)
	if currentTab == Category.CREATIONS_KEY then
		return false
	end
	return checkBounds(index) and Category.INVENTORY_WITH_GROUPS[index].ownershipType == Category.OwnershipType.GROUP
end

function Category.categoryIsPlugin(index)
	return checkBounds(index) and Category.INVENTORY_WITH_GROUPS[index].assetType == Category.AssetType.PLUGIN
end

function Category.getCategories(tabName, roles)
	if Category.CREATIONS_KEY == tabName then
		if roles and roles.isCatalogItemCreator then
			return TABS[tabName][CreationsCatalogItemCreatorCategoriesKey]
		end
		return TABS[tabName][CreationsCatagoriesKey]
	end
	return TABS[tabName];
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

local function ownershipTypeToString(ownershipType)
	if ownershipType == Category.OwnershipType.FREE then
		return "FREE"
	elseif ownershipType == Category.OwnershipType.MY then
		return "MY"
	elseif ownershipType == Category.OwnershipType.RECENT then
		return "RECENT"
	elseif ownershipType == Category.OwnershipType.GROUP then
		return "GROUP"
	end
	return "[unknown]"
end

local function assetTypeToString(assetType)
	if assetType == Category.AssetType.MODEL then
		return "MODEL"
	elseif assetType == Category.AssetType.DECAL then
		return "DECAL"
	elseif assetType == Category.AssetType.MESH then
		return "MESH"
	elseif assetType == Category.AssetType.AUDIO then
		return "AUDIO"
	elseif assetType == Category.AssetType.PACKAGE then
		return "PACKAGE"
	end
	return "[unknown]"
end

function Category.categoryToString(category)
	return ("Category(name=\"%s\", category=\"%s\", ownershipType=\"%s\", assetType=\"%s\")"):format(
		category.name,
		category.category,
		ownershipTypeToString(category.ownershipType),
		assetTypeToString(category.assetType))
end

return Category
