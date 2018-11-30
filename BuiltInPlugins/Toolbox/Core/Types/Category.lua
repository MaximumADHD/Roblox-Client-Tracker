local BuiltInPluginGetPackageAPIEnabled = settings():GetFFlag("BuiltInPluginGetPackageAPIEnabled")
local EnableGroupPackagesForToolbox =  settings():GetFFlag("EnableGroupPackagesForToolbox")
local EnableToolboxPluginInsertion = settings():GetFFlag("EnableToolboxPluginInsertion")

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
}

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

Category.CATEGORIES_WITHOUT_GROUPS = {
	Category.FREE_MODELS,
	Category.FREE_DECALS,
	Category.FREE_MESHES,
	Category.FREE_AUDIO,

	Category.MY_MODELS,
	Category.MY_DECALS,
	Category.MY_MESHES,
	Category.MY_AUDIO,

	Category.RECENT_MODELS,
	Category.RECENT_DECALS,
	Category.RECENT_MESHES,
	Category.RECENT_AUDIO,
}

Category.CATEGORIES = {
	Category.FREE_MODELS,
	Category.FREE_DECALS,
	Category.FREE_MESHES,
	Category.FREE_AUDIO,

	Category.MY_MODELS,
	Category.MY_DECALS,
	Category.MY_MESHES,
	Category.MY_AUDIO,

	Category.RECENT_MODELS,
	Category.RECENT_DECALS,
	Category.RECENT_MESHES,
	Category.RECENT_AUDIO,

	Category.GROUP_MODELS,
	Category.GROUP_DECALS,
	Category.GROUP_MESHES,
	Category.GROUP_AUDIO,
}

if BuiltInPluginGetPackageAPIEnabled then
	-- Insert between "my audio" and "recent models"
	table.insert(Category.CATEGORIES, 9, Category.MY_PACKAGES)
	table.insert(Category.CATEGORIES_WITHOUT_GROUPS, 9, Category.MY_PACKAGES)
end

if BuiltInPluginGetPackageAPIEnabled and EnableGroupPackagesForToolbox then
	-- Insert at end after "group audio"
	table.insert(Category.CATEGORIES, Category.GROUP_PACKAGES)
end


if EnableToolboxPluginInsertion then
	table.insert(Category.CATEGORIES, 9, Category.MY_PLUGINS)
	table.insert(Category.CATEGORIES, 5, Category.FREE_PLUGINS)
	table.insert(Category.CATEGORIES_WITHOUT_GROUPS, 9, Category.MY_PLUGINS)
	table.insert(Category.CATEGORIES_WITHOUT_GROUPS, 5, Category.FREE_PLUGINS)
end

local function checkBounds(index)
	return index and index >= 1 and index <= #Category.CATEGORIES
end

function Category.categoryIsPackage(index)
	return checkBounds(index) and Category.CATEGORIES[index].assetType == Category.AssetType.PACKAGE
end

function Category.categoryIsFreeAsset(index)
	return checkBounds(index) and Category.CATEGORIES[index].ownershipType == Category.OwnershipType.FREE
end

function Category.categoryIsGroupAsset(index)
	return checkBounds(index) and Category.CATEGORIES[index].ownershipType == Category.OwnershipType.GROUP
end

function Category.categoryIsPlugin(index)
	return checkBounds(index) and Category.CATEGORIES[index].assetType == Category.AssetType.PLUGIN
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
