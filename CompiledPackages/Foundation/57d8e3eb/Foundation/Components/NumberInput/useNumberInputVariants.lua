local Foundation = script:FindFirstAncestor("Foundation")

local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
type NumberInputControlsVariant = NumberInputControlsVariant.NumberInputControlsVariant

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Flags = require(Foundation.Utility.Flags)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local UNSCALED_SIZE_3000_TOKEN_WIDTH = 120

local function computeProps(props: {
	width: number?,
	buttonWidth: number?,
	horizontalPadding: number?,
	upButtonTag: string?,
	downButtonTag: string?,
	splitButtonTag: string?,
	splitButtonSize: number?,
	iconTag: string?,
})
	local horizontalPadding = if not Flags.FoundationNumberInputFixControlSizes
			or (props.width and props.horizontalPadding)
		then UDim.new(0, (props.buttonWidth :: number - props.horizontalPadding) / 2)
		else nil
	return {
		container = {
			width = props.width,
		},
		button = {
			tag = "fill size-full",
			width = props.buttonWidth,
			padding = if not Flags.FoundationNumberInputFixControlSizes or horizontalPadding
				then {
					left = horizontalPadding,
					right = horizontalPadding,
				}
				else nil,
		},
		upButton = {
			tag = props.upButtonTag,
		},
		downButton = {
			tag = props.downButtonTag,
		},
		splitButton = {
			size = props.splitButtonSize,
			tag = props.splitButtonTag,
		},
		icon = if Flags.FoundationNumberInputFixControlSizes
			then {
				tag = props.iconTag,
			}
			else {},
	}
end

local function variantsFactory(tokens: Tokens)
	local common = {
		upButton = {
			tag = "fill size-full padding-bottom-xsmall",
		},
		downButton = {
			tag = "fill size-full padding-top-xsmall",
		},
		splitButton = {
			tag = "bg-shift-100",
		},
		icon = {
			tag = {
				["content-default"] = true,
				["size-150-100"] = not Flags.FoundationNumberInputFixControlSizes,
			},
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = computeProps({
			width = tokens.Size.Size_3000 * (140 / UNSCALED_SIZE_3000_TOKEN_WIDTH),
			buttonWidth = tokens.Size.Size_400,
			horizontalPadding = tokens.Size.Size_150,
			upButtonTag = "padding-top-xxsmall",
			downButtonTag = "padding-bottom-xxsmall",
			splitButtonTag = "radius-small",
			splitButtonSize = tokens.Size.Size_600,
		}),
		[InputSize.Small] = computeProps({
			width = tokens.Size.Size_3000 * (160 / UNSCALED_SIZE_3000_TOKEN_WIDTH),
			buttonWidth = tokens.Size.Size_600,
			horizontalPadding = tokens.Size.Size_150,
			upButtonTag = "padding-top-xsmall",
			downButtonTag = "padding-bottom-xsmall",
			splitButtonTag = "radius-medium",
			splitButtonSize = tokens.Size.Size_800,
		}),
		[InputSize.Medium] = computeProps({
			width = tokens.Size.Size_3000 * (180 / UNSCALED_SIZE_3000_TOKEN_WIDTH),
			buttonWidth = tokens.Size.Size_600,
			horizontalPadding = tokens.Size.Size_150,
			upButtonTag = "padding-top-small",
			downButtonTag = "padding-bottom-small",
			splitButtonTag = "radius-medium",
			splitButtonSize = tokens.Size.Size_1000,
		}),
		[InputSize.Large] = computeProps({
			width = tokens.Size.Size_3000 * (200 / UNSCALED_SIZE_3000_TOKEN_WIDTH),
			buttonWidth = tokens.Size.Size_800,
			horizontalPadding = tokens.Size.Size_150,
			upButtonTag = "padding-top-medium",
			downButtonTag = "padding-bottom-medium",
			splitButtonTag = "radius-medium",
			splitButtonSize = tokens.Size.Size_1200,
		}),
	}

	local controlVariants: { [NumberInputControlsVariant]: VariantProps } = if Flags.FoundationNumberInputFixControlSizes
		then {
			[NumberInputControlsVariant.Stacked] = computeProps({
				iconTag = "size-150-100",
			}),
		}
		else nil :: never

	return { common = common, sizes = sizes, controlVariants = controlVariants }
end

return function(tokens: Tokens, size: InputSize, controlsVariant: NumberInputControlsVariant?)
	local props = VariantsContext.useVariants("NumberInput", variantsFactory, tokens)
	return composeStyleVariant(
		props.common,
		props.sizes[size],
		if Flags.FoundationNumberInputFixControlSizes
			then props.controlVariants[controlsVariant :: NumberInputControlsVariant]
			else nil :: never
	)
end
