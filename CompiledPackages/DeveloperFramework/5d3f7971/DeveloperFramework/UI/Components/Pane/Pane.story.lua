local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Parent.React)
local TextLabel = require(Framework.UI.Components.TextLabel)
local Pane = require(Framework.UI.Components.Pane)
local useState = React.useState

local ActiveBackgroundColor = Color3.new(0, 1, 0)
local ActiveTextColor = Color3.new(0, 0, 0)

local function counter()
	local count = -1
	return function()
		count += 1
		return count
	end
end

return function()
	local isPressed, setPressed = useState(false)
	local isClicked, setClicked = useState(false)
	local count = counter()
	return React.createElement(Pane, {
		[React.Tag] = "X-ColumnM X-Fit X-Pad",
	}, {
		Default = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has the Default style",
				[React.Tag] = "X-Fit",
			}),
		}),
		Paper = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "Paper X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has Paper style",
				[React.Tag] = "X-Fit",
			}),
		}),
		Main = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "Main X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has Main style",
				[React.Tag] = "X-Fit",
			}),
		}),
		Muted = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "Muted X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has Muted style",
				[React.Tag] = "X-Fit",
			}),
		}),
		Contrast = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "Contrast X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has Contrast style",
				[React.Tag] = "X-Fit",
			}),
		}),
		Corner = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "Main X-Corner X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has Main X-Corner style",
				[React.Tag] = "X-Fit",
			}),
		}),
		PrimaryBrand = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "PrimaryBrand X-Corner X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has a PrimaryBrand X-Corner style",
				[React.Tag] = "X-Fit",
			}),
		}),
		Primary = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "Primary X-Corner X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has a Primary X-Corner style",
				[React.Tag] = "X-Fit Contrast",
			}),
		}),
		Secondary = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "Secondary X-Corner X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has a Secondary X-Corner style",
				[React.Tag] = "X-Fit",
			}),
		}),
		Border = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "Main X-Stroke X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has a Main X-Stroke style",
				[React.Tag] = "X-Fit",
			}),
		}),
		RoundBorder = React.createElement(Pane, {
			LayoutOrder = count(),
			[React.Tag] = "Main X-Stroke X-Corner X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has a Main X-Stroke X-Corner style",
				[React.Tag] = "X-Fit",
			}),
		}),
		CustomColors = React.createElement(Pane, {
			BackgroundColor3 = Color3.fromRGB(255, 200, 200),
			BorderColor3 = Color3.fromRGB(255, 100, 0),
			LayoutOrder = count(),
			[React.Tag] = "Main Border X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has a Main Border style with custom colors",
				TextColor = Color3.fromRGB(0, 0, 0),
				[React.Tag] = "X-Fit",
			}),
		}),
		Pressable = React.createElement(Pane, {
			BackgroundColor = isPressed and ActiveBackgroundColor or nil,
			OnPress = function()
				setPressed(true)
			end,
			LayoutOrder = count(),
			[React.Tag] = "Main Border X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has a Main Border style and an OnPress callback.\n\nPress me!",
				TextColor = isPressed and ActiveTextColor or nil,
				[React.Tag] = "X-Fit",
			}),
		}),
		Clickable = React.createElement(Pane, {
			LayoutOrder = count(),
			BackgroundColor3 = isClicked and ActiveBackgroundColor or nil,
			OnClick = function()
				setClicked(true)
			end,
			[React.Tag] = "Main Border X-Fit X-Pad",
		}, {
			Label = React.createElement(TextLabel, {
				Text = "This pane has a Main Border style and an OnClick callback.\n\nClick me!",
				TextColor = isClicked and ActiveTextColor or nil,
				[React.Tag] = "X-Fit",
			}),
		}),
	})
end
