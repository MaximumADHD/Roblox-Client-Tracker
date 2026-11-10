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
		callback OnInputEnded: A function that is called when the user stops interacting with the slider.
		callback OnRightClick: A callback for when the user right-clicks on this ui element.
		string Tooltip: A text string which when passed in is displayed as tooltip when hovering over the ui element
		Vector2 AnchorPoint: The anchorPoint of the component
		boolean Disabled: Whether to render in the enabled/disabled state
		boolean HideBackground: Whether or not to hide the background of the slider
		boolean HideLowerKnob: Whether to hide the lower range knob.
			It is recommended to use the Slider component if you need a one-knob slider. It wraps this component with a clearer API for that use-case,
		boolean HideUpperKnob: Whether to hide the lower range knob.
		boolean FillFromCenter: Whether to fill the bar from center to either side instead of from one end to the other
		Enum.FillDirection Layout: Determins which orientation to make the range slider
		number HorizontalDragTolerance: A horizontal pixel height for allowing a mouse button press to drag knobs on outside the component's size.
		number LayoutOrder: The layoutOrder of the component
		UDim2 Position: The position of the component
		UDim2 Size: The size of the component
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		number SnapIncrement: Incremental points that the slider's knob will snap to. A "0" snap increment means no snapping.
		number VerticalDragTolerance: A vertical pixel height for allowing a mouse button press to drag knobs on outside the component's size.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Color3 ImageColor3: can be used to override the image color (done for slider and dragbox to indicate non min/ max/ non default value)
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local enumerate = require(Framework.Util.enumerate)
local Util = require(Framework.Util)
local Typecheck = require(Framework.Util.Typecheck)
local prioritize = Util.prioritize
local StyleModifier = require(Framework.Util.StyleModifier)

local UI = Framework.UI
local HoverArea = require(UI.Components.HoverArea)
local Pane = require(UI.Components.Pane)
local Tooltip = require(UI.Components.Tooltip)

local RangeSlider = Roact.PureComponent:extend("RangeSlider")
Typecheck.wrap(RangeSlider, script)

RangeSlider.defaultProps = {
	Disabled = false,
	Layout = Enum.FillDirection.Horizontal,
	SnapIncrement = 0,
	HorizontalDragTolerance = 300,
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
		unit = nil,
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
			return math.abs(prevSnap - value) < math.abs(nextSnap - value) and prevSnap or nextSnap
		end

		return math.clamp(value, min, max)
	end

	--used for getting the percentage of a point pos (mouse pos in our case) along our slider
	self.GetPercentage = function(sliderFrameRef, pos)
		--do heavier calc less frequently
		if self.props.Layout == Enum.FillDirection.Horizontal then
			if
				not self.state.width
				or self.state.width ~= sliderFrameRef.AbsoluteSize.X
				or not self.state.rotation
				or self.state.rotation ~= sliderFrameRef.AbsoluteRotation
			then
				local half = 0.5
				local rotation = sliderFrameRef.AbsoluteRotation
				local rotationRad = math.rad(rotation)
				local centerPoint = sliderFrameRef.AbsolutePosition + half * sliderFrameRef.AbsoluteSize
				local width = sliderFrameRef.AbsoluteSize.X
				self:setState({
					rotation = rotation,
					width = width,
					centerPoint = centerPoint,
					unit = Vector2.new(math.cos(rotationRad), math.sin(rotationRad)),
				})
			end
			return (pos - self.state.centerPoint):Dot(self.state.unit) / self.state.width + 0.5
		else
			if
				not self.state.height
				or self.state.height ~= sliderFrameRef.AbsoluteSize.Y
				or not self.state.rotation
				or self.state.rotation ~= sliderFrameRef.AbsoluteRotation
			then
				local half = 0.5
				local rotation = sliderFrameRef.AbsoluteRotation
				local rotationRad = math.rad(rotation)
				local centerPoint = sliderFrameRef.AbsolutePosition + half * sliderFrameRef.AbsoluteSize
				local height = sliderFrameRef.AbsoluteSize.Y
				self:setState({
					rotation = rotation,
					height = height,
					centerPoint = centerPoint,
					unit = Vector2.new(math.sin(rotationRad), math.cos(rotationRad)),
				})
			end

			return (pos - self.state.centerPoint):Dot(self.state.unit) / self.state.height + 0.5
		end
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

		if sliderFrameRef.AbsoluteRotation ~= 0 then
			local pos = Vector2.new(input.Position.X, input.Position.Y)

			local percentage = self.GetPercentage(sliderFrameRef, pos)
			valueBeforeSnapping = math.clamp(percentage, 0, 1) * self.getTotalRange()

			if self.props.Layout == Enum.FillDirection.Vertical then
				valueBeforeSnapping = 1 - valueBeforeSnapping
			end
		else
			-- existing handling for not rotated sliders
			if self.props.Layout == Enum.FillDirection.Horizontal then
				local inputHorizontalOffsetNormalized = (input.Position.X - sliderFrameRef.AbsolutePosition.X)
					/ sliderFrameRef.AbsoluteSize.X
				inputHorizontalOffsetNormalized = math.clamp(inputHorizontalOffsetNormalized, 0, 1)
				valueBeforeSnapping = self.props.Min + (inputHorizontalOffsetNormalized * self.getTotalRange())
			else
				local inputHorizontalOffsetNormalized = (input.Position.Y - sliderFrameRef.AbsolutePosition.Y)
					/ sliderFrameRef.AbsoluteSize.Y
				inputHorizontalOffsetNormalized = 1 - math.clamp(inputHorizontalOffsetNormalized, 0, 1)
				valueBeforeSnapping = self.props.Min + (inputHorizontalOffsetNormalized * self.getTotalRange())
			end
		end

		return self.getSnappedValue(valueBeforeSnapping)
	end

	self.setValuesFromInput = function(input)
		local staticRangeDuringInput = self.getStaticRangeValueDuringInput(input)

		if not staticRangeDuringInput then
			return
		end

		local mouseClickValue = self.getMouseClickValue(input)

		local lowerValue = math.min(mouseClickValue, staticRangeDuringInput)
		lowerValue = self.getSnappedValue(lowerValue)
		local clampedLowerValue = if self.props.UpperRangeValue <= self.props.Min
			then self.props.Min
			else math.clamp(lowerValue, self.props.Min, self.props.UpperRangeValue)

		local upperValue = math.max(mouseClickValue, staticRangeDuringInput)
		upperValue = self.getSnappedValue(upperValue)
		local clampedUpperValue = if self.props.Max <= self.props.LowerRangeValue
			then self.props.Max
			else math.clamp(upperValue, self.props.LowerRangeValue, self.props.Max)

		if clampedLowerValue ~= self.props.LowerRangeValue or clampedUpperValue ~= self.props.UpperRangeValue then
			self.props.OnValuesChanged(clampedLowerValue, clampedUpperValue)
		end
	end

	self.getStaticRangeValueDuringInput = function(input)
		if self.props.HideLowerKnob and self.props.HideUpperKnob then
			return nil
		end

		if self.props.HideUpperKnob then
			return self.props.UpperRangeValue
		end

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

	self.onInputBegan = function(_rbx, input)
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

	self.onInputChanged = function(_rbx, input)
		if self.props.Disabled then
			return
		elseif self.state.pressed and input.UserInputType == Enum.UserInputType.MouseMovement then
			self.setValuesFromInput(input)
		end
	end

	self.onInputEnded = function(_rbx, input)
		local isMainPress = isInputMainPress(input)
		if not self.props.Disabled and isMainPress then
			if self.props.OnInputEnded then
				self.props.OnInputEnded()
			end
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
	local style = props.Stylizer

	local tooltipText = props.Tooltip or nil
	local hasTooltip = tooltipText ~= nil and tooltipText ~= ""
	local anchorPoint = props.AnchorPoint
	local isDisabled = props.Disabled
	local max = props.Max
	local min = props.Min
	local layout = props.Layout
	local layoutOrder = props.LayoutOrder
	local lowerRangeValue = math.clamp(props.LowerRangeValue, min, max)
	local position = props.Position
	local upperRangeValue = math.clamp(props.UpperRangeValue, min, max)
	local size = prioritize(props.Size, style.Size, UDim2.fromScale(1, 1))
	local horizontalDragBuffer = props.HorizontalDragTolerance
	local verticalDragBuffer = props.VerticalDragTolerance
	local hideBackground = props.HideBackground
	local hideLowerKnob = props.HideLowerKnob
	local hideUpperKnob = props.HideUpperKnob
	local fillFromCenter = props.FillFromCenter

	local backgroundStyle = style.BackgroundStyle
	local foregroundStyle = style.ForegroundStyle
	local knobSize = style.KnobSize or Vector2.new()

	local lowerFillPercent = (lowerRangeValue - min) / self.getTotalRange()
	local upperFillPercent = (upperRangeValue - min) / self.getTotalRange()
	local foregroundHorizontalSize = upperFillPercent - lowerFillPercent
	if fillFromCenter then
		local center = getMidPoint(self.props.Min, self.props.Max)
		local centerFillPercent = (center - min) / self.getTotalRange()
		foregroundHorizontalSize = (upperFillPercent - centerFillPercent) * -1
	end
	local foregroundPosition = if fillFromCenter then upperFillPercent else lowerFillPercent

	local styleModifier
	if isDisabled then
		styleModifier = StyleModifier.Disabled
	end
	local onRightClick = props.OnRightClick

	local isHorizontal = layout == Enum.FillDirection.Horizontal

	if backgroundStyle then
		backgroundStyle = join(backgroundStyle, {
			Background = if hideBackground then Dash.None else nil,
			Size = if not isHorizontal and backgroundStyle.Size
				then UDim2.new(backgroundStyle.Size.Y, backgroundStyle.Size.X)
				else nil,
		})
	end

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = if layout == Enum.FillDirection.Horizontal
			then UDim2.new(UDim.new(size.X.Scale, size.X.Offset - knobSize.X), size.Y)
			else UDim2.new(size.X, UDim.new(size.Y.Scale, size.Y.Offset - knobSize.Y)),
		[Roact.Ref] = self.sliderFrameRef,
	}, {
		Background = Roact.createElement(Pane, {
			Style = backgroundStyle,
			StyleModifier = styleModifier,

			AnchorPoint = if isHorizontal then Vector2.new(0, 0.5) else Vector2.new(0.5, 0),
			Position = if isHorizontal then UDim2.fromScale(0, 0.5) else UDim2.fromScale(0.5, 0),
		}, {
			Foreground = Roact.createElement(Pane, {
				AnchorPoint = if isHorizontal then nil else Vector2.new(0, 1),
				Style = join(foregroundStyle, {
					Background = props.ImageColor3,
					Color = props.ImageColor3,
				}),
				StyleModifier = styleModifier,

				Size = if isHorizontal
					then UDim2.new(foregroundHorizontalSize, 0, 1, 0)
					else UDim2.new(1, 0, foregroundHorizontalSize, 0),
				Position = if isHorizontal
					then UDim2.fromScale(foregroundPosition, 0)
					else UDim2.fromScale(0, 1 - foregroundPosition),
			}),
		}),

		LowerKnob = not hideLowerKnob and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = if styleModifier == StyleModifier.Disabled
				then style.DisabledKnobColor
				else (props.ImageColor3 or style.KnobColor),
			Position = if isHorizontal
				then UDim2.fromScale(lowerFillPercent, 0.5)
				else UDim2.fromScale(0.5, 1 - lowerFillPercent),
			Size = if props.Precision
				then if isHorizontal then UDim2.fromOffset(4, 16) else UDim2.fromOffset(16, 4)
				else UDim2.fromOffset(18, 18),
			ZIndex = 3,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0.5, 0),
			}),
		}),

		UpperKnob = not hideUpperKnob and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = if styleModifier == StyleModifier.Disabled
				then style.DisabledKnobColor
				else (props.ImageColor3 or style.KnobColor),
			Position = if isHorizontal
				then UDim2.fromScale(upperFillPercent, 0.5)
				else UDim2.fromScale(0.5, 1 - upperFillPercent),
			Size = if props.Precision
				then if isHorizontal then UDim2.fromOffset(4, 16) else UDim2.fromOffset(16, 4)
				elseif
					style.UpperKnobBackgroundStyle and style.UpperKnobBackgroundStyle.Size
				then style.UpperKnobBackgroundStyle.Size
				else UDim2.fromOffset(18, 18),
			ZIndex = 3,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0.5, 0),
			}),
		}),

		ClickHandler = not isDisabled and Roact.createElement("ImageButton", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = if isHorizontal
				then UDim2.new(1, knobSize.X, 1, if self.state.pressed then verticalDragBuffer else 0)
				else UDim2.new(1, if self.state.pressed then horizontalDragBuffer else 0, 1, knobSize.Y),
			ZIndex = 4,

			[Roact.Event.InputBegan] = self.onInputBegan,
			[Roact.Event.InputChanged] = self.onInputChanged,
			[Roact.Event.InputEnded] = self.onInputEnded,
			[Roact.Event.MouseButton2Click] = onRightClick,
		}),
		Tooltip = hasTooltip and Roact.createElement(Tooltip, {
			MaxWidth = 1000,
			Text = tooltipText,
			TextXAlignment = Enum.TextXAlignment.Left,
			--passing ZIndex over here, to not have nearby sliders' knob cover tooltip
			ZIndex = 5,
		}),
		HoverArea = not isDisabled and Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
		}),
	})
end

RangeSlider = withContext({
	Mouse = ContextServices.Mouse,
	Stylizer = ContextServices.Stylizer,
})(RangeSlider)

return RangeSlider
