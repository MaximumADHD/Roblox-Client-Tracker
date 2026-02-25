local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type ColorStyle = Types.ColorStyle

local ColorMode = require(Foundation.Enums.ColorMode)
type ColorMode = ColorMode.ColorMode

local AlertVariant = require(Foundation.Enums.AlertVariant)
type AlertVariant = AlertVariant.AlertVariant

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
type AlertSeverity = AlertSeverity.AlertSeverity

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type AlertVariantProps = {
	container: { tag: string, colorMode: ColorMode },
	icon: { style: ColorStyle },
	title: { style: ColorStyle, tag: string },
	description: { style: ColorStyle, tag: string },
}

local function createStandardVariantStyles(tokens: Tokens, iconStyle: ColorStyle): VariantProps
	return {
		container = {
			tag = "bg-shift-200",
			colorMode = ColorMode.Color,
		},
		title = { style = tokens.Color.Content.Emphasis },
		description = { style = tokens.Color.Content.Default },
		icon = { style = iconStyle },
	}
end

local function createEmphasisVariantStyles(tokens: Tokens, containerTag: string, colorMode: ColorMode): VariantProps
	return {
		container = {
			tag = containerTag,
			colorMode = colorMode,
		},
		title = { style = tokens[colorMode].Content.Emphasis },
		description = { style = tokens[colorMode].Content.Default },
		icon = { style = tokens[colorMode].Content.Emphasis },
	}
end

local function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "size-full-0 auto-y row padding-y-large padding-x-medium gap-medium",
		},
		title = {
			tag = "text-align-x-left text-wrap auto-xy text-title-medium padding-y-xxsmall",
		},
		description = {
			tag = "text-align-x-left text-wrap auto-xy text-body-medium text-wrap",
		},
	}

	local severity: { [AlertVariant]: { [AlertSeverity]: VariantProps } } = {
		[AlertVariant.Standard] = {
			[AlertSeverity.Info] = createStandardVariantStyles(tokens, tokens.Color.System.Emphasis),
			[AlertSeverity.Warning] = createStandardVariantStyles(tokens, tokens.Color.System.Warning),
			[AlertSeverity.Success] = createStandardVariantStyles(tokens, tokens.Color.System.Success),
			[AlertSeverity.Error] = createStandardVariantStyles(tokens, tokens.Color.System.Alert),
		},
		[AlertVariant.Emphasis] = {
			[AlertSeverity.Info] = createEmphasisVariantStyles(tokens, "bg-system-emphasis", ColorMode.DarkMode),
			[AlertSeverity.Warning] = createEmphasisVariantStyles(tokens, "bg-system-warning", ColorMode.LightMode),
			[AlertSeverity.Success] = createEmphasisVariantStyles(tokens, "bg-system-success", ColorMode.LightMode),
			[AlertSeverity.Error] = createEmphasisVariantStyles(tokens, "bg-system-alert", ColorMode.DarkMode),
		},
	}

	return { common = common, severity = severity }
end

return function(tokens: Tokens, variant: AlertVariant, severity: AlertSeverity): AlertVariantProps
	local props = VariantsContext.useVariants("SystemBanner", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.severity[variant][severity])
end
