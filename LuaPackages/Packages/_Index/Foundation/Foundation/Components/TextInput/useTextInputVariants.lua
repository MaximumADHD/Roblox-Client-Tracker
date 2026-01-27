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

local Flags = require(Foundation.Utility.Flags)

type TextInputVariantProps = {
	canvas: {
		tag: string,
	},
	outerContainer: {
		tag: string,
		minHeight: number,
	},
	innerContainer: {
		tag: string,
		gap: number,
		horizontalPadding: UDim,
		radius: number,
	},
	outerView: {
		tag: string,
	},
	textBox: {
		tag: string,
		-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
		fontStyle: FontStyle,
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
	outerViewTag: string,
	horizontalPadding: number,
	gap: number,
	radius: number,
	textBoxTag: string,
	typography: FontStyle,
	iconSize: IconSize,
	minContainerHeight: number,
})
	return {
		canvas = {
			tag = props.canvasTag,
		},
		outerContainer = {
			tag = props.outerContainerTag,
			minHeight = props.minContainerHeight,
		},
		innerContainer = {
			tag = props.innerContainerTag,
			horizontalPadding = UDim.new(0, props.horizontalPadding),
			gap = props.gap,
			radius = props.radius,
		},
		outerView = {
			tag = props.outerViewTag,
		},
		textBox = {
			tag = props.textBoxTag,
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			fontStyle = props.typography,
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
		outerView = {
			tag = "row align-y-center bg-shift-100",
		},
		textBox = {
			tag = "gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis",
		},
		icon = {
			style = tokens.Color.Content.Muted,
		},
	}
	local multiline = {
		canvas = {
			tag = if Flags.FoundationUIStrokeInner then "size-full-0" else "auto-y size-full-0",
		},
		outerContainer = {
			tag = if Flags.FoundationUIStrokeInner then "size-full-0" else "auto-y size-full-0",
		},
	}
	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = computeProps({
			canvasTag = "size-full-600",
			outerContainerTag = "radius-small",
			radius = tokens.Radius.Small,
			innerContainerTag = "gap-small",
			outerViewTag = if Flags.FoundationUIStrokeInner then "size-full-600 radius-small gap-small" else "",
			horizontalPadding = tokens.Padding.XSmall,
			gap = tokens.Gap.Small,
			textBoxTag = "text-body-small",
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			typography = tokens.Typography.BodySmall,
			-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
			iconSize = IconSize.XSmall,
			minContainerHeight = tokens.Size.Size_600,
		}),
		[InputSize.Small] = computeProps({
			canvasTag = "size-full-800",
			outerContainerTag = "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = "gap-medium",
			outerViewTag = if Flags.FoundationUIStrokeInner then "size-full-800 radius-medium gap-medium" else "",
			horizontalPadding = tokens.Padding.Small,
			gap = tokens.Gap.Medium,
			textBoxTag = "text-body-medium",
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			typography = tokens.Typography.BodyMedium,
			-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
			iconSize = IconSize.XSmall,
			minContainerHeight = tokens.Size.Size_800,
		}),
		[InputSize.Medium] = computeProps({
			canvasTag = "size-full-1000",
			outerContainerTag = "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = "gap-large",
			outerViewTag = if Flags.FoundationUIStrokeInner then "size-full-1000 radius-medium gap-large" else "",
			horizontalPadding = tokens.Padding.Small,
			gap = tokens.Gap.Large,
			textBoxTag = "text-body-medium",
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			typography = tokens.Typography.BodyMedium,
			-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
			iconSize = IconSize.Small,
			minContainerHeight = tokens.Size.Size_1000,
		}),
		[InputSize.Large] = computeProps({
			canvasTag = "size-full-1200",
			outerContainerTag = "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = "gap-large",
			outerViewTag = if Flags.FoundationUIStrokeInner then "size-full-1200 radius-medium gap-large" else "",
			horizontalPadding = tokens.Padding.Medium,
			gap = tokens.Gap.Large,
			textBoxTag = "text-body-large",
			-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
			typography = tokens.Typography.BodyLarge,
			-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
			iconSize = IconSize.Small,
			minContainerHeight = tokens.Size.Size_1200,
		}),
	}

	return { common = common, sizes = sizes, multiline = multiline }
end

return function(tokens: Tokens, size: InputSize): TextInputVariantProps
	local props = VariantsContext.useVariants("TextInput", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size], props.multiline)
end
