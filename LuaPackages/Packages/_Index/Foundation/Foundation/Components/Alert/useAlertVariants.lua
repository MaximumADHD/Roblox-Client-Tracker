local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
type AlertSeverity = AlertSeverity.AlertSeverity

local AlertVariant = require(Foundation.Enums.AlertVariant)
type AlertVariant = AlertVariant.AlertVariant

local ColorMode = require(Foundation.Enums.ColorMode)

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type AlertVariantProps = {
	container: { tag: string, backgroundStyle: ColorStyleValue },
	main: { tag: string },
	stack: { tag: string },
	icon: { style: ColorStyle },
	iconFrame: { Size: UDim2 },
	iconBackplate: { Size: UDim2, Position: UDim2, tag: string, backgroundStyle: ColorStyleValue }?,
	message: { tag: string, padding: Types.Padding? },
	link: { tag: string, padding: Types.Padding? },
	border: { Size: UDim2, backgroundStyle: ColorStyleValue },
}

-- Not available as tags or tokens.
local SUBTLE_BACKGROUND_TRANSPARENCY = 0.90
local STRONG_BACKGROUND_TRANSPARENCY = 0.84

local function createSeverityVariant(
	backgroundStyle: ColorStyleValue,
	backgroundTransparency: number,
	iconStyle: ColorStyle,
	borderStyle: ColorStyleValue
): VariantProps
	return {
		container = {
			backgroundStyle = {
				Color3 = backgroundStyle.Color3,
				Transparency = backgroundTransparency,
			},
		},
		icon = { style = iconStyle },
		border = { backgroundStyle = borderStyle },
	}
end

local function variantsFactory(tokens: Tokens)
	-- +1px so mixed line counts still align with the icon.
	local textTopPadding = { top = UDim.new(0, tokens.Size.Size_150 + 1) }
	local stackedLinkPadding = {
		top = UDim.new(0, tokens.Size.Size_150),
		bottom = UDim.new(0, tokens.Size.Size_150),
	}
	local iconSize = tokens.Size.Size_500
	local mainTag = "row align-y-top gap-medium size-full-0 auto-y padding-x-large padding-y-medium"
	local textStyle = {
		tag = "text-body-medium text-wrap text-align-x-left content-emphasis",
		padding = textTopPadding,
	}
	local common = {
		main = {
			tag = mainTag,
		},
		stack = {
			tag = "col fill gap-small auto-y",
		},
		iconFrame = {
			Size = UDim2.fromOffset(iconSize, iconSize),
		},
		message = textStyle,
		link = textStyle,
		border = {
			Size = UDim2.new(1, 0, 0, tokens.Stroke.Standard),
		},
	}

	local severity: { [AlertSeverity]: VariantProps } = {
		[AlertSeverity.Info] = createSeverityVariant(
			tokens.Color.System.Neutral,
			SUBTLE_BACKGROUND_TRANSPARENCY,
			tokens.Color.System.Emphasis,
			tokens.Color.Stroke.Emphasis
		),
		[AlertSeverity.Success] = createSeverityVariant(
			tokens.Color.System.Success,
			SUBTLE_BACKGROUND_TRANSPARENCY,
			tokens.Color.System.Success,
			tokens.Color.Stroke.Emphasis
		),
		[AlertSeverity.Warning] = createSeverityVariant(
			tokens.Color.System.Warning,
			STRONG_BACKGROUND_TRANSPARENCY,
			tokens.Color.System.Warning,
			tokens.Color.System.Warning
		),
		[AlertSeverity.Error] = createSeverityVariant(
			tokens.Color.System.Alert,
			STRONG_BACKGROUND_TRANSPARENCY,
			tokens.Color.System.Alert,
			tokens.Color.System.Alert
		),
	}

	local variants: { [AlertVariant]: VariantProps } = {
		[AlertVariant.Feedback] = {
			container = { tag = `radius-medium {mainTag}` },
		},
		[AlertVariant.System] = {
			container = { tag = "col size-full-0 auto-y" },
		},
	}

	-- Feedback only. System uses dedicated edges.
	local emphasisStroke = {
		container = { tag = "stroke-standard stroke-emphasis" },
	}
	local strokes: { [AlertSeverity]: VariantProps } = {
		[AlertSeverity.Info] = emphasisStroke,
		[AlertSeverity.Success] = emphasisStroke,
		[AlertSeverity.Warning] = {
			container = { tag = "stroke-standard stroke-system-warning" },
		},
		[AlertSeverity.Error] = {
			container = { tag = "stroke-standard stroke-system-alert" },
		},
	}

	-- Fills the knockout on circle filled icons. Warning has none.
	local discSize = iconSize - tokens.Size.Size_100
	local disc = {
		Size = UDim2.fromOffset(discSize, discSize),
		Position = UDim2.fromOffset((iconSize - discSize) / 2, (iconSize - discSize) / 2),
		tag = "radius-circle",
		backgroundStyle = tokens.Color.Extended.White.White_100,
	}
	local backplates: { [AlertSeverity]: VariantProps } = {
		[AlertSeverity.Info] = { iconBackplate = disc },
		[AlertSeverity.Success] = { iconBackplate = disc },
		[AlertSeverity.Warning] = {},
		[AlertSeverity.Error] = { iconBackplate = disc },
	}

	local isStacked: { [boolean]: VariantProps } = {
		[false] = {
			message = { tag = "fill auto-y" },
			-- auto-x sizes to the unwrapped line so we can compare against 40%.
			link = { tag = "auto-xy" },
		},
		[true] = {
			message = { tag = "size-full-0 auto-y" },
			link = { tag = "size-full-0 auto-y", padding = stackedLinkPadding },
		},
	}

	return {
		common = common,
		severity = severity,
		variants = variants,
		strokes = strokes,
		backplates = backplates,
		isStacked = isStacked,
	}
end

local function useAlertVariants(
	tokens: Tokens,
	severity: AlertSeverity,
	variant: AlertVariant,
	isStacked: boolean
): AlertVariantProps
	local props = VariantsContext.useVariants("Alert", variantsFactory, tokens)
	-- Dark mode only.
	local isDarkMode = tokens.Config.ColorMode.Name == ColorMode.Dark
	return composeStyleVariant(
		props.common,
		props.severity[severity],
		props.variants[variant],
		props.isStacked[isStacked],
		if variant == AlertVariant.Feedback then props.strokes[severity] else {},
		if isDarkMode then props.backplates[severity] else {}
	)
end

return useAlertVariants
