--[[
	A number range slider bar with a optional input box and optional range labels.

	Props:
		double Value = Current value
		double Min = Minimum value
		double Max = Maximum value
		double SnapIncrement = How much the slider value change on each increase or decrease
		bool Enable = False to disable this component (default true)
		bool ShowRange = True to display range labels (default false)
		bool ShowInput = True to display input box (default false)
		UDim2 Size = Total size of the component
		UDim2 SliderSize = Size of the slider bar
		UDim2 HandleSize = Size of the slider handle
		UDim2 InputSize = Size of the input box
		int TextSize = The size of range text label
		Color3 TextColor = The color of range text
		int TextLabelHeight == The height of the range text label

		function SetValue(value) = Callback to tell parent that value has changed.
]]

--TODO: FIX THE THEME
local BACKGROUND_BAR_IMAGE_LIGHT = "rbxasset://textures/RoactStudioWidgets/slider_bar_background_light.png"
local FOREGROUND_BAR_IMAGE_LIGHT = "rbxasset://textures/RoactStudioWidgets/slider_bar_light.png"
local SLIDER_HANDLE_IMAGE_LIGHT = "rbxasset://textures/RoactStudioWidgets/slider_handle_light.png"

local BACKGROUND_BAR_IMAGE_DARK = "rbxasset://textures/RoactStudioWidgets/slider_bar_background_dark.png"
local FOREGROUND_BAR_IMAGE_DARK = "rbxasset://textures/RoactStudioWidgets/slider_bar_dark.png"
local SLIDER_HANDLE_IMAGE_DARK = "rbxasset://textures/RoactStudioWidgets/slider_handle_dark.png"
--

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local ToolParts = script.Parent
local LabeledTextInput = require(ToolParts.LabeledTextInput)

-- Default Values --
local MIN_VAL = 0
local MAX_VAL = 100

-- Default Sizes --
local TEXT_LABEL_HEIGHT = 15
local TEXT_SIZE = 15
local BAR_SLICE_CENTER = Rect.new(3, 0, 4, 6)

local SIZE = UDim2.new(0, 140, 0, 22)
local SLIDER_SIZE = UDim2.new(0, 94, 0, 4)
local HANDLE_SIZE = UDim2.new(0, 13, 0, 13)
local INPUT_BOX_SIZE = UDim2.new(0, 34, 0, 22)

-- Default Color --
local TEXT_COLOR = Color3.fromRGB(151, 151, 151)

local Slider = Roact.PureComponent:extend("Slider")

function Slider:init()
	self.state = {
		pressed = false,
	}

	self.sliderFrameRef = Roact.createRef()

	self.getOffset = function()
		local min = self.props.Min or MIN_VAL
		local max = self.props.Max or MAX_VAL
		assert(min <= max, "Expected min to be smaller or equal to max")

		local value = self.props.Value or MIN_VAL
		local range  = max - min
		return range == 0 and 0 or (value - min) / range
	end

	self.getSnappedValue = function(value)
		local min = self.props.Min or MIN_VAL
		local max = self.props.Max or MAX_VAL
		assert(min <= max, "Expected min to be smaller or equal to max")

		local snapIncrement = self.props.SnapIncrement or 0
		if snapIncrement > 0.001 then
			local prevSnap = math.max(snapIncrement * math.floor(value / snapIncrement), min)
			local nextSnap = math.min(prevSnap + snapIncrement, max)
			value = math.abs(prevSnap - value) < math.abs(nextSnap - value) and prevSnap or nextSnap
		end
		return math.min(max, math.max(min, value))
	end

	self.getMouseClickValue = function (input)
		local min = self.props.Min or MIN_VAL
		local max = self.props.Max or MAX_VAL
		assert(min <= max, "Expected min to be smaller or equal to max")

		local posX = self.sliderFrameRef.current.AbsolutePosition.X
		local sizeX = self.sliderFrameRef.current.AbsoluteSize.X
		local normalizedOffset = (input.Position.X - posX) / sizeX

		normalizedOffset = math.max(0, math.min(1, normalizedOffset))

		local clickValue = min + normalizedOffset * (max - min)
		return self.getSnappedValue(clickValue)
	end

	self.setValueFromInput = function(input)
		local newValue = self.getMouseClickValue(input)
		self.props.SetValue(newValue)
	end

	self.setValue = function(value)
		value = self.getSnappedValue(value)
		self.props.SetValue(value)
	end

	self.isEnabled = function()
		-- Allow nil to use the default of true, but false to stay false
		-- Can't just use `or true` here or it will always be true
		-- And so `Enabled = false` wouldn't work
		if self.props.Enabled then
			return true
		elseif self.props.Enabled == nil then
			return true
		else
			return false
		end
	end

	self.onInputBegan = function(rbx, input)
		if self.isEnabled() and input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				pressed = true,
			})
			self.setValueFromInput(input)
		end
	end

	self.onInputChanged = function(rbx, input)
		if self.isEnabled() and self.state.pressed and input.UserInputType == Enum.UserInputType.MouseMovement then
			self.setValueFromInput(input)
		end
	end

	self.onInputEnded = function(rbx, input)
		if self.isEnabled() and input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				pressed = false,
			})
		end
	end

	self.onInputFocusLost = function(enterPressed, text)
		-- we reverse first because we dont have a reverse match
		-- This matching is used to restrict teh input that
		-- can go into the textbox. When we make this a shared component
		-- we will want to review if this is a pattern that we want.
		local rev = string.reverse(text)
		local revNum = string.match(rev,"[0-9]*[%.]?[0-9]*[%-]?")
		local textNum = string.reverse(revNum)

		local val = tonumber(textNum)
		if val then
			local newVal = self.getSnappedValue(val)
			self.props.SetValue(newVal)
			-- this is required for the case where the value
			-- needs to be reset to the previous value
			return newVal
		else
			return self.props.Value or MIN_VAL
		end
	end

	self.validateInputText = function(text)
		local filter = string.gsub(text, "[^0-9%-%.%+]*","")
		return filter
	end

	--- inital value ---
	self.setValue(self.props.Value or MIN_VAL)
end

function Slider:render()
	local value = self.props.Value or MIN_VAL
	local min = self.props.Min or MIN_VAL
	local max = self.props.Max or MAX_VAL
	local enabled = self.isEnabled()
	local showRange = self.props.ShowRange or false
	local showInput = self.props.ShowInput
	if showInput == nil then
		showInput = true
	end
	local size = self.props.Size or SIZE
	local sliderSize = self.props.SliderSize or SLIDER_SIZE
	local handleSize = self.props.HandleSize or HANDLE_SIZE
	local inputSize = self.props.InputSize or INPUT_BOX_SIZE
	local textColor = self.props.TextColor or TEXT_COLOR
	local textSize = self.props.TextSize or TEXT_SIZE
	local textLabelHeight = self.props.TextLabelHeight or TEXT_LABEL_HEIGHT

	local sliderFrameOffset = (size.Height.Offset - handleSize.Height.Offset) / 2
	local inputBoxOffset = sliderSize.Width.Offset + 12
	local labelOffset = sliderFrameOffset + handleSize.Height.Offset / 2 + 2
	local verticalDragTolerance = sliderSize.Height.Offset * 2

	local isDarkerTheme = settings().Studio["UI Theme"] == Enum.UITheme.Dark

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = size,
	}, {
		SliderFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0, sliderSize.Width.Offset, 0, handleSize.Height.Offset),
			Position = UDim2.new(0, 0, 0, sliderFrameOffset),
			[Roact.Ref] = self.sliderFrameRef,
		}, {
			ClickHandler = Roact.createElement("ImageButton", {
				Size = UDim2.new(1, handleSize.Width.Offset, 1, self.state.pressed and verticalDragTolerance or 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				ZIndex = 4,

				[Roact.Event.InputBegan] = self.onInputBegan,
				[Roact.Event.InputChanged] = self.onInputChanged,
				[Roact.Event.InputEnded] = self.onInputEnded,
			}),
			HoverHandler = Roact.createElement("Frame", {
				Size = UDim2.new(1, handleSize.Width.Offset, 1, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
			}),

			SliderHandle = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = handleSize,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(self.getOffset(), 0, 0, 0),
				Image = isDarkerTheme and SLIDER_HANDLE_IMAGE_DARK or SLIDER_HANDLE_IMAGE_LIGHT,
				Visible = enabled,
				ZIndex = 3
			}),
			BackgroundBar = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = sliderSize,
				Image = isDarkerTheme and BACKGROUND_BAR_IMAGE_DARK or BACKGROUND_BAR_IMAGE_LIGHT,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = BAR_SLICE_CENTER,
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),
			}),
			ForegroundBar = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(self.getOffset(), 0, 0, sliderSize.Height.Offset),
				Image = isDarkerTheme and FOREGROUND_BAR_IMAGE_DARK or FOREGROUND_BAR_IMAGE_LIGHT,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = BAR_SLICE_CENTER,
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),
				Visible = enabled,
				ZIndex = 2
			}),
		}),

		Input = showInput and Roact.createElement(LabeledTextInput, {
			Width = inputSize.Width,
			Position = UDim2.new(0, inputBoxOffset, 0, 0),
			Text = tostring(value),
			OnFocusLost = self.onInputFocusLost,
			ValidateText = self.validateInputText,
		}),

		LowerLabel = showRange and Roact.createElement("TextLabel", {
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 0, 0, textLabelHeight),

			TextColor3 = textColor,
			Font = Enum.Font.SourceSans,
			TextSize = textSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Bottom,
			Position = UDim2.new(0, 0, 0, labelOffset),
			Text = tostring(min),
		}),

		UpperLabel = showRange and Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 0, 0, textLabelHeight),

			TextColor3 = textColor,
			Font = Enum.Font.SourceSans,
			TextSize = textSize,
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Bottom,
			Position = UDim2.new(0, sliderSize.Width.Offset, 0, labelOffset),
			Text = tostring(max),
		}),
	})
end

return Slider
