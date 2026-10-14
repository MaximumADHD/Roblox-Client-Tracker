local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Pane = require(Framework.UI.Components.Pane)
local RangeSlider = require(Framework.UI.Components.RangeSlider)

local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

local ExampleRangeSlider = Roact.PureComponent:extend("ExampleRangeSlider")

local MAX_VALUE = 5
local MIN_VALUE = 0

function formatNumber(number)
	local precision = 100
	return tostring(math.floor(0.5 + number * precision) / precision)
end

function getTootipText(number)
	return "test slider: " .. formatNumber(number)
end

function ExampleRangeSlider:init()
	self.state = {
		currentMax = MAX_VALUE,
		currentMin = MIN_VALUE,
	}
	self.setValues = function(lowerValue, upperValue)
		self:setState({
			Tooltip = getTootipText(upperValue),
			currentMax = upperValue,
			currentMin = lowerValue,
		})
	end
end

function ExampleRangeSlider:render()
	local layoutOrderIterator = LayoutOrderIterator.new()

	local children = {
		RangeSlider = Roact.createElement(RangeSlider, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Disabled = false,
			LowerRangeValue = self.state.currentMin,
			UpperRangeValue = self.state.currentMax,
			Min = MIN_VALUE,
			Max = MAX_VALUE,
			OnValuesChanged = self.setValues,
			Size = UDim2.new(0, 200, 0, 20),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			SnapIncrement = 1,
			VerticalDragTolerance = 300,
		}),
		DisabledRangeSlider = Roact.createElement(RangeSlider, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Disabled = true,
			LowerRangeValue = 1,
			UpperRangeValue = 3,
			Min = MIN_VALUE,
			Max = MAX_VALUE,
			OnValuesChanged = function() end,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 200, 0, 20),
		}),
		RangeSliderNoLower = Roact.createElement(RangeSlider, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Disabled = false,
			HideLowerKnob = true,
			LowerRangeValue = self.state.currentMin,
			UpperRangeValue = self.state.currentMax,
			Min = MIN_VALUE,
			Max = MAX_VALUE,
			OnValuesChanged = self.setValues,
			Size = UDim2.new(0, 200, 0, 20),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			SnapIncrement = 1,
			VerticalDragTolerance = 300,
		}),
		RangeSliderFillFromCenter = Roact.createElement(RangeSlider, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			AnchorPoint = Vector2.new(0.5, 0.5),
			FillFromCenter = true,
			Disabled = false,
			HideLowerKnob = true,
			LowerRangeValue = self.state.currentMin,
			UpperRangeValue = self.state.currentMax,
			Min = MIN_VALUE,
			Max = MAX_VALUE,
			Tooltip = getTootipText(self.state.currentMax),
			OnValuesChanged = self.setValues,
			Size = UDim2.new(0, 200, 0, 20),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			VerticalDragTolerance = 300,
		}),
		RotatedSliderContainer = Roact.createElement("Frame", {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Rotation = 25,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 150, 0, 20),
		}, {
			Slider = Roact.createElement(RangeSlider, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Disabled = false,
				HideLowerKnob = true,
				LowerRangeValue = self.state.currentMin,
				UpperRangeValue = self.state.currentMax,
				Min = MIN_VALUE,
				Max = MAX_VALUE,
				OnValuesChanged = self.setValues,
				Size = UDim2.new(0, 100, 0, 20),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				SnapIncrement = 1,
				VerticalDragTolerance = 300,
			}),
		}),
		RangeSliderVertical = Roact.createElement(RangeSlider, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Disabled = false,
			Layout = Enum.FillDirection.Vertical,
			LowerRangeValue = self.state.currentMin,
			UpperRangeValue = self.state.currentMax,
			Min = MIN_VALUE,
			Max = MAX_VALUE,
			OnValuesChanged = self.setValues,
			Size = UDim2.new(0, 20, 0, 200),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			VerticalDragTolerance = 300,
		}),
		RangeSliderColor = Roact.createElement(RangeSlider, {
			ImageColor3 = Color3.new(1, 0, 0),
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Disabled = false,
			LowerRangeValue = self.state.currentMin,
			UpperRangeValue = self.state.currentMax,
			Min = MIN_VALUE,
			Max = MAX_VALUE,
			OnValuesChanged = self.setValues,
			Size = UDim2.new(0, 200, 0, 20),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			VerticalDragTolerance = 300,
		}),
		RangeSliderHideBackground = Roact.createElement(RangeSlider, {
			HideBackground = true,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Disabled = false,
			LowerRangeValue = self.state.currentMin,
			UpperRangeValue = self.state.currentMax,
			Min = MIN_VALUE,
			Max = MAX_VALUE,
			OnValuesChanged = self.setValues,
			Size = UDim2.new(0, 200, 0, 20),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			VerticalDragTolerance = 300,
		}),
		RangeSliderNoInput = Roact.createElement(RangeSlider, {
			HideBackground = true,
			HideLowerKnob = true,
			HideUpperKnob = true,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Disabled = false,
			LowerRangeValue = self.state.currentMin,
			UpperRangeValue = self.state.currentMax,
			Min = MIN_VALUE,
			Max = MAX_VALUE,
			OnValuesChanged = self.setValues,
			Size = UDim2.new(0, 200, 0, 20),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			VerticalDragTolerance = 300,
		}),
	}

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		Padding = 10,
		Spacing = 15,
	}, children)
end

return ExampleRangeSlider
