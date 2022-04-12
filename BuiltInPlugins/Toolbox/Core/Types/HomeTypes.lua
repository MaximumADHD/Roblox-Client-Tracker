--!strict
local Plugin = script:FindFirstAncestor("Toolbox")
local FFlagToolboxAssetCategorization3 = game:GetFastFlag("ToolboxAssetCategorization3")

local ToolboxUtilities = require(Plugin.Core.Util.ToolboxUtilities)

export type SubcategoryThumbnail = {
	assetId: number,
	backgroundColor: string,
}

export type Subcategory = {
	displayName: string,
	children: {
		[string]: Subcategory,
	},
	childCount: number,
	index: number,
	name: string,
	path: { string },
	searchKeywords: string?,
	thumbnail: SubcategoryThumbnail?,
}

export type HomeConfigurationSection = {
	name: string,
	subcategory: Subcategory?,
}

export type HomeConfiguration = {
	topKeywords: { string },
	sections: { HomeConfigurationSection },
}

local HomeTypes = {}
HomeTypes.ENABLED_ASSET_TYPES = {}

function AddEnabledAssetByName(assetName: string)
	local assetEnum = Enum.AssetType[assetName]
	if assetEnum ~= nil then
		table.insert(HomeTypes.ENABLED_ASSET_TYPES, assetEnum)
	end
end

if FFlagToolboxAssetCategorization3 then
	local HomeViewAssetTypeString = ToolboxUtilities.getHomeViewEnabledAssetTypes()

	if HomeViewAssetTypeString ~= nil then
		local HomeViewAssetTypes = string.split(HomeViewAssetTypeString, ";")
		for i, assetName in pairs(HomeViewAssetTypes) do
			local success = pcall(AddEnabledAssetByName, assetName)
			if not success then
				warn(assetName .. " is not a valid asset name")
			end
		end
	end
end

return HomeTypes
