local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue
type FontStyle = Types.FontStyle
type Tags = Types.Tags

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

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
		bgStyle: ColorStyleValue,
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

local function computeProps(props: {
	canvasTag: string,
	outerContainerTag: string,
	innerContainerTag: string,
	outerViewTag: Tags,
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
			fontStyle = props.typography,
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
			bgStyle = tokens.Color.Shift.Shift_100,
			strokeStyle = if Flags.FoundationTextInputAlignStrokeBehavior then tokens.Color.Stroke.Emphasis else nil,
			strokeThickness = if Flags.FoundationTextInputAlignStrokeBehavior then tokens.Stroke.Standard else nil,
			tag = "row align-y-center",
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
			tag = "size-full-0",
		},
		outerContainer = {
			tag = "size-full-0",
		},
	}
	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = computeProps({
			canvasTag = "size-full-600",
			outerContainerTag = "radius-small",
			radius = tokens.Radius.Small,
			innerContainerTag = "gap-small",
			outerViewTag = {
				["size-full-600 radius-small gap-small"] = not Flags.FoundationInternalTextInputCornerRadius,
				["size-full-600 gap-small"] = Flags.FoundationInternalTextInputCornerRadius,
			},
			horizontalPadding = tokens.Padding.XSmall,
			gap = tokens.Gap.Small,
			textBoxTag = "text-body-small",
			typography = tokens.Typography.BodySmall,
			iconSize = IconSize.XSmall,
			minContainerHeight = tokens.Size.Size_600,
		}),
		[InputSize.Small] = computeProps({
			canvasTag = "size-full-800",
			outerContainerTag = "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = "gap-medium",
			outerViewTag = {
				["size-full-800 radius-medium gap-medium"] = not Flags.FoundationInternalTextInputCornerRadius,
				["size-full-800 gap-medium"] = Flags.FoundationInternalTextInputCornerRadius,
			},
			horizontalPadding = tokens.Padding.Small,
			gap = tokens.Gap.Medium,
			textBoxTag = "text-body-medium",
			typography = tokens.Typography.BodyMedium,
			iconSize = IconSize.XSmall,
			minContainerHeight = tokens.Size.Size_800,
		}),
		[InputSize.Medium] = computeProps({
			canvasTag = "size-full-1000",
			outerContainerTag = "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = "gap-large",
			outerViewTag = {
				["size-full-1000 radius-medium gap-large"] = not Flags.FoundationInternalTextInputCornerRadius,
				["size-full-1000 gap-large"] = Flags.FoundationInternalTextInputCornerRadius,
			},
			horizontalPadding = tokens.Padding.Small,
			gap = tokens.Gap.Large,
			textBoxTag = "text-body-medium",
			typography = tokens.Typography.BodyMedium,
			iconSize = IconSize.Small,
			minContainerHeight = tokens.Size.Size_1000,
		}),
		[InputSize.Large] = computeProps({
			canvasTag = "size-full-1200",
			outerContainerTag = "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = "gap-large",
			outerViewTag = {
				["size-full-1200 radius-medium gap-large"] = not Flags.FoundationInternalTextInputCornerRadius,
				["size-full-1200 gap-large"] = Flags.FoundationInternalTextInputCornerRadius,
			},
			horizontalPadding = tokens.Padding.Medium,
			gap = tokens.Gap.Large,
			textBoxTag = "text-body-large",
			typography = tokens.Typography.BodyLarge,
			iconSize = IconSize.Small,
			minContainerHeight = tokens.Size.Size_1200,
		}),
	}

	local errorState: { [boolean]: VariantProps } = if Flags.FoundationTextInputAlignStrokeBehavior
		then {
			[true] = { outerView = { strokeStyle = tokens.Color.System.Alert } },
			[false] = {},
		}
		else nil :: never

	local focusedState: { [boolean]: VariantProps } = if Flags.FoundationTextInputAlignStrokeBehavior
		then {
			[true] = {
				outerView = { strokeStyle = tokens.Color.System.Emphasis, strokeThickness = tokens.Stroke.Standard * 2 },
			},
			[false] = {},
		}
		else nil :: never

	local hoverState: { [boolean]: VariantProps } = if Flags.FoundationTextInputAlignStrokeBehavior
		then {
			[true] = { outerView = { strokeThickness = tokens.Stroke.Standard * 2 } },
			[false] = {},
		}
		else nil :: never

	local defaultRadius: { [InputSize]: VariantProps } = if Flags.FoundationInternalTextInputCornerRadius
		then {
			[InputSize.XSmall] = { outerView = { tag = { ["radius-small"] = true } } },
			[InputSize.Small] = { outerView = { tag = { ["radius-medium"] = true } } },
			[InputSize.Medium] = { outerView = { tag = { ["radius-medium"] = true } } },
			[InputSize.Large] = { outerView = { tag = { ["radius-medium"] = true } } },
		}
		else nil :: never
	local radius: { [Radius]: VariantProps } = if Flags.FoundationInternalTextInputCornerRadius
		then {
			[Radius.None] = { outerView = { tag = { ["radius-none"] = true } } },
			[Radius.XSmall] = { outerView = { tag = { ["radius-xsmall"] = true } } },
			[Radius.Small] = { outerView = { tag = { ["radius-small"] = true } } },
			[Radius.Medium] = { outerView = { tag = { ["radius-medium"] = true } } },
			[Radius.Large] = { outerView = { tag = { ["radius-large"] = true } } },
			[Radius.Circle] = { outerView = { tag = { ["radius-circle"] = true } } },
		}
		else nil :: never

	return {
		common = common,
		sizes = sizes,
		multiline = multiline,
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
	radius: Radius?,
	focused: boolean?,
	hover: boolean?,
	hasError: boolean?
): TextInputVariantProps
	local props = VariantsContext.useVariants("TextInput", variantsFactory, tokens)
	if Flags.FoundationTextInputAlignStrokeBehavior then
		return composeStyleVariant(
			props.common,
			props.sizes[size],
			props.multiline,
			if Flags.FoundationInternalTextInputCornerRadius
				then if radius then props.radius[radius] else props.defaultRadius[size]
				else {},
			if hover ~= nil then props.hoverState[hover] else {},
			if focused ~= nil then props.focusedState[focused] else {},
			if hasError ~= nil then props.errorState[hasError] else {}
		)
	else
		return composeStyleVariant(
			props.common,
			props.sizes[size],
			props.multiline,
			if Flags.FoundationInternalTextInputCornerRadius
				then if radius then props.radius[radius] else props.defaultRadius[size]
				else {}
		)
	end
end
