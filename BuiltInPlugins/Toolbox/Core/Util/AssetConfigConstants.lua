local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local getUserId = require(Util.getUserId)
local DebugFlags = require(Util.DebugFlags)
local wrapStrictTable = require(Util.wrapStrictTable)
local convertArrayToTable = require(Util.convertArrayToTable)

local AssetConfigConstants = {}

AssetConfigConstants.TERM_OF_USE_URL = "https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"
AssetConfigConstants.ACCOUNT_SETTING_URL = "https://www.roblox.com/my/account#!/info"

AssetConfigConstants.NAME_CHARACTER_LIMIT = 50
AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT = 1000
-- There is a cap for fetching asset, that's 100.
-- TODO: Fix me with this ticket DEVTOOLS-2904
AssetConfigConstants.GetOverrideAssetNumbersPerPage = 100

AssetConfigConstants.TITLE_GUTTER_WIDTH = 180

AssetConfigConstants.OverrideAssetItemSize = UDim2.new(0, 150, 0, 200)

AssetConfigConstants.SIDE_TABS = convertArrayToTable({
	"Sales",
	"General",
	"Versions",
	-- Override is weird case. it acts like a tab, but don't show up in the tabs.
	-- We should ask the design for a more consistent pattern to replace this one.
	"Override"
})

AssetConfigConstants.GENRE_TYPE = {
	{name = Enum.Genre.All.Name},
	{name = Enum.Genre.TownAndCity.Name},
	{name = Enum.Genre.Fantasy.Name},
	{name = Enum.Genre.SciFi.Name},
	{name = Enum.Genre.Ninja.Name},
	{name = Enum.Genre.Scary.Name},
	{name = Enum.Genre.Pirate.Name},
	{name = Enum.Genre.Adventure.Name},
	{name = Enum.Genre.Sports.Name},
	{name = Enum.Genre.Funny.Name},
	{name = Enum.Genre.WildWest.Name},
	{name = Enum.Genre.War.Name},
	{name = Enum.Genre.SkatePark.Name},
	{name = Enum.Genre.Tutorial.Name},
}

-- All the current AssetType supports editing should be defined in here first.
AssetConfigConstants.AssetTypeIdToNameMap = {
	[Enum.AssetType.Model.Value] = Enum.AssetType.Model.Name,
	[Enum.AssetType.Hat.Value] = Enum.AssetType.Hat.Name,
}

AssetConfigConstants.FLOW_TYPE = convertArrayToTable({
	"EDIT_FLOW",
	"UPLOAD_FLOW"
})

AssetConfigConstants.SCREENS = convertArrayToTable({
	"ASSET_TYPE_SELECTION",
	"ASSET_VALIDATION",
	"CONFIGURE_ASSET",
	"UPLOADING_ASSET",
	"UPLOAD_ASSET_RESULT",
})

local catalogAssetTypes = convertArrayToTable({
	Enum.AssetType.Hat,
	Enum.AssetType.TeeShirt,
	Enum.AssetType.Shirt,
	Enum.AssetType.Pants,
})

local marketplaceAssetTypes = convertArrayToTable({
	Enum.AssetType.Model,
	Enum.AssetType.Decal,
	Enum.AssetType.Mesh,
	Enum.AssetType.Audio,
})

local function checkData(assetTypeId)
	if DebugFlags.shouldDebugWarnings() then
		local isAssetTypeBothCatalogAndMarketplace = catalogAssetTypes[assetTypeId] and marketplaceAssetTypes[assetTypeId]
		if isAssetTypeBothCatalogAndMarketplace then
			warn("Lua CMS: " .. tostring(assetTypeId) .. " cannot be both a catalog and marketplace asset")
		end
	end
end

function AssetConfigConstants.isCatalogAsset(assetTypeEnum)
	checkData(assetTypeEnum)
	return catalogAssetTypes[assetTypeEnum] and true or false
end

function AssetConfigConstants.isMarketplaceAsset(assetTypeEnum)
	checkData(assetTypeEnum)
	return marketplaceAssetTypes[assetTypeEnum] and true or false
end

function AssetConfigConstants.getFlowStartScreen(flowType)
	if flowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW then
		return AssetConfigConstants.SCREENS.ASSET_TYPE_SELECTION
	elseif flowType == AssetConfigConstants.FLOW_TYPE.EDIT_FLOW then
		return AssetConfigConstants.SCREENS.CONFIGURE_ASSET
	end
end

function AssetConfigConstants.getGenreTypes()
	return AssetConfigConstants.GENRE_TYPE
end

function AssetConfigConstants.getGenreIndex(targetGnere)
	local index = 1
	for k,v in pairs(AssetConfigConstants.GENRE_TYPE) do
		if targetGnere == v.name then
			index = k
			break
		end
	end
	return index
end

function AssetConfigConstants.getGenreName(genreIndex)
	if genreIndex > #AssetConfigConstants.GENRE_TYPE then
		genreIndex = 1
	end
	return AssetConfigConstants.GENRE_TYPE[genreIndex].name
end

function AssetConfigConstants.getAssetTypeNameFromId(assetTypeId)
	return AssetConfigConstants.AssetTypeIdToNameMap[assetTypeId] or "Unknown"
end

function AssetConfigConstants.isEditAssetScreen(currentScreen)
	return AssetConfigConstants.SCREENS.EDIT_ASSET == currentScreen
end

function AssetConfigConstants.getOwnerDropDownContent(groupsArray, localizedContent)
	local result = {
		{name = localizedContent.AssetConfig.PublishAsset.Me, creatorType = "User", creatorId = getUserId()}
	}

	for index, groupData in pairs(groupsArray) do
		local newDropDownitem = {
			name = groupData.group.name,
			creatorType = "Group",
			creatorId = groupData.group.id,
			item = groupData
		}
		table.insert(result, newDropDownitem)
	end
	return result
end

-- TODO: Remove this, making stuff harder to use already
return wrapStrictTable(AssetConfigConstants, "AssetConfigConstants")
