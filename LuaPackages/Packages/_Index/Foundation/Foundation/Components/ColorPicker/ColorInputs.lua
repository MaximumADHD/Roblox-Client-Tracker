local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
type CommonProps = Types.CommonProps
local View = require(Foundation.Components.View)
local TextInput = require(Foundation.Components.TextInput)
local NumberInput = require(Foundation.Components.NumberInput)
local Dropdown = require(Foundation.Components.Dropdown)
local InternalMenu = require(Foundation.Components.InternalMenu)
type MenuItem = InternalMenu.MenuItem
type ItemId = Types.ItemId

local ColorInputMode = require(Foundation.Enums.ColorInputMode)
type ColorInputMode = ColorInputMode.ColorInputMode
local InputSize = require(Foundation.Enums.InputSize)
local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)

local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local colorInputUtils = require(Foundation.Components.ColorPicker.colorInputUtils)

local useTokens = require(Foundation.Providers.Style.useTokens)
local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local RGB_MAX_VALUE = 255

type Config<T, V> = colorInputUtils.Config<T, V>

local function createInput<T>(
	tokens: Tokens,
	config: Config<T, string | number>,
	index: number,
	testIdPrefix: string
): React.ReactNode
	-- Avoid redundant testId / key for single input modes
	local configKey = if testIdPrefix == config.key:lower() then "" else `-{config.key:lower()}`
	local sharedProps = {
		size = InputSize.XSmall,
		label = "",
		width = config.width or UDim.new(0, tokens.Size.Size_1500),
		LayoutOrder = index,
		testId = `--foundation-color-picker-{testIdPrefix}{configKey}-input`,
	}

	if config.key == ColorInputMode.Hex then
		return React.createElement(
			TextInput,
			Dash.join({
				text = config.value:getValue() :: string,
				onChanged = function(text: string)
					config.handler(text, config.component)
				end,
				placeholder = config.placeholder or "0",
			}, sharedProps)
		)
	end

	return React.createElement(
		NumberInput,
		Dash.join({
			value = config.value:getValue() :: number,
			onChanged = function(value: number)
				config.handler(value, config.component)
			end,
			controlsVariant = NumberInputControlsVariant.Stacked,
			minimum = config.minimum or 0,
			maximum = config.maximum or 255,
			step = config.step or 1,
			precision = config.precision or 0,
		}, sharedProps)
	)
end

type ColorInputsProps = {
	color: React.Binding<Color3>,
	alpha: React.Binding<number>?,
	onColorChanged: (color: Color3) -> (),
	onAlphaChanged: ((alpha: number) -> ())?,
} & CommonProps

local defaultProps = {
	alpha = React.createBinding(1),
}

local function ColorInputs(colorInputsProps: ColorInputsProps)
	local props = withDefaults(colorInputsProps, defaultProps)
	local tokens = useTokens()
	local mode: ColorInputMode, setMode = React.useState(ColorInputMode.RGB :: ColorInputMode)
	local color = props.color
	local alpha = props.alpha

	local onColorChanged = React.useCallback(function(newColor)
		if props.onColorChanged then
			props.onColorChanged(newColor)
		end
	end, { props.onColorChanged })

	local onAlphaChanged = props.onAlphaChanged
	local showAlpha = props.onAlphaChanged ~= nil

	local rgbValues = color:map(function(currentColor: Color3)
		return {
			r = math.round(currentColor.R * RGB_MAX_VALUE),
			g = math.round(currentColor.G * RGB_MAX_VALUE),
			b = math.round(currentColor.B * RGB_MAX_VALUE),
		}
	end)

	local hsvValues = color:map(function(currentColor: Color3)
		local h: number, s: number, v: number = currentColor:ToHSV()
		return {
			h = math.round(h * 360),
			s = math.round(s * 100),
			v = math.round(v * 100),
		}
	end)

	local hexValue = rgbValues:map(function(values)
		return string.format("#%02X%02X%02X", values.r, values.g, values.b)
	end)

	local handleRGBChange = React.useCallback(function(value: number, component: string?)
		local clampedValue = math.clamp(value, 0, RGB_MAX_VALUE)

		local rgb = table.clone(rgbValues:getValue())
		rgb[component] = clampedValue

		--selene: allow(roblox_internal_custom_color)
		local newColor = Color3.fromRGB(rgb.r, rgb.g, rgb.b)
		onColorChanged(newColor)
	end, { rgbValues :: unknown, onColorChanged })

	local handleAlphaChange = React.useCallback(function(value: number)
		if onAlphaChanged then
			onAlphaChanged(value)
		end
	end, { onAlphaChanged })

	local handleHSVChange = React.useCallback(function(value: number, component: string?)
		local hsv = table.clone(hsvValues:getValue())
		local clampedValue = math.clamp(value, 0, if component == "h" then 360 else 100)
		hsv[component] = clampedValue

		--selene: allow(roblox_internal_custom_color)
		local newColor = Color3.fromHSV(hsv.h / 360, hsv.s / 100, hsv.v / 100)
		onColorChanged(newColor)
	end, { hsvValues :: unknown, onColorChanged })

	local handleHexChange = React.useCallback(function(value: string)
		local cleanHex = value:gsub("#", ""):upper()

		if cleanHex:match("^%x%x%x%x%x%x$") then
			local r = tonumber(cleanHex:sub(1, 2), 16)
			local g = tonumber(cleanHex:sub(3, 4), 16)
			local b = tonumber(cleanHex:sub(5, 6), 16)

			if r and g and b then
				--selene: allow(roblox_internal_custom_color)
				local newColor = Color3.fromRGB(r, g, b)
				onColorChanged(newColor)
			end
		end
	end, { onColorChanged })

	local dropdownOptions = React.useMemo(function(): { MenuItem }
		local options: { MenuItem } = { { id = ColorInputMode.RGB :: string, text = ColorInputMode.RGB :: string } }

		if showAlpha then
			table.insert(options, { id = ColorInputMode.RGBA :: string, text = ColorInputMode.RGBA :: string })
		end

		table.insert(options, { id = ColorInputMode.HSV :: string, text = ColorInputMode.HSV :: string })
		table.insert(options, { id = ColorInputMode.Hex :: string, text = ColorInputMode.Hex :: string })

		return options
	end, { showAlpha })

	React.useEffect(function()
		if mode == ColorInputMode.RGBA and not showAlpha then
			setMode(ColorInputMode.RGB)
		end
	end, { mode :: unknown, showAlpha, setMode })

	local renderInputs = function()
		local configs = colorInputUtils.createInputConfigs(
			rgbValues,
			hsvValues,
			hexValue,
			alpha,
			handleRGBChange,
			handleHSVChange,
			handleHexChange,
			handleAlphaChange,
			tokens
		)
		local modeConfig = configs[mode]
		if not modeConfig then
			return {}
		end
		local testIdPrefix = mode:lower()
		local inputs = {}
		for index, config in ipairs(modeConfig) do
			local inputKey = config.key .. "Input"
			inputs[inputKey] = createInput(tokens, config, index, testIdPrefix)
		end
		return inputs
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "row gap-small auto-xy align-y-center",
			testId = if props.testId then props.testId else "--foundation-color-picker-input",
		}),
		{
			ModeDropdown = React.createElement(Dropdown.Root, {
				items = dropdownOptions :: { MenuItem },
				value = mode :: ItemId,
				onItemChanged = function(newMode: ItemId)
					setMode(newMode :: ColorInputMode)
				end,
				size = InputSize.XSmall,
				label = "",
				width = UDim.new(0, tokens.Size.Size_2000),
				testId = if props.testId
					then props.testId .. "-mode-dropdown"
					else "--foundation-color-picker-mode-dropdown",
			}),

			Inputs = React.createElement(View, {
				tag = "row gap-small auto-xy",
			}, renderInputs()),
		}
	)
end

return ColorInputs
