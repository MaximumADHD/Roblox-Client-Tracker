local Plugin = script.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local SearchPill = require(Plugin.Core.Components.Categorization.SearchPill)

local function ToolboxWrapper(props)
	return Roact.createElement(ToolboxStoryWrapper, props)
end

return {
	summary = "A generic search pill.",
	stories = {
		{
			name = "Clickable",
			story = Roact.createElement(ToolboxWrapper, {}, {
				SearchPill = Roact.createElement(SearchPill, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Text = "Clickable",
					OnClick = function()
						print("Clicked")
					end,
				}),
			}),
		},
		{
			name = "Constant Size",
			story = Roact.createElement(ToolboxWrapper, {}, {
				SearchPill = Roact.createElement(SearchPill, {
					Text = "Size 100x50",
					Size = UDim2.new(0, 100, 0, 50),
				}),
			}),
		},
	},
}
