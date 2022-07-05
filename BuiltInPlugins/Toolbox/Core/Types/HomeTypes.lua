--!strict
local Plugin = script:FindFirstAncestor("Toolbox")
local FFlagToolboxAudioDiscovery = require(Plugin.Core.Util.Flags.AudioDiscovery).FFlagToolboxAudioDiscovery()

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
	hidden: boolean?,
}

export type HomeConfigurationSection = {
	name: string,
	displayName: string,
	subcategory: Subcategory?,
}

export type HomeConfiguration = {
	topKeywords: { string },
	sections: { HomeConfigurationSection },
}

local HomeTypes = {}
if not FFlagToolboxAudioDiscovery then
	HomeTypes.ENABLED_ASSET_TYPES = {}

	function AddEnabledAssetByName(assetName: string)
		local assetEnum = Enum.AssetType[assetName]
		if assetEnum ~= nil then
			table.insert(HomeTypes.ENABLED_ASSET_TYPES, assetEnum)
		end
	end

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
