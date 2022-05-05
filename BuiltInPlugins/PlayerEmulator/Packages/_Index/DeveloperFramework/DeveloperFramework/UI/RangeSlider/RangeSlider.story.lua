local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local RangeSlider = require(Framework.UI.RangeSlider)

local GetFFlagFaceControlsEditorUI = function()
	return game:GetFastFlag("FaceControlsEditorUI2")
end

local UI = require(Framework.UI)
local Pane = UI.Pane

local ExampleRangeSlider = Roact.PureComponent:extend("ExampleRangeSlider")

local MAX_VALUE = 5
local MIN_VALUE = 0

function formatNumber(number)
	local precision = 100
	return tostring(math.floor(.5 + number * precision) / precision)
end

function getTootipText(number)
	return "test slider: "..formatNumber(number)
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
	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		AutomaticSize = Enum.AutomaticSize.Y,
		Padding = 10,
		Spacing = 15,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, 10),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		RangeSlider = Roact.createElement(RangeSlider, {
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
		RangeSliderFillFromCenter = GetFFlagFaceControlsEditorUI() and Roact.createElement(RangeSlider, {
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
			Rotation = 25,
			BackgroundTransparency = 1,	
			Size = UDim2.new(0, 150, 0, 20),
		},	
		{				
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
		})	
	})
end

return ExampleRangeSlider
