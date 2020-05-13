--[[
	Displays a slider with two carets to allow selection of a range of values.

	Props:
		string Title = The title to place to the left of this RangeSlider.
		int LayoutOrder = The order this widget will sort to when placed in a UIListLayout.
		bool Enabled = whether to render in the enabled/disabled state
		float Min = min value of the slider
		float Max = max value of the slider
		float SnapIncrement = slider handle snap points
		float LowerRangeValue = current value for the lower range handle
		float UpperRangeValue = current value for the upper range handle
		table Style = {
			TextColor,
			TextDescriptionColor
		}
		Mouse = plugin mouse for changing the mouse icon
		function SetValues = a callback for when the lower/upper range value is changed
		string MinLabelText = the text for the left hand side min label
		string MaxLabelText = the text for the right hand side max label
		string UnitsLabelText = the text for the units label placed to the right of the max input box
]]

local BACKGROUND_BAR_WIDTH = 262
local BAR_HEIGHT = 6
local BAR_SLICE_CENTER = Rect.new(3, 0, 4, 6)
local SLIDER_HANDLE_WIDTH = 18
local SLIDER_HANDLE_HEIGHT = 18
local TOTAL_HEIGHT = 38
local TEXT_LABEL_BOX_HEIGHT = 20
local LOWER_INPUT_BOX_OFFSET = BACKGROUND_BAR_WIDTH + 29
local INPUT_BOX_WIDTH = 48
local INPUT_BOX_HEIGHT = 38
local DASH_WIDTH = 10
local DASH_HEIGHT = 2
local DASH_HORIZONTAL_PADDING = 7
local UPPER_INPUT_BOX_OFFSET = LOWER_INPUT_BOX_OFFSET + INPUT_BOX_WIDTH + DASH_WIDTH + (2*DASH_HORIZONTAL_PADDING)
local PERCENTAGE_LABEL_OFFSET = UPPER_INPUT_BOX_OFFSET + INPUT_BOX_WIDTH + 15
local VIRTICAL_DRAG_AREA_TOLERANCE = 300

local BACKGROUND_BAR_IMAGE_LIGHT = "rbxasset://textures/RoactStudioWidgets/slider_bar_background_light.png"
local FOREGROUND_BAR_IMAGE_LIGHT = "rbxasset://textures/RoactStudioWidgets/slider_bar_light.png"
local SLIDER_HANDLE_IMAGE_LIGHT = "rbxasset://textures/RoactStudioWidgets/slider_handle_light.png"

local BACKGROUND_BAR_IMAGE_DARK = "rbxasset://textures/RoactStudioWidgets/slider_bar_background_dark.png"
local FOREGROUND_BAR_IMAGE_DARK = "rbxasset://textures/RoactStudioWidgets/slider_bar_dark.png"
local SLIDER_HANDLE_IMAGE_DARK = "rbxasset://textures/RoactStudioWidgets/slider_handle_dark.png"

local Roact = require(script.Parent.Internal.RequireRoact)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)
local Mouse = require(script.Parent.Internal.Mouse)
local TitledFrame = require(script.Parent.TitledFrame)
local RoundTextBox = require(script.Parent.RoundTextBox)

local calculateLowerHandleHorizontalOffset = nil
local calculateUpperHandleHorizontalOffset = nil
local calculateForegroundBarHorizontalOffset = nil
local calculateForegroundBarHorizontalSize = nil
local setValuesFromInput = nil
local setLowerRangeValue = nil
local setUpperRangeValue = nil
local calculateStaticRangeValueDuringInput = nil

local getStyle = nil

local RangeSlider = Roact.PureComponent:extend("RangeSlider")

function RangeSlider:init()
	self.sliderFrameRef = Roact.createRef()

	self.state = {
		currentLowerTextInputBoxText = tostring(self.props.LowerRangeValue),
		currentUpperTextInputBoxText = tostring(self.props.UpperRangeValue),
		Pressed = false
	}

	self.currentLowerRangeValue = self.props.LowerRangeValue
	self.currentUpperRangeValue = self.props.UpperRangeValue
	self.havePropsChanged = false
end

function RangeSlider:willUpdate()
	self.currentLowerRangeValue = self.props.LowerRangeValue
	self.currentUpperRangeValue = self.props.UpperRangeValue
	self.havePropsChanged = false
end

function RangeSlider:render()
	local function renderInternal()
		local style = getStyle(self)

		local lowerInputBoxText = self.state.currentLowerTextInputBoxText
		local upperInputBoxText = self.state.currentUpperTextInputBoxText
		self.havePropsChanged = self.currentLowerRangeValue ~= self.props.LowerRangeValue or self.currentUpperRangeValue ~= self.props.UpperRangeValue
		if self.havePropsChanged then
			lowerInputBoxText = tostring(self.props.LowerRangeValue)
			upperInputBoxText = tostring(self.props.UpperRangeValue)
		end

		local children = {
			RangedSliderContent = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, TOTAL_HEIGHT)
			}, {
				SliderFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, BACKGROUND_BAR_WIDTH, 0, SLIDER_HANDLE_HEIGHT),

					[Roact.Ref] = self.sliderFrameRef,
				}, {
					ClickHandler = Roact.createElement("ImageButton", {
						Size = UDim2.new(1, SLIDER_HANDLE_WIDTH, 1, self.state.Pressed and VIRTICAL_DRAG_AREA_TOLERANCE or 0),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						ZIndex = 4,

						[Roact.Event.InputBegan] = function(rbx, input)
							if self.props.Enabled and input.UserInputType == Enum.UserInputType.MouseButton1 then
								self:setState({
									Pressed = true,
								})
								self.staticRangeDuringInput = calculateStaticRangeValueDuringInput(self, input)
								setValuesFromInput(self, input)
							end
						end,

						[Roact.Event.InputChanged] = function(rbx, input)
							if self.props.Enabled and self.state.Pressed and input.UserInputType == Enum.UserInputType.MouseMovement then
								setValuesFromInput(self, input)
							end
						end,

						[Roact.Event.InputEnded] = function(rbx, input)
							if self.props.Enabled and input.UserInputType == Enum.UserInputType.MouseButton1 then
								self:setState({
									Pressed = false,
								})
							end
						end,
					}),
					HoverHandler = Roact.createElement("Frame", {
						Size = UDim2.new(1, SLIDER_HANDLE_WIDTH, 1, 0),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,

						[Roact.Event.MouseEnter] = function() if self.props.Enabled then Mouse.onEnter(self.props.Mouse) end end,
						[Roact.Event.MouseLeave] = function() if self.props.Enabled then Mouse.onLeave(self.props.Mouse) end end,
					}),
					SliderHandleOne = Roact.createElement("ImageLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(0, SLIDER_HANDLE_WIDTH, 0, SLIDER_HANDLE_HEIGHT),
						AnchorPoint = Vector2.new(0.5, 0),
						Position = UDim2.new(calculateLowerHandleHorizontalOffset(self), 0, 0, 0),
						Image = Theme.isDarkerTheme() and SLIDER_HANDLE_IMAGE_DARK or SLIDER_HANDLE_IMAGE_LIGHT,
						Visible = self.props.Enabled,
						ZIndex = 3
					}),
					SliderHandleTwo = Roact.createElement("ImageLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(0, SLIDER_HANDLE_WIDTH, 0, SLIDER_HANDLE_HEIGHT),
						AnchorPoint = Vector2.new(0.5, 0),
						Position = UDim2.new(calculateUpperHandleHorizontalOffset(self), 0, 0, 0),
						Image = Theme.isDarkerTheme() and SLIDER_HANDLE_IMAGE_DARK or SLIDER_HANDLE_IMAGE_LIGHT,
						Visible = self.props.Enabled,
						ZIndex = 3
					}),
					BackgroundBar = Roact.createElement("ImageLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(0, BACKGROUND_BAR_WIDTH, 0, BAR_HEIGHT),
						Image = Theme.isDarkerTheme() and BACKGROUND_BAR_IMAGE_DARK or BACKGROUND_BAR_IMAGE_LIGHT,
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = BAR_SLICE_CENTER,
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0, 0, 0.5, 0),
					}),
					ForegroundBar = Roact.createElement("ImageLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(calculateForegroundBarHorizontalSize(self), 0, 0, BAR_HEIGHT),
						Image = Theme.isDarkerTheme() and FOREGROUND_BAR_IMAGE_DARK or FOREGROUND_BAR_IMAGE_LIGHT,
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = BAR_SLICE_CENTER,
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(calculateForegroundBarHorizontalOffset(self), 0, 0.5, 0),
						Visible = self.props.Enabled,
						ZIndex = 2
					}),
				}),
				LowerLabel = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 0, 0, TEXT_LABEL_BOX_HEIGHT),

					TextColor3 = style.TextColor,
					Font = Enum.Font.SourceSans,
					TextSize = 22,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Bottom,
					AnchorPoint = Vector2.new(0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					Visible = self.props.Enabled,
					Text = self.props.MinLabelText or tostring(self.props.Min) .. "%",
				}),
				UpperLabel = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 0, 0, TEXT_LABEL_BOX_HEIGHT),

					TextColor3 = style.TextColor,
					Font = Enum.Font.SourceSans,
					TextSize = 22,
					TextXAlignment = Enum.TextXAlignment.Right,
					TextYAlignment = Enum.TextYAlignment.Bottom,
					AnchorPoint = Vector2.new(1, 1),
					Position = UDim2.new(0, BACKGROUND_BAR_WIDTH, 1, 0),
					Visible = self.props.Enabled,
					Text = self.props.MaxLabelText or tostring(self.props.Max) .. "%",
				}),
				LowerInputBox = Roact.createElement(RoundTextBox, {
					Enabled = self.props.Enabled,
					MaxLength = 100,
					Text = lowerInputBoxText,
					Position = UDim2.new(0, LOWER_INPUT_BOX_OFFSET, 0, 0),
					Width = INPUT_BOX_WIDTH,
					Height = INPUT_BOX_HEIGHT,
					ShowToolTip = false,
					HorizontalAlignment = Enum.TextXAlignment.Center,
					Mouse = self.props.Mouse,

					SetText = function(text)
						self:setState({
							currentLowerTextInputBoxText = text
						})
					end,

					FocusChanged = function(hasFocus, enterPressed)
						if not hasFocus then
							local wasSet = false
							if enterPressed then
								local value = tonumber(self.state.currentLowerTextInputBoxText)
								if value then
									wasSet = setLowerRangeValue(self, value)
								end
							end
							if not wasSet then
								self:setState({
									currentLowerTextInputBoxText = tostring(self.props.LowerRangeValue)
								})
							end
						end
					end
				}),
				Dash = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					Size = UDim2.new(0, DASH_WIDTH, 0, DASH_HEIGHT),
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(0, UPPER_INPUT_BOX_OFFSET-DASH_HORIZONTAL_PADDING, 0.5, 0),
					BackgroundColor3 = style.TextDescriptionColor
				}),
				UpperInputBox = Roact.createElement(RoundTextBox, {
					Enabled = self.props.Enabled,
					MaxLength = 100,
					Text = upperInputBoxText,
					Position = UDim2.new(0, UPPER_INPUT_BOX_OFFSET, 0, 0),
					Width = INPUT_BOX_WIDTH,
					Height = INPUT_BOX_HEIGHT,
					ShowToolTip = false,
					HorizontalAlignment = Enum.TextXAlignment.Center,
					Mouse = self.props.Mouse,

					SetText = function(text)
						self:setState({
							currentUpperTextInputBoxText = text
						})
					end,

					FocusChanged = function(hasFocus, enterPressed)
						if not hasFocus then
							local wasSet = false
							if enterPressed then
								local value = tonumber(self.state.currentUpperTextInputBoxText)
								if value then
									wasSet = setUpperRangeValue(self, value)
								end
							end
							if not wasSet then
								self:setState({
									currentUpperTextInputBoxText = tostring(self.props.UpperRangeValue)
								})
							end
						end
					end
				}),
				PercentageLabel = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Position = UDim2.new(0, PERCENTAGE_LABEL_OFFSET, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					TextColor3 = style.TextDescriptionColor,
					Font = Enum.Font.SourceSans,
					TextSize = 22,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					Text = self.props.UnitsLabelText or "%",
				})
			})
		}

		return Roact.createElement(TitledFrame, {
			Title = self.props.Title,
			MaxHeight = TOTAL_HEIGHT,
			LayoutOrder = self.props.LayoutOrder or 1,
		}, children)
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

function RangeSlider:didUpdate()
	if self.havePropsChanged then
		self.havePropsChanged = false
		self:setState({
			currentLowerTextInputBoxText = tostring(self.props.LowerRangeValue),
			currentUpperTextInputBoxText = tostring(self.props.UpperRangeValue),
		})
	end
end

local function calculateSliderTotalRange(self)
	return self.props.Max-self.props.Min
end

calculateLowerHandleHorizontalOffset = function(self)
	return (self.props.LowerRangeValue-self.props.Min)/calculateSliderTotalRange(self)
end

calculateUpperHandleHorizontalOffset = function(self)
	return (self.props.UpperRangeValue-self.props.Min)/calculateSliderTotalRange(self)
end

calculateForegroundBarHorizontalOffset = function(self)
	return calculateLowerHandleHorizontalOffset(self)
end

calculateForegroundBarHorizontalSize = function(self)
	return calculateUpperHandleHorizontalOffset(self)-calculateLowerHandleHorizontalOffset(self)
end

local function calculateIncrementSnappedValue(self, value)
	if self.props.SnapIncrement > 0.001 then
		local prevSnap = math.max(self.props.SnapIncrement*math.floor(value/self.props.SnapIncrement), self.props.Min)
		local nextSnap = math.min(prevSnap+self.props.SnapIncrement, self.props.Max)
		return math.abs(prevSnap-value) < math.abs(nextSnap-value) and prevSnap or nextSnap
	end
	return math.min(self.props.Max, math.max(self.props.Min, value))
end

local function calculateMouseClickValue(self, input)
	local inputHorizontalOffsetNormalized = (input.Position.X-self.sliderFrameRef.current.AbsolutePosition.X)/self.sliderFrameRef.current.AbsoluteSize.X
	inputHorizontalOffsetNormalized = math.max(0, math.min(1, inputHorizontalOffsetNormalized))
	local valueBeforeSnapping = self.props.Min + (inputHorizontalOffsetNormalized * calculateSliderTotalRange(self))
	return calculateIncrementSnappedValue(self, valueBeforeSnapping)
end

calculateStaticRangeValueDuringInput = function(self, input)
	local mouseClickValue = calculateMouseClickValue(self, input)

	if mouseClickValue < self.props.LowerRangeValue then
		return self.props.UpperRangeValue
	elseif mouseClickValue > self.props.UpperRangeValue then
		return self.props.LowerRangeValue
	end

	local diffToLower = math.abs(mouseClickValue-self.props.LowerRangeValue)
	local diffToUpper = math.abs(mouseClickValue-self.props.UpperRangeValue)

	if diffToLower < diffToUpper then
	 	return self.props.UpperRangeValue
	end
	return self.props.LowerRangeValue
end

local function clampLowerRangeValue(self, value)
	value = calculateIncrementSnappedValue(self, value)
	return math.min(self.props.UpperRangeValue, math.max(self.props.Min, value))
end

local function clampUpperRangeValue(self, value)
	value = calculateIncrementSnappedValue(self, value)
	return math.min(self.props.Max, math.max(self.props.LowerRangeValue, value))
end

setValuesFromInput = function(self, input)
	local mouseClickValue = calculateMouseClickValue(self, input)
	local newLowerValue = clampLowerRangeValue(self, math.min(mouseClickValue, self.staticRangeDuringInput))
	local newUpperValue = clampUpperRangeValue(self, math.max(mouseClickValue, self.staticRangeDuringInput))
	self.props.SetValues(newLowerValue, newUpperValue)
end

setLowerRangeValue = function(self, value)
	value = clampLowerRangeValue(self, value)
	if self.props.LowerRangeValue ~= value then
		self.props.SetValues(value, self.props.UpperRangeValue)
		return true
	end
	return false
end

setUpperRangeValue = function(self, value)
	value = clampUpperRangeValue(self, value)
	if self.props.UpperRangeValue ~= value then
		self.props.SetValues(self.props.LowerRangeValue, value)
		return true
	end
	return false
end

getStyle = function(self)
	local styleProps = {
		["TextColor"] = Theme.getTitleTextColor(),
		["TextDescriptionColor"] = Theme.getTextDescriptionColor(),
	}

	local style = {}
	for name, defaultStylePropsVal in pairs(styleProps) do
		style[name] = self.props.Style and self.props.Style[name] or defaultStylePropsVal
	end
	return style
end

return RangeSlider