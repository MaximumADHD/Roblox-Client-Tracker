--[[
	A slider with two knobs to allow selection of a range of values.

	Required Props:
		number Min: Min value of the slider
		number Max: Max value of the slider
		number LowerRangeValue: Current value for the lower range knob
		number UpperRangeValue: Current value for the upper range knob
		callback OnValuesChanged: The callback is called whenever the min or max value changes - OnValuesChanged(minValue: number, maxValue: number)
		Mouse Mouse: A Mouse ContextItem, which is provided via mapToProps.
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		Vector2 AnchorPoint: The anchorPoint of the component
		boolean Disabled: Whether to render in the enabled/disabled state
		boolean HideLowerKnob: Whether to hide the lower range knob.
			It is recommended to use the Slider component if you need a one-knob slider. It wraps this component with a clearer API for that use-case,
		number LayoutOrder: The layoutOrder of the component
		UDim2 Position: The position of the component
		UDim2 Size: The size of the component
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		number SnapIncrement: Incremental points that the slider's knob will snap to. A "0" snap increment means no snapping.
		number VerticalDragTolerance: A vertical pixel height for allowing a mouse button press to drag knobs on outside the component's size.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)

local Util = require(Framework.Util)
local Typecheck = Util.Typecheck
local StyleModifier = Util.StyleModifier

local UI = Framework.UI
local Container = require(UI.Container)
local HoverArea = require(UI.HoverArea)

local RangeSlider = Roact.PureComponent:extend("RangeSlider")
Typecheck.wrap(RangeSlider, script)

RangeSlider.defaultProps = {
	Disabled = false,
	Size = UDim2.new(1, 0, 1, 0),
	SnapIncrement = 0,
	VerticalDragTolerance = 300,
}

local function isUserInputTypeClick(inputType)
	return (inputType == Enum.UserInputType.Touch) or (inputType == Enum.UserInputType.MouseButton1)
end

function RangeSlider:init()
	self.sliderFrameRef = Roact.createRef()

	self.state = {
		pressed = false
	}

	self.getTotalRange = function()
		local range = self.props.Max - self.props.Min

		assert(range >= 0, "Range must be >= 0")

		return range
	end

	self.getSnappedValue = function(value)
		local snapIncrement = self.props.SnapIncrement
		local min = self.props.Min
		local max = self.props.Max

		if snapIncrement > 0 then
			local prevSnap = math.max(snapIncrement * math.floor(value / snapIncrement), min)
			local nextSnap = math.min(prevSnap + snapIncrement, max)
			return math.abs(prevSnap-value) < math.abs(nextSnap-value) and prevSnap or nextSnap
		end

		return math.clamp(value, min, max)
	end

	self.getMouseClickValue = function(input)
		local sliderFrameRef = self.sliderFrameRef.current
		local inputHorizontalOffsetNormalized = (input.Position.X - sliderFrameRef.AbsolutePosition.X) / sliderFrameRef.AbsoluteSize.X
		inputHorizontalOffsetNormalized = math.clamp(inputHorizontalOffsetNormalized, 0, 1)
		local valueBeforeSnapping = self.props.Min + (inputHorizontalOffsetNormalized * self.getTotalRange())

		return self.getSnappedValue(valueBeforeSnapping)
	end

	self.setValuesFromInput = function(input)
		local staticRangeDuringInput = self.getStaticRangeValueDuringInput(input)

		local mouseClickValue = self.getMouseClickValue(input)

		local lowerValue = math.min(mouseClickValue, staticRangeDuringInput)
		lowerValue = self.getSnappedValue(lowerValue)
		local clampedLowerValue = math.clamp(lowerValue, self.props.Min, self.props.UpperRangeValue)

		local upperValue = math.max(mouseClickValue, staticRangeDuringInput)
		upperValue = self.getSnappedValue(upperValue)
		local clampedUpperValue = math.clamp(upperValue, self.props.LowerRangeValue, self.props.Max)

		self.props.OnValuesChanged(clampedLowerValue, clampedUpperValue)
	end

	self.getStaticRangeValueDuringInput = function(input)
		if self.props.HideLowerKnob then
			return self.props.LowerRangeValue
		end

		local mouseClickValue = self.getMouseClickValue(input)

		if mouseClickValue < self.props.LowerRangeValue then
			return self.props.UpperRangeValue
		elseif mouseClickValue > self.props.UpperRangeValue then
			return self.props.LowerRangeValue
		end

		local diffToLower = math.abs(mouseClickValue - self.props.LowerRangeValue)
		local diffToUpper = math.abs(mouseClickValue - self.props.UpperRangeValue)

		if diffToLower < diffToUpper then
			return self.props.UpperRangeValue
		end

		return self.props.LowerRangeValue
	end

	self.onInputBegan = function(rbx, input)
		if self.props.Disabled then
			return

		elseif isUserInputTypeClick(input.UserInputType) then
			self:setState({
				pressed = true,
			})
			self.setValuesFromInput(input)
		end
	end

	self.onInputChanged = function(rbx, input)
		if self.props.Disabled then
			return

		elseif self.state.pressed and input.UserInputType == Enum.UserInputType.MouseMovement then
			self.setValuesFromInput(input)
		end
	end

	self.onInputEnded = function(rbx, input)
		if not self.props.Disabled and isUserInputTypeClick(input.UserInputType) then
			self:setState({
				pressed = false,
			})
		end
	end
end

function RangeSlider:render()
	local theme = self.props.Theme
	local style = theme:getStyle("Framework", self)

	local anchorPoint = self.props.AnchorPoint
	local isDisabled = self.props.Disabled
	local min = self.props.Min
	local layoutOrder = self.props.LayoutOrder
	local lowerRangeValue = self.props.LowerRangeValue
	local position = self.props.Position
	local upperRangeValue = self.props.UpperRangeValue
	local size = self.props.Size
	local verticalDragBuffer = self.props.VerticalDragTolerance
	local hideLowerKnob = self.props.HideLowerKnob

	local background = style.Background
	local backgroundStyle = style.BackgroundStyle
	local foreground = style.Foreground
	local foregroundStyle = style.ForegroundStyle
	local knobSize = style.KnobSize or Vector2.new()
	local minKnobBackground = not hideLowerKnob and style.LowerKnobBackground or nil
	local minKnobBackgroundStyle = style.LowerKnobBackgroundStyle or {}
	local maxKnobBackground = style.UpperKnobBackground
	local maxKnobBackgroundStyle = style.UpperKnobBackgroundStyle or {}

	local lowerFillPercent = (lowerRangeValue - min) / self.getTotalRange()
	local upperFillPercent = (upperRangeValue - min) / self.getTotalRange()
	local foregroundHorizontalSize = upperFillPercent - lowerFillPercent

	local styleModifier
	if isDisabled then
		styleModifier = StyleModifier.Disabled
	end

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = UDim2.new(UDim.new(size.X.Scale, size.X.Offset - knobSize.X), size.Y),
		[Roact.Ref] = self.sliderFrameRef,
	}, {
		Background = Roact.createElement(Container, {
			Background = background,
			BackgroundStyle = backgroundStyle,
			BackgroundStyleModifier = styleModifier,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			Foreground = Roact.createElement(Container, {
				Background = foreground,
				BackgroundStyle = foregroundStyle,
				BackgroundStyleModifier = styleModifier,
				Size = UDim2.new(foregroundHorizontalSize, 0, 1, 0),
				Position = UDim2.new(lowerFillPercent, 0, 0.5, 0),
			}),
		}),

		LowerKnob = not hideLowerKnob and Roact.createElement(Container, {
			Background = minKnobBackground,
			BackgroundStyle = minKnobBackgroundStyle,
			BackgroundStyleModifier = styleModifier,
			Position = UDim2.new(lowerFillPercent, 0, 0.5, 0),
			Size = UDim2.new(0, knobSize.X, 0, knobSize.Y),
			ZIndex = 3,
		}),

		UpperKnob = Roact.createElement(Container, {
			Background = maxKnobBackground,
			BackgroundStyle = maxKnobBackgroundStyle,
			BackgroundStyleModifier = styleModifier,
			Position = UDim2.new(upperFillPercent, 0, 0.5, 0),
			Size = UDim2.new(0, knobSize.X, 0, knobSize.Y),
			ZIndex = 3,
		}),

		ClickHandler = (not isDisabled) and Roact.createElement("ImageButton", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, knobSize.X, 1, self.state.pressed and verticalDragBuffer or 0),
			ZIndex = 4,

			[Roact.Event.InputBegan] = self.onInputBegan,
			[Roact.Event.InputChanged] = self.onInputChanged,
			[Roact.Event.InputEnded] =  self.onInputEnded,
		}),

		HoverArea = (not isDisabled) and Roact.createElement(HoverArea, {
			Cursor = "PointingHand"
		}),
	})
end

ContextServices.mapToProps(RangeSlider, {
	Mouse = ContextServices.Mouse,
	Theme = ContextServices.Theme,
})

return RangeSlider