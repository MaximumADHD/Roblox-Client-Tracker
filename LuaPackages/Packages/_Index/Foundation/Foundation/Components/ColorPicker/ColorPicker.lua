local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local View = require(Foundation.Components.View)
local SVPicker = require(Foundation.Components.ColorPicker.SVPicker)
local ColorSlider = require(Foundation.Components.ColorPicker.ColorSlider)
local ColorInputs = require(Foundation.Components.ColorPicker.ColorInputs)
local ColorSliderType = require(Foundation.Enums.ColorSliderType)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local useTokens = require(Foundation.Providers.Style.useTokens)
local colorUtils = require(Foundation.Components.ColorPicker.colorUtils)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type CommonProps = Types.CommonProps

export type ColorPickerProps = {
	initialColor: Color3?,
	initialAlpha: number?,
	onColorChanged: (newColor: Color3) -> (),
	onAlphaChanged: ((newAlpha: number) -> ())?,
} & CommonProps

local defaultProps = {
	initialAlpha = 1,
}

local function ColorPicker(colorPickerProps: ColorPickerProps)
	local props = withDefaults(colorPickerProps, defaultProps)
	local tokens = useTokens()

	local color, setColor = React.useBinding(props.initialColor or tokens.Color.Extended.Magenta.Magenta_700.Color3)
	local currentHue, setCurrentHue = React.useBinding(0)
	local currentSaturation, setCurrentSaturation = React.useBinding(1)
	local currentValue, setCurrentValue = React.useBinding(1)
	local alpha, setAlpha = React.useBinding(props.initialAlpha)

	local isUpdatingFromHSV = React.useRef(false)

	local onColorChanged = React.useCallback(function(newColor)
		setColor(newColor)
		props.onColorChanged(newColor)
	end, { props.onColorChanged })

	local onAlphaChanged = React.useCallback(function(newAlpha)
		setAlpha(newAlpha)
		if props.onAlphaChanged then
			props.onAlphaChanged(newAlpha)
		end
	end, { props.onAlphaChanged })

	local showAlpha = props.onAlphaChanged ~= nil

	local updateColor = React.useCallback(
		colorUtils.createHSVUpdateHandler(
			setCurrentHue,
			setCurrentSaturation,
			setCurrentValue,
			onColorChanged,
			isUpdatingFromHSV
		),
		{ onColorChanged, setCurrentHue, setCurrentSaturation, setCurrentValue, setColor }
	)

	local onColorInputChanged = React.useCallback(
		colorUtils.createColorInputChangeHandler(
			onColorChanged,
			isUpdatingFromHSV,
			setCurrentHue,
			setCurrentSaturation,
			setCurrentValue
		),
		{ onColorChanged :: any, isUpdatingFromHSV, setCurrentHue, setCurrentSaturation, setCurrentValue }
	)

	React.useEffect(function()
		local initialH, initialS, initialV = color:getValue():ToHSV()
		setCurrentHue(initialH)
		setCurrentSaturation(initialS)
		setCurrentValue(initialV)
	end, {})

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "col gap-medium auto-xy align-x-center",
		}),
		{
			ColorInputs = React.createElement(ColorInputs, {
				color = color,
				alpha = alpha,
				onColorChanged = onColorInputChanged,
				onAlphaChanged = if showAlpha then onAlphaChanged else nil,
				LayoutOrder = 1,
			}),

			SVPickerContainer = React.createElement(View, {
				tag = "auto-xy",
				LayoutOrder = 2,
			}, {
				SVPicker = React.createElement(SVPicker, {
					hue = currentHue,
					saturation = currentSaturation,
					value = currentValue,
					testId = if props.testId then `{props.testId}-sv-picker` else "color-picker-sv-picker",
					onChanged = function(newS, newV)
						updateColor(currentHue:getValue(), newS, newV)
					end,
				}),
			}),

			HueSlider = React.createElement(ColorSlider, {
				sliderType = ColorSliderType.Hue,
				value = currentHue,
				onValueChanged = function(newH)
					updateColor(newH, currentSaturation:getValue(), currentValue:getValue())
				end,
				LayoutOrder = 3,
			}),

			AlphaSlider = if showAlpha
				then React.createElement(ColorSlider, {
					sliderType = ColorSliderType.Alpha,
					value = alpha,
					baseColor = color,
					onValueChanged = onAlphaChanged,
					LayoutOrder = 4,
				})
				else nil,
		}
	)
end

return ColorPicker
