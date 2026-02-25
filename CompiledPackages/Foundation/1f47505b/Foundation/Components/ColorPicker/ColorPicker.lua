local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local BrickColorPicker = require(Foundation.Components.ColorPicker.BrickColorPicker)
local ColorInputMode = require(Foundation.Enums.ColorInputMode)
local ColorInputs = require(Foundation.Components.ColorPicker.ColorInputs)
local ColorSlider = require(Foundation.Components.ColorPicker.ColorSlider)
local ColorSliderType = require(Foundation.Enums.ColorSliderType)
local SVPicker = require(Foundation.Components.ColorPicker.SVPicker)
local View = require(Foundation.Components.View)
type ColorInputMode = ColorInputMode.ColorInputMode
local colorUtils = require(Foundation.Components.ColorPicker.colorUtils)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local Types = require(Foundation.Components.Types)
type CommonProps = Types.CommonProps

export type ColorPickerProps = {
	initialColor: Color3?,
	initialAlpha: number?,
	onColorChanged: (newColor: Color3, brickColor: BrickColor?) -> (),
	onAlphaChanged: ((newAlpha: number) -> ())?,
	availableModes: { ColorInputMode }?,
	initialMode: ColorInputMode?,
} & CommonProps

local defaultProps = {
	initialAlpha = 1,
	initialMode = ColorInputMode.RGB,
	testId = "--foundation-color-picker",
}

local function ColorPicker(colorPickerProps: ColorPickerProps)
	local availableModes: { ColorInputMode } = colorPickerProps.availableModes
		or { ColorInputMode.RGB, ColorInputMode.HSV, ColorInputMode.Hex, ColorInputMode.Brick }

	local props = withDefaults(colorPickerProps, defaultProps)
	local tokens = useTokens()

	local color, setColor = React.useBinding(props.initialColor or tokens.Color.Extended.Magenta.Magenta_700.Color3)
	local currentHue, setCurrentHue = React.useBinding(0)
	local currentSaturation, setCurrentSaturation = React.useBinding(1)
	local currentValue, setCurrentValue = React.useBinding(1)
	local alpha, setAlpha = React.useBinding(props.initialAlpha or 1)
	local currentMode, setCurrentMode = React.useState(props.initialMode or ColorInputMode.RGB)

	local isUpdatingFromHSV = React.useRef(false)

	React.useEffect(function()
		local initialMode = props.initialMode

		if initialMode then
			local isModeAvailable = false
			for _, mode in availableModes do
				if mode == initialMode then
					isModeAvailable = true
					break
				end
			end

			if not isModeAvailable then
				warn(`ColorPicker: initialMode {initialMode} is not in availableModes. Using first available mode.`)
				setCurrentMode(availableModes[1])
			end
		end
	end, { props.initialMode })

	local onColorChanged = React.useCallback(function(newColor, brickColor)
		setColor(newColor)
		props.onColorChanged(newColor, brickColor)
	end, { props.onColorChanged })

	local onAlphaChanged = React.useCallback(function(newAlpha)
		setAlpha(newAlpha)
		if props.onAlphaChanged then
			props.onAlphaChanged(newAlpha)
		end
	end, { props.onAlphaChanged })

	local onBrickColorChanged = React.useCallback(function(newBrickColor: BrickColor)
		setColor(newBrickColor.Color)
		onColorChanged(newBrickColor.Color, newBrickColor)
	end, { onColorChanged })

	local showAlpha = props.onAlphaChanged ~= nil and currentMode ~= ColorInputMode.Brick

	local onCustomColorChanged = React.useCallback(function(newColor)
		onColorChanged(newColor, nil)
	end, { onColorChanged })

	local updateColor = React.useCallback(
		colorUtils.createHSVUpdateHandler(
			setCurrentHue,
			setCurrentSaturation,
			setCurrentValue,
			onCustomColorChanged,
			isUpdatingFromHSV
		),
		{ onCustomColorChanged, setCurrentHue, setCurrentSaturation, setCurrentValue, setColor } :: { unknown }
	)

	local onColorInputChanged = React.useCallback(
		colorUtils.createColorInputChangeHandler(
			onCustomColorChanged,
			isUpdatingFromHSV,
			setCurrentHue,
			setCurrentSaturation,
			setCurrentValue
		),
		{ onCustomColorChanged, isUpdatingFromHSV, setCurrentHue, setCurrentSaturation, setCurrentValue } :: { unknown }
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
				onAlphaChanged = (if showAlpha then onAlphaChanged else nil) :: ((number) -> ())?,
				mode = currentMode :: ColorInputMode,
				onModeChanged = setCurrentMode,
				availableModes = availableModes,
				LayoutOrder = 1,
				testId = `{props.testId}--input`,
			}),

			BrickPicker = if currentMode == ColorInputMode.Brick
				then React.createElement(BrickColorPicker, {
					selectedColor = color,
					onBrickColorChanged = onBrickColorChanged,
					LayoutOrder = 2,
					testId = `{props.testId}--brick-picker`,
				})
				else nil,

			SVPickerContainer = if currentMode ~= ColorInputMode.Brick
				then React.createElement(View, {
					tag = "auto-xy",
					LayoutOrder = 2,
				}, {
					SVPicker = React.createElement(SVPicker, {
						hue = currentHue,
						saturation = currentSaturation,
						value = currentValue,
						onChanged = function(newS, newV)
							updateColor(currentHue:getValue(), newS, newV)
						end,
						testId = `{props.testId}--sv-picker`,
					}),
				})
				else nil,

			HueSlider = if currentMode ~= ColorInputMode.Brick
				then React.createElement(ColorSlider, {
					sliderType = ColorSliderType.Hue,
					value = currentHue,
					onValueChanged = function(newH)
						updateColor(newH, currentSaturation:getValue(), currentValue:getValue())
					end,
					LayoutOrder = 3,
					testId = `{props.testId}--hue-slider`,
				})
				else nil,

			AlphaSlider = if showAlpha
				then React.createElement(ColorSlider, {
					sliderType = ColorSliderType.Alpha,
					value = alpha,
					baseColor = color,
					onValueChanged = onAlphaChanged,
					LayoutOrder = 4,
					testId = `{props.testId}--alpha-slider`,
				})
				else nil,
		}
	)
end

return ColorPicker
