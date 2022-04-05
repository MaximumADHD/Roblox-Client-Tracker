local Plugin = script.Parent.Parent

local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization2")
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local SearchPill = require(Plugin.Core.Components.Categorization.SearchPill)

local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)

local function ToolboxWrapper(props)
	return Roact.createElement(ToolboxStoryWrapper, props)
end

return {
	summary = "A generic search pill.",
	stories = {
		{
			name = "Clickable",
			story = FFlagToolboxAssetCategorization and Roact.createElement(ToolboxWrapper, {}, {
				SearchPill = Roact.createElement(SearchPill, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Text = "Clickable",
					OnClick = function() print("Clicked") end,
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization2", true),
		},
		{
			name = "Constant Size",
			story = FFlagToolboxAssetCategorization and Roact.createElement(ToolboxWrapper, {}, {
				SearchPill = Roact.createElement(SearchPill, {
					Text = "Size 100x50",
					Size = UDim2.new(0, 100, 0, 50),
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization2", true),
		},
	},
}
