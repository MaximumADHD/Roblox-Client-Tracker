local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages

local HomeTypes = {}

export type SubcategoryThumbnail = {
	assetId: number,
	backgroundColor: string,
} 

export type Subcategory = {
	displayName: string,
	childCount: number,
	children: {
		[string]: Subcategory,
	},
	index: number,
	name: string,
	path: {string},
	thumbnail: SubcategoryThumbnail?,
};

return HomeTypes