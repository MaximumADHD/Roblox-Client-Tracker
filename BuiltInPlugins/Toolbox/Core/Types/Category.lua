local Plugin = script.Parent.Parent.Parent

local BuiltInPluginGetPackageAPIEnabled = settings():GetFFlag("BuiltInPluginGetPackageAPIEnabled")

local Category = {}

Category.CATEGORIES_WITHOUT_GROUPS = {}
Category.CATEGORIES = {}

-- Turns a category value into a variable name that can be used as a constant
-- Assumes no spaces in the category and instead uppercase letters indicate new words
-- So it puts _ between them and removes any _ at the start
-- And uppercases the whole word
-- e.g. "FreeModels" -> "FREE_MODELS"
local function categoryToConstant(category)
	return category:gsub("%u", "_%1"):upper():gsub("^_", "")
end

-- Adds a category to the CATEGORIES table
-- If isGroupOnly = false or nil then also adds to CATEGORIES_WITHOUT_GROUPS
-- Puts a global into Category to get the index of a certain category
local function addCategory(name, category, isGroupOnly)
	local categoryObject = {
		name = name,
		category = category,
	}

	local index = #Category.CATEGORIES + 1
	if not isGroupOnly then
		Category.CATEGORIES_WITHOUT_GROUPS[index] = categoryObject
	end
	Category.CATEGORIES[index] = categoryObject

	Category[categoryToConstant(category)] = index
end

function Category.categoryIsPackage(index)
	return BuiltInPluginGetPackageAPIEnabled and index
		and (index == Category.MY_PACKAGES or index == Category.GROUP_PACKAGES)
end

function Category.categoryIsFreeAsset(index)
	return index and index <= Category.FREE_AUDIO
end

function Category.categoryIsGroupAsset(index)
	return index and index >= Category.GROUP_MODELS
end

local function init()
	local assetTypes = {"Models", "Decals", "Meshes", "Audio"}

	for _, assetType in ipairs(assetTypes) do
		addCategory(assetType, "Free" .. assetType)
	end

	for _, assetType in ipairs(assetTypes) do
		addCategory("My " .. assetType, "My" .. assetType)
	end

	for _, assetType in ipairs(assetTypes) do
		addCategory("Recent " .. assetType, "Recent" .. assetType)
	end

	if BuiltInPluginGetPackageAPIEnabled then
		addCategory("My Packages", "MyPackages")
	end

	for _, assetType in ipairs(assetTypes) do
		addCategory("Group " .. assetType, "Group" .. assetType, true)
	end

	if BuiltInPluginGetPackageAPIEnabled then
		addCategory("Group Packages", "GroupPackages", true)
	end
end

if #Category.CATEGORIES == 0 then
	init()
end

return Category
