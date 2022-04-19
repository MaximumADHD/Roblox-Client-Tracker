local Plugin = script.Parent.Parent

local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization4")
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local ExpandableTeaser = require(Plugin.Core.Components.Categorization.ExpandableTeaser)
local SearchList = require(Plugin.Core.Components.Categorization.SearchList)

local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)

local function ToolboxWrapper(props)
	return Roact.createElement(ToolboxStoryWrapper, props)
end

local function makeChildren()
	return {
		Roact.createElement("Frame", {
			BackgroundColor3 = Color3.new(1, 0, 0),
			Size = UDim2.new(1, 0, 0, 100),
		}),
	}
end
local function makeSearchListChildren()
	return {
		SearchList = Roact.createElement(SearchList, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Items = {
				"charmander",
				"bulbasaur",
				"squirtle",
				"cyndaquil",
				"totodile",
				"chikorita",
				"torchic",
				"mudkip",
				"treecko",
				"chimchar",
				"piplup",
				"turtwig",
				"tepig",
				"oshawott",
				"snivy",
			},
			ItemMinWidth = 28,
		}),
	}
end

local function onExpand(isExpanded)
	print("isExpanded: ", isExpanded)
end

return {
	summary = "An expandable teaser.",
	stories = {
		{
			name = "Expandable",
			story = FFlagToolboxAssetCategorization and Roact.createElement(ToolboxWrapper, {}, {
				Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
				}, {
					ExpandableTeaser = Roact.createElement(ExpandableTeaser, {
						OnExpandChanged = onExpand,
						Title = "Expandable",
						TeaserSize = Vector2.new(0, 10),
					}, makeChildren()),
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization4", true),
		},
		{
			name = "Search Pills",
			story = FFlagToolboxAssetCategorization and Roact.createElement(ToolboxWrapper, {}, {
				Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
				}, {
					ExpandableTeaser = Roact.createElement(ExpandableTeaser, {
						OnExpandChanged = onExpand,
						Title = "Top Searches",
						TeaserSize = Vector2.new(0, 28),
					}, makeSearchListChildren()),
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization4", true),
		},
	},
}
