local Plugin = script.Parent.Parent

local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization2")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local SearchList
if FFlagToolboxAssetCategorization then
	-- needed for withAbsoluteSizeAndPosition
	SearchList = require(Plugin.Core.Components.Categorization.SearchList)
end

local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)

local PADDING_HORIZONTAL = 14

local function ToolboxWrapper(props)
	return Roact.createElement(ToolboxStoryWrapper, props)
end

local ITEMS = {
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
	"fennekin",
	"froakie",
	"chespin",
	"litten",
	"popplio",
	"rowlet",
}

return {
	summary = "A generic search list.",
	stories = {
		{
			name = "Full, no max count",
			story = FFlagToolboxAssetCategorization and Roact.createElement(ToolboxWrapper, {}, {
				Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
				}, {
					SearchList = Roact.createElement(SearchList, {
						Items = ITEMS,
						ItemMinWidth = 2 * PADDING_HORIZONTAL,
					}),
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization2", true),
		},
		{
			name = "Max row count of 2",
			story = FFlagToolboxAssetCategorization and Roact.createElement(ToolboxWrapper, {}, {
				Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
				}, {
					SearchList = Roact.createElement(SearchList, {
						Items = ITEMS,
						ItemMinWidth = 2 * PADDING_HORIZONTAL,
						MaxRowCount = 2,
					}),
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization2", true),
		},
	},
}
