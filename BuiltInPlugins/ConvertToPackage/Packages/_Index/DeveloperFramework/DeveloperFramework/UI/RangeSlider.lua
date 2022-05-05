--[[
	A slider with two knobs to allow selection of a range of values.

	Required Props:
		number Min: Min value of the slider
		number Max: Max value of the slider
		number LowerRangeValue: Current value for the lower range knob
		number UpperRangeValue: Current value for the upper range knob
		callback OnValuesChanged: The callback is called whenever the min or max value changes - OnValuesChanged(minValue: number, maxValue: number)
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.

	Optional Props:
		callback OnChangeBegan: A function that is called when the user starts interacting
			with a slider before changing properties. Used to dispatch AddWaypoint for History.
		callback OnRightClick: A callback for when the user right-clicks on this ui element.
		string Tooltip: A text string which when passed in is displayed as tooltip when hovering over the ui element
		Vector2 AnchorPoint: The anchorPoint of the component
		boolean Disabled: Whether to render in the enabled/disabled state
		boolean HideLowerKnob: Whether to hide the lower range knob.
			It is recommended to use the Slider component if you need a one-knob slider. It wraps this component with a clearer API for that use-case,
		boolean FillFromCenter: Whether to fill the bar from center to either side instead of from one end to the other
		number LayoutOrder: The layoutOrder of the component
		UDim2 Position: The position of the component
		UDim2 Size: The size of the component
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		number SnapIncrement: Incremental points that the slider's knob will snap to. A "0" snap increment means no snapping.
		number VerticalDragTolerance: A vertical pixel height for allowing a mouse button press to drag knobs on outside the component's size.
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]
local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local enumerate = require(Framework.Util.enumerate)
local Util = require(Framework.Util)
local Typecheck = Util.Typecheck
local prioritize = Util.prioritize
local StyleModifier = Util.StyleModifier
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local UI = Framework.UI
local Container = require(UI.Container)
local HoverArea = require(UI.HoverArea)
local Tooltip = require(UI.Tooltip)

local RangeSlider = Roact.PureComponent:extend("RangeSlider")
Typecheck.wrap(RangeSlider, script)


local GetFFlagFaceControlsEditorUI = function()
	return game:GetFastFlag("FaceControlsEditorUI2")
end

RangeSlider.defaultProps = {
	Disabled = false,
	SnapIncrement = 0,
	VerticalDragTolerance = 300,
}

RangeSlider.KnobType = enumerate("KnobType", {
	"Lower",
	"Upper",
})

local isInputMainPress = Util.isInputMainPress

function RangeSlider:init()
	self.currentlySelectedKnob = nil

	self.sliderFrameRef = Roact.createRef()

	self.state = {
		pressed = false,
		--internal props for caching calculation results for rotated sliders:
		rotation = nil,
		width = nil,
		centerPoint = nil,		
		unit = nil	
	}
	
	self.isSwitchingKnob = function(newKnobType)
		return self.currentlySelectedKnob ~= nil and self.currentlySelectedKnob ~= newKnobType
	end
	
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

	--used for getting the percentage of a point pos (mouse pos in our case) along our slider
	self.GetPercentage = function(sliderFrameRef, pos)		
		--do heavier calc less frequently
		if not self.state.width or self.state.width ~= sliderFrameRef.AbsoluteSize.X or not self.state.rotation or self.state.rotation ~= sliderFrameRef.AbsoluteRotation then
			local half = 0.5
			local rotation = sliderFrameRef.AbsoluteRotation
			local rotationRad = math.rad(rotation)
			local centerPoint = sliderFrameRef.AbsolutePosition + half * sliderFrameRef.AbsoluteSize
			local width = sliderFrameRef.AbsoluteSize.X
			self:setState({
				rotation = rotation,
				width = width,
				centerPoint = centerPoint,		
				unit = Vector2.new(math.cos(rotationRad), math.sin(rotationRad))
			})
		end
		return (pos-self.state.centerPoint):Dot(self.state.unit) / self.state.width + 0.5			
	end	

	self.getMouseClickValue = function(input)
		local sliderFrameRef = self.sliderFrameRef.current

		local valueBeforeSnapping = 0	

		-- handling for rotated sliders
		--[[
		The slider/rangeslider (before the addition below) only worked well when used horizontally (not rotated), 
		both because it only checks for horizontal input dir and also because AbsolutePosition returns a wrong value 
		for the container when rotated
		]]

		if GetFFlagFaceControlsEditorUI() and sliderFrameRef.AbsoluteRotation ~= 0 then
			local pos = Vector2.new( input.Position.X,  input.Position.Y)

			local percentage = self.GetPercentage(sliderFrameRef, pos)
			valueBeforeSnapping = math.clamp(percentage, 0, 1 ) * self.getTotalRange()
		else	
			-- existing handling for not rotated sliders
			local inputHorizontalOffsetNormalized = (input.Position.X - sliderFrameRef.AbsolutePosition.X) / sliderFrameRef.AbsoluteSize.X
			inputHorizontalOffsetNormalized = math.clamp(inputHorizontalOffsetNormalized, 0, 1)
			valueBeforeSnapping = self.props.Min + (inputHorizontalOffsetNormalized * self.getTotalRange())
		end

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
			self.currentlySelectedKnob = self.KnobType.Lower
			return self.props.UpperRangeValue
		elseif mouseClickValue > self.props.UpperRangeValue then
			self.currentlySelectedKnob = self.KnobType.Upper
			return self.props.LowerRangeValue
		end

		local diffToLower = math.abs(mouseClickValue - self.props.LowerRangeValue)
		local diffToUpper = math.abs(mouseClickValue - self.props.UpperRangeValue)

		if diffToLower < diffToUpper then
			if self.isSwitchingKnob(self.KnobType.Lower) then
				return self.props.UpperRangeValue - self.props.SnapIncrement
			end
			self.currentlySelectedKnob = self.KnobType.Lower
			return self.props.UpperRangeValue
		end

		if self.isSwitchingKnob(self.KnobType.Upper) then
			return self.props.LowerRangeValue + self.props.SnapIncrement
		end
		self.currentlySelectedKnob = self.KnobType.Upper
		return self.props.LowerRangeValue
	end

	self.onInputBegan = function(rbx, input)
		local isMainPress = isInputMainPress(input)
		if self.props.Disabled then
			return
		elseif isMainPress then
			self:setState({
				pressed = true,
			})
			if self.props.OnChangeBegan then
				self.props.OnChangeBegan()
			end
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
		local isMainPress = isInputMainPress(input)
		if not self.props.Disabled and isMainPress then
			self.currentlySelectedKnob = nil
			self:setState({
				pressed = false,
			})
		end
	end
end

function getMidPoint(lower, upper)
	return (lower + upper) * 0.5
end

function RangeSlider:render()
	local props = self.props
	local theme = props.Theme
	local style
	if THEME_REFACTOR then
		style = props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end
	
	local tooltipText = props.Tooltip or nil
	local hasTooltip = tooltipText ~= nil and tooltipText ~= ""
	local anchorPoint = props.AnchorPoint
	local isDisabled = props.Disabled
	local min = props.Min
	local layoutOrder = props.LayoutOrder
	local lowerRangeValue = props.LowerRangeValue
	local position = props.Position
	local upperRangeValue = props.UpperRangeValue
	local size = prioritize(props.Size, style.Size, UDim2.fromScale(1, 1))
	local verticalDragBuffer = props.VerticalDragTolerance
	local hideLowerKnob = props.HideLowerKnob
	local fillFromCenter = props.FillFromCenter

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
	if GetFFlagFaceControlsEditorUI() and fillFromCenter then
		local center = getMidPoint(self.props.Min, self.props.Max)
		local centerFillPercent = (center - min) / self.getTotalRange()
		foregroundHorizontalSize =  (upperFillPercent - centerFillPercent) * -1
	end

	local styleModifier
	if isDisabled then
		styleModifier = StyleModifier.Disabled
	end
	local onRightClick = props.OnRightClick

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
			Size = UDim2.fromScale(1, 1),
		}, {
			Foreground = Roact.createElement(Container, {
				Background = foreground,
				BackgroundStyle = foregroundStyle,
				BackgroundStyleModifier = styleModifier,
				Size = UDim2.new(foregroundHorizontalSize, 0, 1, 0),
				Position = GetFFlagFaceControlsEditorUI() and fillFromCenter and UDim2.new(upperFillPercent, 0, 0.5, 0) or UDim2.new(lowerFillPercent, 0, 0.5, 0),
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
			[Roact.Event.MouseButton2Click] = onRightClick,
		}),
		Tooltip = hasTooltip and Roact.createElement(Tooltip, {
			MaxWidth = 1000,
			Text = tooltipText,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),		
		HoverArea = (not isDisabled) and Roact.createElement(HoverArea, {
			Cursor = "PointingHand"
		}),
	})
end


RangeSlider = withContext({
	Mouse = ContextServices.Mouse,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})(RangeSlider)



return RangeSlider
