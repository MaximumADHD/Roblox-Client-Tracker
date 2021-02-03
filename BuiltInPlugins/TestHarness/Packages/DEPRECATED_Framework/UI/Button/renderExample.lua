local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Button = UI.Button
local Container = UI.Container

return function()
	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 0, 100)
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 10),
		}),
		Round = Roact.createElement(Button, {
			Style = "Round",
			Text = "Round",
			Size = UDim2.fromOffset(120, 32),
			OnClick = function() end,
			LayoutOrder = 1,
		}),
		RoundPrimary = Roact.createElement(Button, {
			Style = "RoundPrimary",
			Text = "RoundPrimary",
			Size = UDim2.fromOffset(120, 32),
			OnClick = function() end,
			LayoutOrder = 2,
		}),
	})
end
