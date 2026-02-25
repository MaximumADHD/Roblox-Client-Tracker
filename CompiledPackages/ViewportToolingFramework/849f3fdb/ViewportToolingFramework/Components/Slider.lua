--!strict
local TextService = game:GetService("TextService")

local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)

local Icon = require(ViewportToolingFramework.Components.Icon)
local Tooltip = require(ViewportToolingFramework.Components.Tooltip)
local Types = require(ViewportToolingFramework.Types)

local Slider = Framework.UI.Slider

local LayoutOrderIterator: any = Framework.Util.LayoutOrderIterator

local joinTags = Framework.Styling.joinTags

export type Props = {
	Item: Types.Slider,
	NextOrder: () -> number,
}

local function getWidestNumberText(min: number, max: number, inputPrecision: number): string
	local digits = math.max(math.floor(math.log10(math.abs(min))) + 1, math.floor(math.log10(math.abs(max))) + 1, 1)
	local text = string.rep("9", digits)

	if inputPrecision > 0 then
		text ..= "." .. string.rep("9", inputPrecision)
	end

	if min < 0 then
		text = `-{text}`
	end

	return text
end

local function SliderComponent(props: Props)
	local enabled = props.Item.Enabled ~= false
	local inputPrecision = props.Item.InputPrecision or 2

	local getDisplayValue = React.useCallback(function(value: number)
		if props.Item.DisplayFormat ~= nil then
			return string.format(props.Item.DisplayFormat, value)
		end

		return string.format(`%.{inputPrecision}f`, value)
	end, { inputPrecision, props.Item.DisplayFormat } :: { unknown })

	local widestNumberText = getWidestNumberText(props.Item.Min, props.Item.Max, inputPrecision)

	local maxTextInputWidth = React.useMemo(function()
		local widestNumber = tonumber(widestNumberText)
		assert(widestNumber ~= nil, "getWidestNumberText did not produce a valid number")

		return TextService:GetTextSize(
			getDisplayValue(widestNumber),
			18,
			Enum.Font.SourceSans,
			Vector2.new(math.huge, math.huge)
		).X + 12
	end, { widestNumberText, getDisplayValue } :: { unknown })

	local decrement = React.useCallback(function()
		assert(props.Item.IncrementStep ~= nil, "Decrement with no IncrementStep")
		props.Item.OnChange(math.clamp(props.Item.Value - props.Item.IncrementStep, props.Item.Min, props.Item.Max))
	end, { props.Item })

	local increment = React.useCallback(function()
		assert(props.Item.IncrementStep ~= nil, "Increment with no IncrementStep")
		props.Item.OnChange(math.clamp(props.Item.Value + props.Item.IncrementStep, props.Item.Min, props.Item.Max))
	end, { props.Item })

	local onFocused = React.useCallback(function(textBox: TextBox)
		if not enabled then
			textBox:ReleaseFocus()
			return
		end

		textBox.CursorPosition = #textBox.Text + 1
		textBox.SelectionStart = -#textBox.Text
	end, { enabled })

	local onFocusLost = React.useCallback(function(textBox: TextBox)
		if not enabled then
			return
		end

		local value = tonumber(textBox.Text)
		if value == nil then
			textBox.Text = getDisplayValue(props.Item.Value)
			return
		end
		assert(value ~= nil, "Luau")

		local newValue = math.clamp(value, props.Item.Min, props.Item.Max)
		textBox.Text = getDisplayValue(newValue)
		props.Item.OnChange(newValue)
	end, { enabled, props.Item, getDisplayValue } :: { unknown })

	local onChangeText = React.useCallback(function(textBox: TextBox)
		if not textBox:IsFocused() then
			return
		end

		local finalText = textBox.Text

		-- Numbers, decimal point, more numbers
		local generalNumberPattern = "([0-9]*)%.?[0-9]*$"

		-- Allow negative sign if the number supports it
		if props.Item.Min < 0 then
			generalNumberPattern = "%-?" .. generalNumberPattern
		end

		while #finalText > 0 and not finalText:match("^" .. generalNumberPattern) do
			finalText = finalText:sub(1, #finalText - 1)
		end

		textBox.Text = finalText
	end, { props.Item } :: { unknown })

	local layoutOrderIterator = LayoutOrderIterator.new()

	return React.createElement("Frame", {
		LayoutOrder = props.NextOrder(),
		[React.Tag] = joinTags("VPF-Slider", if enabled then "VPF-Slider--Enabled" else "VPF-Slider--Disabled"),
	}, {
		Icon = props.Item.Icon ~= nil and React.createElement("Frame", {
			LayoutOrder = layoutOrderIterator:getNextOrder(),

			[React.Tag] = "X-Fill VPF-X-Square",
		}, {
			Tooltip = props.Item.Tooltip ~= nil and React.createElement(Tooltip, {
				Title = props.Item.Tooltip,
				Description = props.Item.TooltipDescription,
			}),

			Icon = React.createElement(Icon, {
				Icon = props.Item.Icon,
			}),
		}),

		-- Split out and not using a list so that the text box overlaps on top of the side buttons.
		-- This is so that we can only have a one sided corner radius on them.
		Value = if props.Item.IncrementStep == nil
			then React.createElement("TextBox", {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.new(0, maxTextInputWidth, 1, 0),
				Text = getDisplayValue(props.Item.Value),

				[React.Event.Focused] = onFocused,
				[React.Event.FocusLost] = onFocusLost,

				[React.Change.Text] = onChangeText,

				[React.Tag] = "VPF-Slider__Input" :: any,
			})
			else React.createElement("Frame", {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.new(0, maxTextInputWidth + 24, 1, 0),
			}, {
				Decrement = React.createElement("TextButton", {
					[React.Event.Activated] = if enabled then decrement else nil,
					[React.Tag] = "VPF-Slider__StepButton" :: any,
				}, {
					Minus = React.createElement("Frame", {
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0, 3, 0.5, 0),
						[React.Tag] = "VPF-Slider__BarSegment",
					}),
				}),

				Input = React.createElement("TextBox", {
					Position = UDim2.fromOffset(15, 0),
					Size = UDim2.new(0, maxTextInputWidth, 1, 0),
					Text = getDisplayValue(props.Item.Value),
					ZIndex = 2,

					[React.Event.Focused] = onFocused,
					[React.Event.FocusLost] = onFocusLost,

					[React.Change.Text] = onChangeText,

					[React.Tag] = "VPF-Slider__Input" :: any,
				}),

				Increment = React.createElement("TextButton", {
					Position = UDim2.fromOffset(maxTextInputWidth + 10, 0),
					[React.Event.Activated] = if enabled then increment else nil,
					[React.Tag] = "VPF-Slider__StepButton" :: any,
				}, {
					Bar1 = React.createElement("Frame", {
						AnchorPoint = Vector2.new(1, 0.5),
						Position = UDim2.new(1, -3, 0.5, 0),
						[React.Tag] = "VPF-Slider__BarSegment",
					}),

					Bar2 = React.createElement("Frame", {
						AnchorPoint = Vector2.new(1, 0.5),
						Position = UDim2.new(1, -3, 0.5, 0),
						Rotation = 90,
						[React.Tag] = "VPF-Slider__BarSegment",
					}),
				}),
			}),

		Slider = React.createElement(
			"Frame",
			{
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				[React.Tag] = "X-FitX",
			},
			React.createElement(Slider, {
				Size = UDim2.new(0, 145, 1, 0),

				Min = props.Item.Min,
				Max = props.Item.Max,
				Value = props.Item.Value,
				OnValueChanged = props.Item.OnChange,
				Disabled = not enabled,

				VerticalDragTolerance = 24,
			})
		),
	})
end

return SliderComponent
