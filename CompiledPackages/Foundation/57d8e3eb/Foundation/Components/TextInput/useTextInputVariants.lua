local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue
type FontStyle = Types.FontStyle
type Tags = Types.Tags

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local Flags = require(Foundation.Utility.Flags)
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
		minHeight: number,
	},
	innerContainer: {
		tag: string,
		gap: number,
		horizontalPadding: UDim,
		radius: number,
	},
	outerView: {
		bgStyle: ColorStyleValue?,
		strokeStyle: ColorStyleValue?,
		strokeThickness: number?,
		tag: string,
	},
	textBox: {
		tag: string,
		fontStyle: FontStyle,
	},
	icon: {
		size: IconSize,
		style: ColorStyle,
	},
}

local function computeProps(
	props: {
		-- TODO: remove with Flags.FoundationCleanupTextInputPolyfill
		canvasTag: string?,
		-- TODO: remove with Flags.FoundationCleanupTextInputPolyfill
		outerContainerTag: string?,
		-- TODO: remove with Flags.FoundationCleanupTextInputPolyfill
		innerContainerTag: string?,
		outerViewTag: Tags,
		horizontalPadding: number,
		-- TODO: remove with Flags.FoundationCleanupTextInputPolyfill
		gap: number?,
		radius: number,
		-- TODO: remove with Flags.FoundationCleanupTextInputPolyfill
		textBoxTag: string?,
		typography: FontStyle,
		iconSize: IconSize,
		minContainerHeight: number,
	}
)
	return {
		canvas = if Flags.FoundationCleanupTextInputPolyfill
			then nil :: never
			else {
				tag = props.canvasTag,
			},
		outerContainer = {
			tag = if Flags.FoundationCleanupTextInputPolyfill then nil else props.outerContainerTag,
			minHeight = props.minContainerHeight,
		},
		innerContainer = {
			tag = if Flags.FoundationCleanupTextInputPolyfill then nil else props.innerContainerTag,
			horizontalPadding = UDim.new(0, props.horizontalPadding),
			gap = if Flags.FoundationCleanupTextInputPolyfill then nil else props.gap,
			radius = props.radius,
		},
		outerView = {
			tag = props.outerViewTag,
		},
		textBox = {
			tag = if Flags.FoundationCleanupTextInputPolyfill then nil else props.textBoxTag,
			fontStyle = props.typography,
		},
		icon = {
			size = props.iconSize,
		},
	}
end

-- selene: allow(high_cyclomatic_complexity) -- remove this when FoundationCleanupTextInputPolyfill is cleaned up
local function variantsFactory(tokens: Tokens)
	local common = {
		outerContainer = if Flags.FoundationCleanupTextInputPolyfill
			then nil :: never
			else {
				tag = "bg-shift-100",
			},
		innerContainer = if Flags.FoundationCleanupTextInputPolyfill
			then nil :: never
			else {
				tag = "row align-y-center",
			},
		outerView = {
			bgStyle = tokens.Color.Shift.Shift_100,
			strokeStyle = tokens.Color.Stroke.Emphasis,
			strokeThickness = tokens.Stroke.Standard,
			tag = "row align-y-center",
		},
		textBox = {
			tag = "text-align-x-left text-align-y-center clip content-emphasis gui-object-defaults",
		},
		icon = {
			style = tokens.Color.Content.Muted,
		},
	}
	local multiline = if Flags.FoundationCleanupTextInputPolyfill
		then nil :: never
		else {
			canvas = {
				tag = "size-full-0",
			},
			outerContainer = {
				tag = "size-full-0",
			},
		}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = computeProps({
			canvasTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "size-full-600",
			outerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "radius-small",
			radius = tokens.Radius.Small,
			innerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "gap-small",
			outerViewTag = "size-full-600 gap-small",
			horizontalPadding = tokens.Padding.XSmall,
			gap = if Flags.FoundationCleanupTextInputPolyfill then nil else tokens.Gap.Small,
			textBoxTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "text-body-small",
			typography = tokens.Typography.BodySmall,
			iconSize = IconSize.XSmall,
			minContainerHeight = tokens.Size.Size_600,
		}),
		[InputSize.Small] = computeProps({
			canvasTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "size-full-800",
			outerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "gap-medium",
			outerViewTag = "size-full-800 gap-medium",
			horizontalPadding = tokens.Padding.Small,
			gap = if Flags.FoundationCleanupTextInputPolyfill then nil else tokens.Gap.Medium,
			textBoxTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "text-body-medium",
			typography = tokens.Typography.BodyMedium,
			iconSize = IconSize.XSmall,
			minContainerHeight = tokens.Size.Size_800,
		}),
		[InputSize.Medium] = computeProps({
			canvasTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "size-full-1000",
			outerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "gap-large",
			outerViewTag = "size-full-1000 gap-large",
			horizontalPadding = tokens.Padding.Small,
			gap = if Flags.FoundationCleanupTextInputPolyfill then nil else tokens.Gap.Large,
			textBoxTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "text-body-medium",
			typography = tokens.Typography.BodyMedium,
			iconSize = IconSize.Small,
			minContainerHeight = tokens.Size.Size_1000,
		}),
		[InputSize.Large] = computeProps({
			canvasTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "size-full-1200",
			outerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "gap-large",
			outerViewTag = "size-full-1200 gap-large",
			horizontalPadding = tokens.Padding.Medium,
			gap = if Flags.FoundationCleanupTextInputPolyfill then nil else tokens.Gap.Large,
			textBoxTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "text-body-large",
			typography = tokens.Typography.BodyLarge,
			iconSize = IconSize.Small,
			minContainerHeight = tokens.Size.Size_1200,
		}),
	}

	local variants: { [InputVariant]: VariantProps } = {
		[InputVariant.Standard] = {
			outerView = {
				bgStyle = tokens.Color.Shift.Shift_100,
			},
		},
		[InputVariant.Contrast] = {
			outerView = {
				bgStyle = tokens.Color.Shift.Shift_200,
				strokeStyle = Dash.None,
			},
		},
		[InputVariant.Utility] = {
			outerView = {
				bgStyle = Dash.None,
				strokeStyle = Dash.None,
			},
		},
	}

	local errorState: { [boolean]: VariantProps } = {
		[true] = { outerView = { strokeStyle = tokens.Color.System.Alert } },
		[false] = {},
	}

	local focusedState: { [boolean]: VariantProps } = {
		[true] = {
			outerView = {
				strokeStyle = tokens.Color.System.Emphasis,
				strokeThickness = tokens.Stroke.Standard * 2,
			},
		},
		[false] = {},
	}

	local hoverState: { [boolean]: VariantProps } = {
		[true] = { outerView = { strokeThickness = tokens.Stroke.Standard * 2 } },
		[false] = {},
	}

	local defaultRadius: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = { outerView = { tag = { ["radius-small"] = true } } },
		[InputSize.Small] = { outerView = { tag = { ["radius-medium"] = true } } },
		[InputSize.Medium] = { outerView = { tag = { ["radius-medium"] = true } } },
		[InputSize.Large] = { outerView = { tag = { ["radius-medium"] = true } } },
		-- Circle radius is handled in the InternalTextInput component, as the computation requires context based on previous variant state in the stack
	}
	local radius: { [Radius]: VariantProps } = {
		[Radius.None] = { outerView = { tag = { ["radius-none"] = true } } },
		[Radius.XSmall] = { outerView = { tag = { ["radius-xsmall"] = true } } },
		[Radius.Small] = { outerView = { tag = { ["radius-small"] = true } } },
		[Radius.Medium] = { outerView = { tag = { ["radius-medium"] = true } } },
		[Radius.Large] = { outerView = { tag = { ["radius-large"] = true } } },
		-- Circle radius is handled in the InternalTextInput component, as the computation requires context based on previous variant state in the stack
	}

	return {
		common = common,
		sizes = sizes,
		variants = variants,
		multiline = if Flags.FoundationCleanupTextInputPolyfill then nil :: never else multiline,
		defaultRadius = defaultRadius,
		radius = radius,
		errorState = errorState,
		focusedState = focusedState,
		hoverState = hoverState,
	}
end

return function(
	tokens: Tokens,
	size: InputSize,
	variant: InputVariant?,
	radius: Radius?,
	focused: boolean?,
	hover: boolean?,
	hasError: boolean?
): TextInputVariantProps
	local props = VariantsContext.useVariants("TextInput", variantsFactory, tokens)
	local variantAttributes = props.variants[variant or InputVariant.Standard]

	return composeStyleVariant(
		props.common,
		props.sizes[size],
		if variant ~= InputVariant.Utility then variantAttributes else {},
		if Flags.FoundationCleanupTextInputPolyfill then nil :: never else props.multiline,
		if radius then props.radius[radius] else props.defaultRadius[size],
		if hover ~= nil then props.hoverState[hover] else {},
		if focused ~= nil then props.focusedState[focused] else {},
		if hasError ~= nil then props.errorState[hasError] else {},
		if variant == InputVariant.Utility then variantAttributes else {}
	)
end
