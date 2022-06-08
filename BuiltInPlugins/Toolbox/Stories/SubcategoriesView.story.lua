local Plugin = script.Parent.Parent

local Libs = Plugin.Packages
local Roact = require(Libs.Roact)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)
local SubcategoriesView = require(Plugin.Core.Components.Categorization.SubcategoriesView)

local function ToolboxWrapper(props)
	return Roact.createElement(ToolboxStoryWrapper, props)
end

return {
	summary = "A grid of Subcategory IconTiles with flexible widths.",
	stories = {
		{
			name = "SubcategoriesView",
			summary = "Example with 5 subcategories.",
			story = Roact.createElement(ToolboxWrapper, {}, {
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
			}),
		},
	},
}
