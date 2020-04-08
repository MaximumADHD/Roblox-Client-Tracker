local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local RangeSlider = UI.RangeSlider
local Container = UI.Container

return function()
	return Roact.createElement(Container, {
		Size = UDim2.fromOffset(200, 20),
	}, {
		RangeSlider = Roact.createElement(RangeSlider, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Disabled = false,
			LowerRangeValue = 0,
			UpperRangeValue = 4,
			Min = 0,
			Max = 4,
			OnValuesChanged = function() end,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 200, 0, 20),
			SnapIncrement = 1,
			VerticalDragTolerance = 300,
		}),
	})
end
