local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Image = require(Foundation.Components.Image)
local Knob = require(Foundation.Components.Knob)
local Slider = require(Foundation.Components.Slider)
local View = require(Foundation.Components.View)

local ColorSliderType = require(Foundation.Enums.ColorSliderType)
local InputSize = require(Foundation.Enums.InputSize)
local SliderVariant = require(Foundation.Enums.SliderVariant)
local Visibility = require(Foundation.Enums.Visibility)
type ColorSliderType = ColorSliderType.ColorSliderType

local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local Flags = require(Foundation.Utility.Flags)

type CommonProps = Types.CommonProps

export type ColorSliderProps = {
	sliderType: ColorSliderType?,
	value: React.Binding<number>,
	onValueChanged: ((newValue: number) -> ())?,
	onDragStarted: (() -> ())?,
	onDragEnded: (() -> ())?,
	baseColor: React.Binding<Color3>?,
} & CommonProps

--selene: allow(roblox_internal_custom_color)
local RAINBOW_GRADIENT = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(1 / 6, Color3.new(1, 1, 0)),
	ColorSequenceKeypoint.new(2 / 6, Color3.new(0, 1, 0)),
	ColorSequenceKeypoint.new(3 / 6, Color3.new(0, 1, 1)),
	ColorSequenceKeypoint.new(4 / 6, Color3.new(0, 0, 1)),
	ColorSequenceKeypoint.new(5 / 6, Color3.new(1, 0, 1)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)),
})

local function createAlphaGradient(color)
	return ColorSequence.new({ ColorSequenceKeypoint.new(0, color), ColorSequenceKeypoint.new(1, color) })
end

local CHECKERBOARD_IMAGE = "component_assets/checkerboard_12"

local defaultProps = {
	sliderType = ColorSliderType.Hue,
	--selene: allow(roblox_internal_custom_color)
	baseColor = React.createBinding(Color3.new(1, 1, 1)),
}

local function ColorSlider(colorSliderProps: ColorSliderProps)
	local props = withDefaults(colorSliderProps, defaultProps)
	local tokens = useTokens()

	local sliderType: ColorSliderType = props.sliderType
	local value = props.value
	local onValueChanged = props.onValueChanged

	local gradient = if sliderType == ColorSliderType.Hue
		then RAINBOW_GRADIENT
		else props.baseColor:map(createAlphaGradient)

	local knobStyle, gradientTransparency
	if sliderType == ColorSliderType.Hue then
		--selene: allow(roblox_internal_custom_color)
		knobStyle = value:map(function(h)
			return {
				Color3 = Color3.fromHSV(h, 1, 1),
				Transparency = 0,
			}
		end)
	elseif sliderType == ColorSliderType.Alpha then
		gradientTransparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(1, 0),
		})
		knobStyle = React.joinBindings({ baseColor = props.baseColor, value = value }):map(function(values)
			return {
				Color3 = values.baseColor,
				Transparency = 1 - values.value,
			}
		end)
	end

	local isAlpha = sliderType == ColorSliderType.Alpha

	local sliderElement = React.createElement(Slider, {
		value = value,
		onValueChanged = onValueChanged,
		onDragStarted = props.onDragStarted,
		onDragEnded = props.onDragEnded,
		size = InputSize.Medium,
		variant = SliderVariant.Utility,
		isContained = true,
		width = UDim.new(1, 0),
		knobVisibility = Visibility.Always,
		knob = React.createElement(Knob, {
			size = if Flags.FoundationColorPickerDesignUpdate then InputSize.Small else InputSize.Large,
			style = knobStyle,
			stroke = {
				Color = tokens.Color.System.Contrast.Color3,
				Thickness = tokens.Stroke.Thicker,
				Transparency = tokens.Color.System.Contrast.Transparency,
			},
			hasShadow = true,
		}),
	})

	if Flags.FoundationColorPickerDesignUpdate and isAlpha then
		-- Background + SliderContainer split: ClipsDescendants hides checkerboard edges without clipping the knob
		return React.createElement(
			View,
			withCommonProps(props, {
				tag = "size-full-300",
			}),
			{
				Background = React.createElement(View, {
					tag = "size-full stroke-standard stroke-emphasis radius-circle",
					ClipsDescendants = true,
					ZIndex = 1,
				}, {
					Checkerboard = React.createElement(Image, {
						Image = CHECKERBOARD_IMAGE,
						ScaleType = Enum.ScaleType.Tile,
						TileSize = UDim2.fromOffset(tokens.Size.Size_300, tokens.Size.Size_300),
						cornerRadius = UDim.new(1, 0),
						tag = "size-full",
						ZIndex = 1,
					}),
					--selene: allow(roblox_internal_custom_color)
					GradientOverlay = React.createElement(View, {
						tag = "size-full",
						backgroundStyle = {
							Color3 = Color3.new(1, 1, 1),
							Transparency = 0,
						},
						cornerRadius = UDim.new(1, 0),
						ZIndex = 2,
					}, {
						Gradient = React.createElement("UIGradient", {
							Color = gradient,
							Transparency = gradientTransparency,
						}),
					}),
				}),

				-- Not clipped: knob must extend beyond pill edges
				SliderContainer = React.createElement(View, {
					tag = "row align-y-center size-full",
					ZIndex = 2,
				}, {
					Slider = sliderElement,
				}),
			}
		)
	end

	if not Flags.FoundationColorPickerDesignUpdate then
		-- Pre-design-update: single View for both hue and alpha sliders
		return React.createElement(
			View,
			withCommonProps(props, {
				tag = "auto-y size-full-0 radius-circle stroke-standard stroke-emphasis",
				backgroundStyle = tokens.Color.Extended.White.White_100,
			}),
			{
				Gradient = React.createElement("UIGradient", {
					Color = gradient,
					Transparency = gradientTransparency,
				}),

				Slider = sliderElement,
			}
		)
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "row align-y-center size-full-300 stroke-standard stroke-emphasis radius-circle",
			backgroundStyle = tokens.Color.Extended.White.White_100,
		}),
		{
			Gradient = React.createElement("UIGradient", {
				Color = gradient,
			}),

			Slider = sliderElement,
		}
	)
end

return ColorSlider
