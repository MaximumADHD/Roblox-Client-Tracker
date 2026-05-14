local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
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
local getInputVariantsFactory = require(Foundation.Components.InputField.getInputVariantsFactory)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

export type TextInputVariantProps = {
	canvas: {
		tag: string,
	},
	-- TODO: remove with FFlagFoundationInputVariantsConsolidateContainer
	outerContainer: {
		tag: string,
		minHeight: number,
	},
	-- TODO: remove with FFlagFoundationInputVariantsConsolidateContainer
	innerContainer: {
		tag: string,
		gap: number,
		horizontalPadding: UDim,
		radius: number,
	},
	-- TODO: remove with FFlagFoundationInputVariantsConsolidateContainer
	outerView: {
		bgStyle: ColorStyleValue?,
		strokeStyle: ColorStyleValue?,
		strokeThickness: number?,
		tag: string,
	},
	-- END TODO
	container: {
		minHeight: number,
		horizontalPadding: UDim,
		radius: number,
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
	clearButton: {
		icon: BuilderIcons.Icon,
		padding: number,
		tag: Tags,
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
		-- TODO: remove with FFlagFoundationInputVariantsConsolidateContainer + remove optional on containerTag
		outerViewTag: Tags?,
		containerTag: Tags?,
		horizontalPadding: number,
		-- TODO: remove with Flags.FoundationCleanupTextInputPolyfill
		gap: number?,
		radius: number,
		-- TODO: remove with Flags.FoundationCleanupTextInputPolyfill
		textBoxTag: string?,
		typography: FontStyle,
		iconSize: IconSize,
		minContainerHeight: number,
		clearButtonIcon: BuilderIcons.Icon,
		clearButtonPadding: number,
	}
)
	return {
		canvas = if Flags.FoundationCleanupTextInputPolyfill
			then nil :: never
			else {
				tag = props.canvasTag,
			},
		outerContainer = if Flags.FoundationInputVariantsConsolidateContainer
			then nil :: never
			else {
				tag = if Flags.FoundationCleanupTextInputPolyfill then nil else props.outerContainerTag,
				minHeight = props.minContainerHeight,
			},
		innerContainer = if Flags.FoundationInputVariantsConsolidateContainer
			then nil :: never
			else {
				tag = if Flags.FoundationCleanupTextInputPolyfill then nil else props.innerContainerTag,
				horizontalPadding = UDim.new(0, props.horizontalPadding),
				gap = if Flags.FoundationCleanupTextInputPolyfill then nil else props.gap,
				radius = props.radius,
			},
		outerView = if Flags.FoundationInputVariantsConsolidateContainer
			then nil :: never
			else {
				tag = props.outerViewTag,
			},
		container = if Flags.FoundationInputVariantsConsolidateContainer
			then {
				minHeight = props.minContainerHeight,
				horizontalPadding = UDim.new(0, props.horizontalPadding),
				radius = props.radius,
				tag = props.containerTag,
			}
			else nil :: never,
		textBox = {
			tag = if Flags.FoundationCleanupTextInputPolyfill then nil else props.textBoxTag,
			fontStyle = props.typography,
		},
		icon = {
			size = props.iconSize,
		},
		clearButton = if Flags.FoundationInternalTextInputClearButton
			then {
				icon = props.clearButtonIcon,
				padding = props.clearButtonPadding,
			}
			else nil :: never,
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
		[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
			bgStyle = tokens.Color.Shift.Shift_100,
			strokeStyle = tokens.Color.Stroke.Emphasis,
			strokeThickness = tokens.Stroke.Standard,
			tag = {
				["row align-y-center"] = not Flags.FoundationInternalTextInputClearButton,
				["row"] = Flags.FoundationInternalTextInputClearButton,
			},
		},
		textBox = {
			tag = "text-align-x-left text-align-y-center clip content-emphasis gui-object-defaults",
		},
		icon = {
			style = tokens.Color.Content.Muted,
		},
		clearButton = if Flags.FoundationInternalTextInputClearButton
			then {
				tag = "auto-xy",
			}
			else nil :: never,
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
			[if Flags.FoundationInputVariantsConsolidateContainer then "containerTag" else "outerViewTag"] = "size-full-600 gap-small",
			horizontalPadding = tokens.Padding.XSmall,
			gap = if Flags.FoundationCleanupTextInputPolyfill then nil else tokens.Gap.Small,
			textBoxTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "text-body-small",
			typography = tokens.Typography.BodySmall,
			iconSize = IconSize.XSmall,
			minContainerHeight = tokens.Size.Size_600,
			clearButtonIcon = if Flags.FoundationInternalTextInputClearButton
				then BuilderIcons.Icon.XSmall
				else nil :: never,
			clearButtonPadding = if Flags.FoundationInternalTextInputClearButton
				then tokens.Padding.XSmall
				else nil :: never,
		}),
		[InputSize.Small] = computeProps({
			canvasTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "size-full-800",
			outerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "gap-medium",
			[if Flags.FoundationInputVariantsConsolidateContainer then "containerTag" else "outerViewTag"] = "size-full-800 gap-medium",
			horizontalPadding = tokens.Padding.Small,
			gap = if Flags.FoundationCleanupTextInputPolyfill then nil else tokens.Gap.Medium,
			textBoxTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "text-body-medium",
			typography = tokens.Typography.BodyMedium,
			iconSize = IconSize.XSmall,
			minContainerHeight = tokens.Size.Size_800,
			clearButtonIcon = if Flags.FoundationInternalTextInputClearButton
				then BuilderIcons.Icon.XSmall
				else nil :: never,
			clearButtonPadding = if Flags.FoundationInternalTextInputClearButton
				then tokens.Size.Size_150
				else nil :: never,
		}),
		[InputSize.Medium] = computeProps({
			canvasTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "size-full-1000",
			outerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "gap-large",
			[if Flags.FoundationInputVariantsConsolidateContainer then "containerTag" else "outerViewTag"] = "size-full-1000 gap-large",
			horizontalPadding = tokens.Padding.Small,
			gap = if Flags.FoundationCleanupTextInputPolyfill then nil else tokens.Gap.Large,
			textBoxTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "text-body-medium",
			typography = tokens.Typography.BodyMedium,
			iconSize = IconSize.Small,
			minContainerHeight = tokens.Size.Size_1000,
			clearButtonIcon = if Flags.FoundationInternalTextInputClearButton
				then BuilderIcons.Icon.X
				else nil :: never,
			clearButtonPadding = if Flags.FoundationInternalTextInputClearButton
				then tokens.Padding.Small
				else nil :: never,
		}),
		[InputSize.Large] = computeProps({
			canvasTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "size-full-1200",
			outerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "radius-medium",
			radius = tokens.Radius.Medium,
			innerContainerTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "gap-large",
			[if Flags.FoundationInputVariantsConsolidateContainer then "containerTag" else "outerViewTag"] = "size-full-1200 gap-large",
			horizontalPadding = tokens.Padding.Medium,
			gap = if Flags.FoundationCleanupTextInputPolyfill then nil else tokens.Gap.Large,
			textBoxTag = if Flags.FoundationCleanupTextInputPolyfill then nil else "text-body-large",
			typography = tokens.Typography.BodyLarge,
			iconSize = IconSize.Small,
			minContainerHeight = tokens.Size.Size_1200,
			clearButtonIcon = if Flags.FoundationInternalTextInputClearButton
				then BuilderIcons.Icon.X
				else nil :: never,
			clearButtonPadding = if Flags.FoundationInternalTextInputClearButton
				then tokens.Padding.Small
				else nil :: never,
		}),
	}

	local variants: { [InputVariant]: VariantProps } = if Flags.FoundationSharedInputVariants
		then nil :: never
		else {
			[InputVariant.Standard] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					bgStyle = tokens.Color.Shift.Shift_100,
				},
			},
			[InputVariant.Contrast] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					bgStyle = tokens.Color.Shift.Shift_200,
					strokeStyle = Dash.None,
				},
			},
			[InputVariant.Utility] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					bgStyle = Dash.None,
					strokeStyle = Dash.None,
				},
			},
		}

	local errorState: { [boolean]: VariantProps } = if Flags.FoundationSharedInputVariants
		then nil :: never
		else {
			[true] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					strokeStyle = tokens.Color.System.Alert,
				},
			},
			[false] = {},
		}

	local focusedState: { [boolean]: VariantProps } = if Flags.FoundationSharedInputVariants
		then nil :: never
		else {
			[true] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					strokeStyle = tokens.Color.System.Emphasis,
					strokeThickness = tokens.Stroke.Standard * 2,
				},
			},
			[false] = {},
		}

	local hoverState: { [boolean]: VariantProps } = if Flags.FoundationSharedInputVariants
		then nil :: never
		else {
			[true] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					strokeThickness = tokens.Stroke.Standard * 2,
				},
			},
			[false] = {},
		}

	local defaultRadius: { [InputSize]: VariantProps } = if Flags.FoundationSharedInputVariants
		then nil :: never
		else {
			[InputSize.XSmall] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					tag = { ["radius-small"] = true },
				},
			},
			[InputSize.Small] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					tag = { ["radius-medium"] = true },
				},
			},
			[InputSize.Medium] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					tag = { ["radius-medium"] = true },
				},
			},
			[InputSize.Large] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					tag = { ["radius-medium"] = true },
				},
			},
		}
	local radius: { [Radius]: VariantProps } = if Flags.FoundationSharedInputVariants
		then nil :: never
		else {
			[Radius.None] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					tag = { ["radius-none"] = true },
				},
			},
			[Radius.XSmall] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					tag = { ["radius-xsmall"] = true },
				},
			},
			[Radius.Small] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					tag = { ["radius-small"] = true },
				},
			},
			[Radius.Medium] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					tag = { ["radius-medium"] = true },
				},
			},
			[Radius.Large] = {
				[if Flags.FoundationInputVariantsConsolidateContainer then "container" else "outerView"] = {
					tag = { ["radius-large"] = true },
				},
			},
		}

	return {
		common = common,
		sizes = sizes,
		variants = if Flags.FoundationSharedInputVariants then nil :: never else variants,
		multiline = if Flags.FoundationCleanupTextInputPolyfill then nil :: never else multiline,
		defaultRadius = if Flags.FoundationSharedInputVariants then nil :: never else defaultRadius,
		radius = if Flags.FoundationSharedInputVariants then nil :: never else radius,
		errorState = if Flags.FoundationSharedInputVariants then nil :: never else errorState,
		focusedState = if Flags.FoundationSharedInputVariants then nil :: never else focusedState,
		hoverState = if Flags.FoundationSharedInputVariants then nil :: never else hoverState,
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
	local inputProps = if Flags.FoundationSharedInputVariants
		then VariantsContext.useVariants("InputField", getInputVariantsFactory, tokens)
		else props

	local variantAttributes = inputProps.variants[variant or InputVariant.Standard]

	return composeStyleVariant(
		props.common,
		if Flags.FoundationSharedInputVariants then inputProps.sizes[size] else nil :: never,
		props.sizes[size],
		if variant ~= InputVariant.Utility then variantAttributes else {},
		if Flags.FoundationCleanupTextInputPolyfill then nil :: never else props.multiline,
		if radius then inputProps.radius[radius] else inputProps.defaultRadius[size],
		if hover ~= nil then inputProps.hoverState[hover] else {},
		if focused ~= nil then inputProps.focusedState[focused] else {},
		if hasError ~= nil then inputProps.errorState[hasError] else {},
		if variant == InputVariant.Utility then variantAttributes else {}
	)
end
