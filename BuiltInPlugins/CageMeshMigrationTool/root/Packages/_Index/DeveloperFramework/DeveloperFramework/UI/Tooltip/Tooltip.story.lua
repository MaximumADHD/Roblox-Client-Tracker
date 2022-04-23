local FFlagDevFrameworkTooltipCustomContent = game:GetFastFlag("DevFrameworkTooltipCustomContent")

local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Tooltip = UI.Tooltip
local Button = UI.Button
local LinkText = UI.LinkText
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local Slider = UI.Slider

return {
	stories = {
		{
			name = "For label",
			story = Roact.createElement(TextLabel, {
				Text = "Hover over this text",
				Size = UDim2.new(1, 0, 0, 20)
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					Text = "An example tooltip"
				})
			}),
		},
		{
			name = "For button",
			story = Roact.createElement(Button, {
				Text = "Hover over this button",
				Size = UDim2.new(1, 0, 0, 32),
				Style = "Round",
				OnClick = function() end,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					Text = "Some example which is really rather long indeed!"
				})
			}),
		},
		{
			name = "For automatic size child",
			story = Roact.createElement(Tooltip, {
				Text = "Some example which is really rather long indeed!",
				Child = Roact.createElement(Pane, {
					Style = "BorderBox",
					Padding = 10,
				}, {
					Child = Roact.createElement(TextLabel, {
						Text = "Hover over this pane!",
						AutomaticSize = Enum.AutomaticSize.XY,
					})
				})
			}),
		},
		{
			name = "Slider With Tooltip",
			story = Roact.createElement(Tooltip, {
				Text = "An example tooltip",
				Child =  Roact.createElement(Slider, {
					Size = UDim2.new(0, 200, 0, 20),
					Min = 0,
					Max = 10,
					Value = 5,
					OnValueChanged = function() end,
				}),
			})
		},
		{
			name = "Tooltip with Custom Content",
			story = if FFlagDevFrameworkTooltipCustomContent then Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				Text = "Hover over this text",
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					Content = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.Y,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = Enum.FillDirection.Vertical,
						Spacing = 6,
					}, {
						TextLabel = Roact.createElement(TextLabel, {
							AutomaticSize = Enum.AutomaticSize.Y,
							LayoutOrder = 1,
							Size = UDim2.fromScale(1, 0),
							Text = "An example tooltip with text and a link",
							TextWrapped = true,
							TextXAlignment = Enum.TextXAlignment.Left,
						}),

						LinkText = Roact.createElement(LinkText, {
							LayoutOrder = 2,
							Text = "Click me",
							OnClick = function()
								print("Clicked")
							end,
						}),
					}),
					ContentExtents = Vector2.new(180, 64),
				})
			}) else Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = "Please enable FFlagDevFrameworkTooltipCustomContent",
				TextWrapped = true,
			})
		}
	}
}
