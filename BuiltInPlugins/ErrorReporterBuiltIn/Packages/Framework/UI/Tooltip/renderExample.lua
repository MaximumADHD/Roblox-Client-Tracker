local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Container = UI.Container
local Tooltip = UI.Tooltip
local Button = UI.Button
local TextLabel = UI.Decoration.TextLabel

return function()
	return Roact.createElement(Container, {
		Size = UDim2.new(1, -30, 0, 60)
	}, {
		Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 10),
		}),
		Roact.createElement(TextLabel, {
			Text = "Hover over this text",
			Size = UDim2.new(1, 0, 0, 20)
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = "An example tooltip"
			})
		}),
		Roact.createElement(Button, {
			Text = "Hover over this button",
			Size = UDim2.new(1, 0, 0, 32),
			Style = "Round",
			OnClick = function() end,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = "Some example which is really rather long indeed!"
			})
		}),
	})
end
