local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local getKnobSize = require(script.Parent.getKnobSize)

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Flags = require(Foundation.Utility.Flags)

type KnobVariantProps = {
	knob: {
		tag: string,
		size: UDim2,
		style: ColorStyleValue,
		iconSize: IconSize,
	},
	knobShadow: {
		tag: string,
		size: UDim2,
		padding: number,
	},
	iconContainer: {
		backgroundStyle: ColorStyleValue,
	},
}

local function computeProps(props: {
	size: UDim2,
	shadowPadding: number,
	iconSize: IconSize,
})
	local knobWidth = props.size.X.Offset
	local shadowSize = knobWidth + 2 * props.shadowPadding
	return {
		knob = {
			size = props.size,
			iconSize = props.iconSize,
		},
		knobShadow = {
			size = UDim2.fromOffset(shadowSize, shadowSize),
			padding = props.shadowPadding,
		},
	}
end

local function variantsFactory(tokens: Tokens)
	local common = {
		knob = {
			tag = if Flags.FoundationToggleBetaUpdate
				then "align-x-center align-y-center position-center-center anchor-center-center auto-xy radius-circle"
				else "position-center-center anchor-center-center auto-xy radius-circle",
		},
		knobShadow = {
			tag = "position-center-center anchor-center-center",
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = computeProps({
			iconSize = IconSize.XSmall,
			size = getKnobSize(tokens, InputSize.XSmall),
			shadowPadding = tokens.Padding.XXSmall,
		}),
		[InputSize.Small] = computeProps({
			iconSize = IconSize.Small,
			size = getKnobSize(tokens, InputSize.Small),
			shadowPadding = tokens.Padding.XSmall,
		}),
		[InputSize.Medium] = computeProps({
			iconSize = if Flags.FoundationToggleBetaUpdate then IconSize.Small else IconSize.Medium,
			size = getKnobSize(tokens, InputSize.Medium),
			shadowPadding = tokens.Padding.Small,
		}),
		[InputSize.Large] = computeProps({
			iconSize = if Flags.FoundationToggleBetaUpdate then IconSize.Small else IconSize.Large,
			size = getKnobSize(tokens, InputSize.Large),
			shadowPadding = tokens.Padding.Small,
		}),
	}

	local isInverse: { [boolean]: VariantProps } = {
		[false] = {
			knob = {
				style = tokens.Color.Content.Emphasis,
			},
			iconContainer = {
				backgroundStyle = tokens.Inverse.Content.Emphasis,
			},
		},
		[true] = {
			knob = {
				style = tokens.Inverse.Content.Emphasis,
			},
			iconContainer = {
				backgroundStyle = tokens.Color.Content.Emphasis,
			},
		},
	}

	return { common = common, sizes = sizes, isInverse = isInverse }
end

return function(tokens: Tokens, size: InputSize, isInverse: boolean): KnobVariantProps
	local props = VariantsContext.useVariants("Knob", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size], props.isInverse[isInverse])
end
