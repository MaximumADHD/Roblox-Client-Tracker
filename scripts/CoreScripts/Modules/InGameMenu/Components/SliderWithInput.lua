--!nonstrict
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local InGameMenu = script.Parent.Parent

local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local FocusHandler = require(script.Parent.Connection.FocusHandler)
local Slider = require(script.Parent.Slider)
local AssetImage = require(script.Parent.AssetImage)

local SliderWithInput = Roact.PureComponent:extend("SliderWithInput")
SliderWithInput.defaultProps = {
	width = UDim.new(1, 0),
}

SliderWithInput.validateProps = t.intersection(t.strictInterface({
	-- The minimum value of the slider.
	min = t.number,
	-- The maximum value of the slider.
	max = t.number,
	-- How big the chunks that the slider bar is split up into are.
	stepInterval = t.numberPositive,
	-- If non-nil, specifies a keyboard input granularity that can be different than stepInterval
	keyboardInputStepInterval = t.optional(t.numberPositive),
	-- The current value of the slider.
	value = t.number,
	-- A callback function that is invoked whenever the slider value changes.
	valueChanged = t.callback,
	-- Whether the slider is enabled or not.
	disabled = t.optional(t.boolean),

	-- The width of the slider. The slider's height is fixed, but the width can
	-- be adjusted. Defaults to UDim.new(1, 0).
	width = t.optional(t.UDim),
	-- The anchor point of the slider.
	AnchorPoint = t.optional(t.Vector2),
	-- The layout order of the slider.
	LayoutOrder = t.optional(t.integer),
	-- The position of the slider.
	Position = t.optional(t.UDim2),
	-- can capture focus when other dialogs are up
	canCaptureFocus = t.optional(t.boolean),
	-- Whether IGM is open or not
	isMenuOpen = t.optional(t.boolean),
	-- Ref to the sliderDot
	sliderDotRef = t.optional(t.table),
	-- Callback for when selection of text box / slider dot is lost
	onSelectionLost = t.callback,
	-- Callback for when selection of text box / slider dot is gained
	onSelectionGained = t.callback,
}), function(props)
	if props.min > props.max then
		return false, "min must be less than or equal to max"
	end

	if props.value > props.max or props.value < props.min then
		return false, "value must be within min and max"
	end

	return true
end)

function SliderWithInput:init()
	self.textBoxRef = Roact.createRef()

	self.state = {
		textEntryMode = false
	}
end

function SliderWithInput:renderFocusHandler()
	return Roact.createElement(FocusHandler, {
		isFocused = self.props.canCaptureFocus and self.state.textEntryMode or false,

		didFocus = function()
			-- disable navigation once we've entered entry mode
			GuiService.CoreGuiNavigationEnabled = false

			-- keep the old value in case user hits B
			local oldSliderValue = self.props.value

			-- bind a core action that leaves entry mode and
			-- reverts value when the 'B' button is pressed on the gamepad
			ContextActionService:BindCoreAction("LeaveTextEntryMode", function(actionName, inputState)
				if inputState == Enum.UserInputState.End then
					self:setState({textEntryMode = false})
					local box = self.textBoxRef.current
					box.Text = oldSliderValue
					box:ReleaseFocus()
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end, false, Enum.KeyCode.ButtonB)
		end,

		didBlur = function()
			GuiService.CoreGuiNavigationEnabled = true
			ContextActionService:UnbindCoreAction("LeaveTextEntryMode") -- unbind this action once we've called it once
		end,
	}) or nil
end

function SliderWithInput:renderWithSelectionCursor(getSelectionCursor)
	local props = self.props
	local sliderProps = Cryo.Dictionary.join(props, {
		width = UDim.new(1, -80),
		LayoutOrder = Cryo.None,
		Position = Cryo.None,
		AnchorPoint = Cryo.None,
		keyboardInputStepInterval = Cryo.None,
		NextSelectionRight = self.textBoxRef,
	})

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(props.width.Scale, props.width.Offset, 0, 36),
		Position = props.Position,
		LayoutOrder = props.LayoutOrder,
	}, {
		Slider = Roact.createElement(Slider, sliderProps),
		TextContainer = withStyle(function(style)
			local textTheme = props.disabled and style.Theme.TextMuted or style.Theme.TextDefault

			return Roact.createElement(AssetImage.Label, {
				BackgroundTransparency = 1,
				imageKey = "RoundedRect",
				ImageTransparency = style.Theme.BackgroundUIContrast.Transparency,
				ImageColor3 = style.Theme.BackgroundUIContrast.Color,
				Size = UDim2.new(0, 64, 0, 36),
				Position = UDim2.new(1, 0, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
			}, {
				FocusHandler = self:renderFocusHandler(),
				Box = Roact.createElement("TextBox", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Font = style.Font.Body.Font,
					TextScaled = true,
					ClearTextOnFocus = false,
					TextEditable = not props.disabled,
					TextColor3 = textTheme.Color,
					TextTransparency = textTheme.Transparency,
					Text = tostring(props.value),
					NextSelectionLeft = self.props.sliderDotRef,
					SelectionImageObject = getSelectionCursor(CursorKind.InputFields),
					[Roact.Event.SelectionLost] = self.props.onSelectionLost,
					[Roact.Event.SelectionGained] = self.props.onSelectionGained,
					[Roact.Ref] = self.textBoxRef,
					[Roact.Event.Focused] = props.disabled and function(rbx)
						rbx:ReleaseFocus(false)
					end or function()
						self:setState({textEntryMode = true})
					end,
					[Roact.Event.FocusLost] = function(rbx, enterPressed)
						self:setState({textEntryMode = false})

						local textValue = tonumber(rbx.Text)
						if textValue ~= props.value then
							if textValue == nil then
								rbx.Text = tostring(props.value)
								return
							end

							local textInputGranularity = props.stepInterval
							if props.keyboardInputStepInterval then
								textInputGranularity = props.keyboardInputStepInterval
							end

							local newValue = math.clamp(
								math.floor(textValue / textInputGranularity + 0.5) * textInputGranularity,
								props.min,
								props.max)

							rbx.Text = tostring(newValue)

							if newValue ~= props.value then
								props.valueChanged(newValue)
							end
						end
					end,
				}, {
					TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MinTextSize = style.Font.Body.RelativeMinSize * style.Font.BaseSize,
						MaxTextSize = style.Font.Body.RelativeSize * style.Font.BaseSize,
					})
				})
			})
		end),
		UserInputConnection = not props.disabled and Roact.createElement(ExternalEventConnection, {
			event = UserInputService.InputBegan,
			callback = function(input, gameProcessed)
				if input.UserInputType ~= Enum.UserInputType.Keyboard then
					return
				end

				if UserInputService:GetFocusedTextBox() ~= self.textBoxRef.current then
					return
				end

				local direction = 0
				if input.KeyCode == Enum.KeyCode.Up then
					direction = 1
				elseif input.KeyCode == Enum.KeyCode.Down then
					direction = -1
				end

				if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift) then
					direction = direction * 10
				end

				if direction ~= 0 then
					local newValue = math.clamp(
						math.floor((props.value + props.stepInterval * direction) / props.stepInterval + 0.5) * props.stepInterval,
						props.min,
						props.max)

					if newValue ~= props.value then
						props.valueChanged(newValue)
					end
				end
			end,
		})
	})
end

function SliderWithInput:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

return SliderWithInput
