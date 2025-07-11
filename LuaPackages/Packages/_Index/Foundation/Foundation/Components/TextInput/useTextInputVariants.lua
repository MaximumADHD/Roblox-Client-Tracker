local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle
type FontStyle = Types.FontStyle

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type TextInputVariantProps = {
	canvas: {
		tag: string,
	},
	outerContainer: {
		tag: string,
	},
	innerContainer: {
		tag: string,
		gap: number,
		padding: any,
		radius: number,
	},
	textBox: {
		tag: string,
		-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
		Font: Enum.Font,
		FontSize: number,
		-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
	},
	icon: {
		size: IconSize,
		style: ColorStyle,
	},
}

local function computeProps(props: {
	canvasTag: string,
	outerContainerTag: string,
	innerContainerTag: string,
	horizontalPadding: number,
	gap: number,
	radius: number,
	textBoxTag: string,
	typography: FontStyle,
	iconSize: IconSize,
})
	return {
		canvas = {
			tag = props.canvasTag,
		},
		outerContainer = {
			tag = props.outerContainerTag,
		},
		innerContainer = {
			tag = props.innerContainerTag,
			padding = {
				left = UDim.new(0, props.horizontalPadding),
				right = UDim.new(0, props.horizontalPadding),
			},
			gap = props.gap,
			radius = props.radius,
		},
		textBox = {
			tag = props.textBoxTag,
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			Font = props.typography.Font,
			FontSize = props.typography.FontSize,
			-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
		},
		icon = {
			size = props.iconSize,
		},
	}
end

local function variantsFactory(tokens: Tokens)
	local common = {
		outerContainer = {
			tag = "bg-shift-100",
		},
		innerContainer = {
			tag = "row align-y-center",
		},
		textBox = {
			tag = "gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis",
		},
		icon = {
			style = tokens.Color.Content.Muted,
		},
	}
	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = computeProps({
			canvasTag = "size-full-600",
			outerContainerTag = "radius-small",
			radius = tokens.Radius.Small,
			innerContainerTag = "gap-small",
			horizontalPadding = tokens.Padding.XSmall,
			gap = tokens.Gap.Small,
			textBoxTag = "text-body-small",
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			typography = tokens.Typography.BodySmall,
			-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
			iconSize = IconSize.XSmall,
		}),
		[InputSize.Small] = computeProps({
			canvasTag = "size-full-800",
			outerContainerTag = "radius-small",
			radius = tokens.Radius.Small,
			innerContainerTag = "gap-medium",
			horizontalPadding = tokens.Padding.Small,
			gap = tokens.Gap.Medium,
			textBoxTag = "text-body-medium",
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			typography = tokens.Typography.BodyMedium,
			-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
			iconSize = IconSize.XSmall,
		}),
		[InputSize.Medium] = computeProps({
			canvasTag = "size-full-1000",
			outerContainerTag = "radius-small",
			radius = tokens.Radius.Small,
			innerContainerTag = "gap-large",
			horizontalPadding = tokens.Padding.Small,
			gap = tokens.Gap.Large,
			textBoxTag = "text-body-medium",
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			typography = tokens.Typography.BodyMedium,
			-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
			iconSize = IconSize.Small,
		}),
		[InputSize.Large] = computeProps({
			canvasTag = "size-full-1200",
			outerContainerTag = "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = "gap-large",
			horizontalPadding = tokens.Padding.Medium,
			gap = tokens.Gap.Large,
			textBoxTag = "text-body-large",
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			typography = tokens.Typography.BodyLarge,
			-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
			iconSize = IconSize.Small,
		}),
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): TextInputVariantProps
	local props = VariantsContext.useVariants("TextInput", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
