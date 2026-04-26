local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue
type Stroke = Types.Stroke

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
type AlertSeverity = AlertSeverity.AlertSeverity

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type FeedbackAlertVariantProps = {
	container: { tag: string },
	headerRow: { tag: string },
	icon: { style: ColorStyle },
	title: { tag: string },
	subtitle: { tag: string },
	description: { tag: string },
	link: { tag: string },
	stroke: Stroke,
	backgroundStyle: ColorStyleValue,
}

-- Background opacity is 0.05 (5%), so transparency is 0.95
local BACKGROUND_TRANSPARENCY = 0.95

local function createSeverityStyles(tokens: Tokens, severityStyle: ColorStyleValue): VariantProps
	return {
		icon = { style = severityStyle },
		stroke = {
			Color = severityStyle.Color3,
			Transparency = severityStyle.Transparency,
			Thickness = 1,
		},
		backgroundStyle = {
			Color3 = severityStyle.Color3,
			Transparency = BACKGROUND_TRANSPARENCY,
		},
	}
end

local function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "col align-x-left align-y-center gap-medium size-full-0 auto-y padding-large radius-medium",
		},
		headerRow = {
			tag = "row align-y-center gap-medium size-full-0 auto-y",
		},
		title = {
			tag = "shrink auto-xy text-title-medium text-truncate-split content-emphasis",
		},
		subtitle = {
			tag = "shrink auto-xy text-body-medium text-truncate-split content-default",
		},
		description = {
			tag = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-truncate-split content-default",
		},
		link = {
			tag = "shrink auto-xy text-body-medium text-truncate-split content-emphasis",
		},
	}

	local severity: { [AlertSeverity]: VariantProps } = {
		[AlertSeverity.Info] = createSeverityStyles(tokens, tokens.Color.System.Emphasis),
		[AlertSeverity.Warning] = createSeverityStyles(tokens, tokens.Color.System.Warning),
		[AlertSeverity.Success] = createSeverityStyles(tokens, tokens.Color.System.Success),
		[AlertSeverity.Error] = createSeverityStyles(tokens, tokens.Color.System.Alert),
	}

	return { common = common, severity = severity }
end

return function(tokens: Tokens, severity: AlertSeverity): FeedbackAlertVariantProps
	local props = VariantsContext.useVariants("FeedbackAlert", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.severity[severity])
end
