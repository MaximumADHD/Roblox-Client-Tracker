--[[
	A slider with one knob to allow selection of a value within a range.

	Required Props:
		number Min: Min value of the slider
		number Max: Max value of the slider
		number Value: Current value for the knob
		callback OnValueChanged: The callback is called whenever the value changes - OnValueChanged(value: number?)

	Optional Props:
		boolean ShowInput: Whether to show an input next to the slider
		Vector2 AnchorPoint: The anchorPoint of the component
		boolean Disabled: Whether to render in the enabled/disabled state
		number LayoutOrder: The layoutOrder of the component
		UDim2 Position: The position of the component
		number InputPrecision: How many decimal places to show in the input
		UDim2 Size: The size of the component
		boolean CustomValidation: Whether to skip validation
		callback OnInputEnded: A function that is called when the user stops interacting with the slider.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		number SnapIncrement: Incremental points that the slider's knob will snap to. A "0" snap increment means no snapping.
		number VerticalDragTolerance: A vertical pixel height for allowing a mouse button press to drag the knob on outside the component's size.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Util = require(Framework.Util) -- Remove with FFlagDevFrameworkSliderInputValidation
local Immutable = Util.Immutable
local Typecheck = require(Framework.Util.Typecheck)
local numberToString = require(Framework.Util.numberToString)

local Dash = require(Framework.Parent.Dash)

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local RangeSlider = require(UI.Components.RangeSlider)
local TextInput = require(UI.Components.TextInput)

local getFFlagDevFrameworkSliderInputValidation =
	require(Framework.SharedFlags.getFFlagDevFrameworkSliderInputValidation)

local Slider = Roact.PureComponent:extend("Slider")
Typecheck.wrap(Slider, script)

if getFFlagDevFrameworkSliderInputValidation() then
	Slider.defaultProps = {
		InputPrecision = 3,
	}

	function Slider:init()
		self.textInputRef = Roact.createRef()

		-- Always have a last valid value.
		self.lastValidValue = self.props.Value
	end
end

function Slider:render()
	local props = self.props

	local rangedSliderProps
	if getFFlagDevFrameworkSliderInputValidation() then
		rangedSliderProps = Dash.join(
			Dash.omit(props, {
				"OnValueChanged",
				"InputPrecision",
				"ShowInput",
				"Value",
			}),
			{
				HideLowerKnob = true,
				LowerRangeValue = props.Min,
				UpperRangeValue = props.Value,
				OnValuesChanged = function(_minValue, maxValue)
					if self.props.OnValueChanged then
						self.props.OnValueChanged(maxValue)
					end
				end,
			}
		)
	else
		rangedSliderProps =
			Immutable.JoinDictionaries(Immutable.RemoveFromDictionary(props, "ShowInput", "Value", "OnValueChanged"), {
				HideLowerKnob = true,
				LowerRangeValue = props.Min,
				UpperRangeValue = props.Value,
				OnValuesChanged = function(_minValue, maxValue)
					if self.props.OnValueChanged then
						self.props.OnValueChanged(maxValue)
					end
				end,
			})
	end

	if props.ShowInput then
		rangedSliderProps.Size = UDim2.new(1, -60, 1, 0)
	end

	local slider = Roact.createElement(RangeSlider, rangedSliderProps)
	if props.ShowInput then
		local text = numberToString(
			props.Value,
			if getFFlagDevFrameworkSliderInputValidation() then props.InputPrecision else props.InputPrecision or 2
		)
		if getFFlagDevFrameworkSliderInputValidation() then
			self.lastValidInput = props.Value
		end

		return Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = props.LayoutOrder,
			Spacing = 10,
			Size = props.Size,
		}, {
			Input = Roact.createElement(TextInput, {
				Disabled = props.Disabled,
				ForwardRef = self.textInputRef,
				Size = UDim2.new(0, 50, 1, 0),
				Text = text,
				OnFocusLost = function(text: string?)
					if not text then
						return
					end

					local num = tonumber(text)

					if props.CustomValidation then
						props.OnValueChanged(num)
						if props.OnInputEnded then
							props.OnInputEnded()
						end
					elseif num ~= nil then
						props.OnValueChanged(math.min(props.Max, math.max(props.Min, num)))
						if props.OnInputEnded then
							props.OnInputEnded()
						end
					end
					if getFFlagDevFrameworkSliderInputValidation() then
						local textBox = self.textInputRef.current
						if textBox then
							textBox.Text = numberToString(num or self.lastValidValue, props.InputPrecision)
						end
					end
				end,
				OnFormatText = if getFFlagDevFrameworkSliderInputValidation()
					then function(text: string)
						local match = string.match(text, "^%s*[-]?[0-9]*[.]?[0-9]*%s*$")
						if match then
							if match ~= "" then
								local parsedNumber: number? = tonumber(match)
								if parsedNumber ~= nil then
									self.lastValidValue = parsedNumber
								end
							end
							return match
						end
						return numberToString(self.lastValidValue, props.InputPrecision)
					end
					else nil,
				StyleModifier = props.StyleModifier,
			}),
			Slider = slider,
		})
	else
		return slider
	end
end

return Slider
