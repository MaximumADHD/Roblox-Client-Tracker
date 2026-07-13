local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)

local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
type NumberInputControlsVariant = NumberInputControlsVariant.NumberInputControlsVariant

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)

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
	local horizontalPadding = if props.width and props.horizontalPadding
		then UDim.new(0, (props.buttonWidth :: number - props.horizontalPadding) / 2)
		else nil
	return {
		container = {
			width = props.width,
		},
		button = {
			tag = "fill size-full",
			width = props.buttonWidth,
			padding = if horizontalPadding
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
		icon = {
			tag = props.iconTag,
		},
	}
end

local function variantsFactory(tokens: Tokens)
	local common = if Flags.FoundationNumberInputBeta
		then { controls = { tag = "row align-y-center bg-action-standard" } }
		else {
			upButton = {
				tag = "fill size-full padding-bottom-xsmall",
			},
			downButton = {
				tag = "fill size-full padding-top-xsmall",
			},
			icon = {
				tag = "content-default",
			},
		}

	local sizes: { [InputSize]: VariantProps } = if Flags.FoundationNumberInputBeta
		then {
			[InputSize.XSmall] = {
				controls = {
					width = tokens.Size.Size_1200,
					buttonSize = tokens.Size.Size_600,
					iconSize = IconSize.XSmall,
					tag = "radius-small",
					radius = tokens.Radius.Small,
				},
			},
			[InputSize.Small] = {
				controls = {
					width = tokens.Size.Size_1600,
					buttonSize = tokens.Size.Size_800,
					iconSize = IconSize.Small,
					tag = "radius-medium",
					radius = tokens.Radius.Medium,
				},
			},
			[InputSize.Medium] = {
				controls = {
					width = tokens.Size.Size_2000,
					buttonSize = tokens.Size.Size_1000,
					iconSize = IconSize.Medium,
					tag = "radius-medium",
					radius = tokens.Radius.Medium,
				},
			},
			[InputSize.Large] = {
				controls = {
					width = tokens.Size.Size_2400,
					buttonSize = tokens.Size.Size_1200,
					iconSize = IconSize.Large,
					tag = "radius-medium",
					radius = tokens.Radius.Medium,
				},
			},
		}
		else {
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

	local controlVariants: { [NumberInputControlsVariant]: VariantProps }? = if Flags.FoundationNumberInputBeta
		then nil
		else {
			[NumberInputControlsVariant.Stacked] = computeProps({
				iconTag = "size-150-100",
			}),
		}

	return {
		common = common,
		sizes = sizes,
		controlVariants = controlVariants,
	}
end

return function(tokens: Tokens, size: InputSize, controlsVariant: NumberInputControlsVariant?)
	local props = VariantsContext.useVariants("NumberInput", variantsFactory, tokens)

	if Flags.FoundationNumberInputBeta then
		return composeStyleVariant(props.common :: VariantProps, props.sizes[size])
	end

	return composeStyleVariant(
		props.common :: VariantProps,
		(props.sizes :: { [InputSize]: VariantProps })[size],
		(props.controlVariants :: { [NumberInputControlsVariant]: VariantProps })[controlsVariant :: NumberInputControlsVariant]
	)
end
