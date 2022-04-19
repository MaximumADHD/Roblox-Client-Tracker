local Plugin = script.Parent.Parent

local FFlagToolboxAssetCategorization4 = game:GetFastFlag("ToolboxAssetCategorization4")
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local IconTile = require(Plugin.Core.Components.Categorization.IconTile)

local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)

local Util = Plugin.Core.Util
local Urls = require(Util.Urls)

local Constants = require(Util.Constants)
local THUMBNAIL_SIZE = Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE
local IMAGE = Urls.constructAssetThumbnailUrl(5657301130, THUMBNAIL_SIZE, THUMBNAIL_SIZE)

local function ToolboxWrapper(props)
	return Roact.createElement(ToolboxStoryWrapper, props)
end

return {
	summary = "A generic tile with an icon and gradient.",
	stories = {
		{
			name = "Clickable",
			summary = "Sends a key on click and has a pointer cursor.",
			story = FFlagToolboxAssetCategorization4 and Roact.createElement(ToolboxWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.fromRGB(50, 168, 82),
					Image = IMAGE,
					Key = "Click",
					OnClick = function(key)
						print(key)
					end,
					Size = UDim2.new(0, 75, 0, 90),
					Title = "Category",
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization4", true),
		},
		{
			name = "Multi-Lined text",
			summary = "Multiple lines of category text.",
			story = FFlagToolboxAssetCategorization4 and Roact.createElement(ToolboxWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.fromRGB(50, 168, 82),
					Image = IMAGE,
					Size = UDim2.new(0, 75, 0, 90),
					Title = "Category 2 Lines",
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization4", true),
		},
		{
			name = "Flexible width",
			summary = "Respects Size.X.Scale.",
			story = FFlagToolboxAssetCategorization4 and Roact.createElement(ToolboxWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.fromRGB(50, 168, 82),
					Image = IMAGE,
					Size = UDim2.new(0.5, 0, 0, 90),
					Title = "Flexible",
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization4", true),
		},
	},
}
