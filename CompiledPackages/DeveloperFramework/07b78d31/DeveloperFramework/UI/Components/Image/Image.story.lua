local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Parent.React)
local Image = require(Framework.UI.Components.Image)

return {
	stories = {
		{
			name = "Image",
			story = function()
				return React.createElement(Image, {
					Image = "rbxasset://textures/ui/common/robux_color@2x.png",
					Size = UDim2.fromOffset(100, 100),
				})
			end,
		},
		{
			name = "Icon16",
			story = function()
				return React.createElement(Image, {
					Image = "rbxasset://textures/StudioSharedUI/search.png",
					[React.Tag] = "Icon16",
				})
			end,
		},
		{
			name = "Primary Icon16",
			story = function()
				return React.createElement(Image, {
					Image = "rbxasset://textures/StudioSharedUI/search.png",
					[React.Tag] = "Icon16 Primary",
				})
			end,
		},
		{
			name = "ArrowIcon",
			story = function()
				return React.createElement(Image, {
					[React.Tag] = "ArrowIcon",
				})
			end,
		},
		{
			name = "ErrorIcon",
			story = function()
				return React.createElement(Image, {
					[React.Tag] = "ErrorIcon",
				})
			end,
		},
	},
}
