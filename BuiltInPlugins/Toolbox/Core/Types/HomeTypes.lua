--!strict
local FFlagToolboxPackagesInAssetTile = game:GetFastFlag("ToolboxPackagesInAssetTile")

local Plugin = if FFlagToolboxPackagesInAssetTile then nil else script:FindFirstAncestor("Toolbox") -- unused variable, remove with FFlagToolboxPackagesInAssetTile

export type SubcategoryThumbnail = {
	assetId: number,
	backgroundColor: string,
}

-- Use an unsealed table since the backend may send any number of params for this field (e.g. keyword, assetSubTypes, or future fields) and we don't want to have to update Studio for each additional param
export type SubcategoryQueryParams = {}

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
	queryParams: SubcategoryQueryParams?,
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

return HomeTypes
