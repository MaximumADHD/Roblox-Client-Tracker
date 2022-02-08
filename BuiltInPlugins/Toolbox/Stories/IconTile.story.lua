local Plugin = script.Parent.Parent

local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local IconTile = require(Plugin.Core.Components.Categorization.IconTile)

local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)

local function ToolboxWrapper(props)
	props.store = CoreTestUtils.storeWithData({
		assets = {},
	})
	return Roact.createElement(ToolboxStoryWrapper, props)
end

return {
	summary = "A generic tile with an icon and gradient.",
	stories = {
		{
			name = "Clickable",
			summary = "Sends a key on click and has a pointer cursor.",
			story = FFlagToolboxAssetCategorization and Roact.createElement(ToolboxWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.new(50, 168, 82),
					Image = "rbxassetid://6002241241",
					Key = "Click",
					OnClick = function(key) print(key) end,
					Size = UDim2.new(0, 75, 0, 90),
					Title = "Click me",
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization", true),
		},
		{
			name = "Multi-Lined text",
			summary = "Multiple lines of category text.",
			story = FFlagToolboxAssetCategorization and Roact.createElement(ToolboxWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.new(50, 168, 82),
					Image = "rbxassetid://6002241241",
					Size = UDim2.new(0, 75, 0, 90),
					Title = "Category with 2 Lines",
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization", true),
		},
		{
			name = "Flexible width",
			summary = "Respects Size.X.Scale.",
			story = FFlagToolboxAssetCategorization and Roact.createElement(ToolboxWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.new(50, 168, 82),
					Image = "rbxassetid://6002241241",
					Size = UDim2.new(0.5, 0, 0, 90),
					Title = "Flexible",
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization", true),
		},
	}
}