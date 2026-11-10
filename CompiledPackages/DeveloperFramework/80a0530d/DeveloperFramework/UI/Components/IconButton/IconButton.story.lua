local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Parent.React)
local IconButton = require(Framework.UI.Components.IconButton)

local onClick = function()
	print("IconButton clicked")
end

return {
	stories = {
		{
			name = "Default Button",
			story = React.createElement(IconButton, {
				Cursor = "PointingHand",
				OnClick = onClick,
				Text = "Default Button",
				[React.Tag] = "X-Fit",
			}),
		},
		{
			name = "Primary Brand Button",
			story = React.createElement(IconButton, {
				Cursor = "PointingHand",
				OnClick = onClick,
				Text = "PrimaryBrand Button",
				[React.Tag] = "PrimaryBrand X-Fit",
			}),
		},
		{
			name = "Primary Button",
			story = React.createElement(IconButton, {
				Cursor = "PointingHand",
				OnClick = onClick,
				Text = "Primary Button",
				[React.Tag] = "Primary X-Fit",
			}),
		},
		{
			name = "Secondary Button",
			story = React.createElement(IconButton, {
				Cursor = "PointingHand",
				OnClick = onClick,
				Text = "Secondary Button",
				[React.Tag] = "Secondary X-Fit",
			}),
		},
		{
			name = "Custom Color",
			story = React.createElement(IconButton, {
				BackgroundColor3 = Color3.fromRGB(200, 100, 100),
				Cursor = "PointingHand",
				OnClick = onClick,
				Text = "Custom Button",
				[React.Tag] = "X-Fit",
			}),
		},
		{
			name = "Button with Tooltip",
			story = React.createElement(IconButton, {
				LeftIcon = "rbxasset://textures/ui/common/robux_color@2x.png",
				Cursor = "PointingHand",
				OnClick = onClick,
				Text = "Hover over me",
				TooltipText = "This is a button tooltip",
				[React.Tag] = "X-Fit",
			}),
		},
		{
			name = "Disabled",
			story = React.createElement(IconButton, {
				Text = "Disabled",
				[React.Tag] = "X-Fit Disabled",
			}),
		},
		{
			name = "IconOnly",
			story = React.createElement(IconButton, {
				LeftIcon = "rbxasset://textures/ui/common/robux_color@2x.png",
				Cursor = "PointingHand",
				OnClick = onClick,
				[React.Tag] = "X-Fit",
			}),
		},
		{
			name = "NoOnClick",
			story = React.createElement(IconButton, {
				TextXAlignment = Enum.TextXAlignment.Center,
				Text = "No OnClick Passed",
				[React.Tag] = "X-Fit",
			}),
		},
		{
			name = "RightIcon",
			story = React.createElement(IconButton, {
				OnClick = onClick,
				RightIcon = "rbxasset://textures/ui/common/robux_color@2x.png",
				Text = "Text",
				[React.Tag] = "X-Fit",
			}),
		},
		{
			name = "Link",
			story = React.createElement(IconButton, {
				Cursor = "PointingHand",
				LeftIcon = "rbxasset://textures/ui/common/robux_color@2x.png",
				OnClick = onClick,
				Text = "Link style",
				[React.Tag] = "X-Fit Link",
			}),
		},
	},
}
