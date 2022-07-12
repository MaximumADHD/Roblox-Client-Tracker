--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

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

return HomeTypes
