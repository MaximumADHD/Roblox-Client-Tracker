local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local LinkText = require(Framework.UI.Components.LinkText)
local Pane = require(Framework.UI.Components.Pane)

return {
	stories = {
		Default = function()
			return Roact.createElement(Pane, {
				Style = "BorderBox",
				AutomaticSize = Enum.AutomaticSize.XY,
				Layout = Enum.FillDirection.Horizontal,
				Spacing = UDim.new(0, 10),
				Padding = 5,
			}, {
				Link = Roact.createElement(LinkText, {
					Text = "Link 1",
					LayoutOrder = 1,
					OnClick = function()
						print("Clicked!")
					end,
				}),
				Link2 = Roact.createElement(LinkText, {
					Text = "Link 2 which is longer",
					LayoutOrder = 2,
					OnClick = function()
						print("Clicked!")
					end,
				}),
				Link3 = Roact.createElement(LinkText, {
					Text = "Link 3",
					LayoutOrder = 3,
					OnClick = function()
						print("Clicked!")
					end,
				}),
			})
		end,
		Truncated = function()
			return Roact.createElement(Pane, {
				Style = "BorderBox",
				Size = UDim2.new(1, 0, 0, 40),
				Padding = 5,
			}, {
				Link = Roact.createElement(LinkText, {
					Text = "Click Me! I get truncated when I am very long and go off the end of the screen, for example like this!",
					TextTruncate = Enum.TextTruncate.AtEnd,
					OnClick = function()
						print("Clicked!")
					end,
				}),
			})
		end,
		Wrapped = function()
			return Roact.createElement(Pane, {
				Style = "BorderBox",
				Size = UDim2.new(0, 400, 0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				Padding = 5,
			}, {
				Link = Roact.createElement(LinkText, {
					Text = "Click Me! I get wrapped when I am very long and go on to the next line, for example like this!",
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					OnClick = function()
						print("Clicked!")
					end,
				}),
			})
		end,
	},
}
