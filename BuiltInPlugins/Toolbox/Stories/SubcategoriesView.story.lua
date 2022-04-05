local Plugin = script.Parent.Parent

local FFlagToolboxAssetCategorization2 = game:GetFastFlag("ToolboxAssetCategorization2")
local FFlagDevFrameworkResponsiveGrid2 = game:GetFastFlag("DevFrameworkResponsiveGrid2")

local Libs = Plugin.Packages
local Roact = require(Libs.Roact)
local RefactorFlags = require(Libs.Framework).Util.RefactorFlags
RefactorFlags.THEME_REFACTOR = true

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)
local SubcategoriesView = require(Plugin.Core.Components.Categorization.SubcategoriesView)

local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)

local function ToolboxWrapper(props)
	return Roact.createElement(ToolboxStoryWrapper, props)
end

return {
	summary = "A grid of Subcategory IconTiles with flexible widths.",
	stories = {
		{
			name = "SubcategoriesView",
			summary = "Example with 5 subcategories.",
			story = if FFlagToolboxAssetCategorization2 and FFlagDevFrameworkResponsiveGrid2
				then Roact.createElement(ToolboxWrapper, {}, {
					IconTile = Roact.createElement(SubcategoriesView, {
						Size = UDim2.new(1, 0, 0, 200),
						SubcategoryDict = {
							{
								displayName = "Category",
								children = {},
								childCount = 0,
								index = 1,
								name = "1",
								path = {},
								thumbnail = {
									assetId = 5657301130,
									backgroundColor = "#32a852",
								},
							},
							{
								displayName = "Vehicle",
								children = {},
								childCount = 0,
								index = 2,
								name = "2",
								path = {},
								thumbnail = {
									assetId = 5657301130,
									backgroundColor = "#32a852",
								},
							},
							{
								displayName = "3rd",
								children = {},
								childCount = 0,
								index = 3,
								name = "3",
								path = {},
								thumbnail = {
									assetId = 5657301130,
									backgroundColor = "#32a852",
								},
							},
							{
								displayName = "4",
								children = {},
								childCount = 0,
								index = 3,
								name = "4",
								path = {},
								thumbnail = {
									assetId = 5657301130,
									backgroundColor = "#32a852",
								},
							},
							{
								displayName = "5",
								children = {},
								childCount = 0,
								name = "5",
								index = 3,
								path = {},
								thumbnail = {
									assetId = 5657301130,
									backgroundColor = "#32a852",
								},
							},
						},
					}),
				})
				else (CoreTestUtils.mustSetFlag("FFlagDevFrameworkResponsiveGrid2", true) and CoreTestUtils.mustSetFlag(
					"FFlagToolboxAssetCategorization2",
					true
				)),
		},
	},
}
