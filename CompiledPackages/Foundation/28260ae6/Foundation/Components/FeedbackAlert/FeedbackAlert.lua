local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local AlertActions = require(Foundation.Components.AlertActions)
local AlertConstants = require(Foundation.Components.AlertActions.AlertConstants)
local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local BuilderIcons = require(Packages.BuilderIcons)
local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local ControlState = require(Foundation.Enums.ControlState)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local escapeRichText = require(Foundation.Utility.escapeRichText)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local IconVariant = BuilderIcons.IconVariant

local useFeedbackAlertVariants = require(script.Parent.useFeedbackAlertVariants)

type CloseAffordanceVariant = CloseAffordanceVariant.CloseAffordanceVariant
type AlertSeverity = AlertSeverity.AlertSeverity
type AlertAction = AlertActions.AlertAction

export type FeedbackAlertProps = {
	severity: AlertSeverity,
	title: string,
	subtitle: string?,
	description: string?,
	link: {
		text: string,
		onActivated: () -> (),
	}?,
	actions: { AlertAction }?,
	onClose: (() -> ())?,
} & Types.CommonProps

local defaultProps = {
	testId = "--foundation-feedback-alert",
}

local function FeedbackAlert(feedbackAlertProps: FeedbackAlertProps, ref: React.Ref<Instance>)
	local props = withDefaults(feedbackAlertProps, defaultProps)
	local tokens = useTokens()

	local variantProps = useFeedbackAlertVariants(tokens, props.severity)

	local composedRef = ReactUtils.useComposedRef(ref)

	local linkText = if props.link then escapeRichText(props.link.text) else nil
	local isLinkHovered, setIsLinkHovered = React.useState(false)
	local onLinkStateChanged = React.useCallback(function(state)
		setIsLinkHovered(state == ControlState.Hover)
	end, {})

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			stroke = variantProps.stroke,
			backgroundStyle = variantProps.backgroundStyle,
			ref = composedRef,
		}),
		{
			HeaderRow = React.createElement(View, {
				LayoutOrder = 1,
				tag = variantProps.headerRow.tag,
				testId = `{props.testId}--header`,
			}, {
				Icon = React.createElement(Icon, {
					LayoutOrder = 1,
					name = AlertConstants.SEVERITY_TO_ICON[props.severity],
					size = IconSize.Large,
					variant = IconVariant.Filled,
					style = variantProps.icon.style,
					testId = `{props.testId}--icon`,
				}),
				Content = React.createElement(View, {
					LayoutOrder = 2,
					tag = "row align-y-center fill gap-xsmall auto-y",
					testId = `{props.testId}--content`,
				}, {
					Title = React.createElement(Text, {
						Text = props.title,
						tag = variantProps.title.tag,
						LayoutOrder = 1,
						testId = `{props.testId}--title`,
					}),
					Subtitle = if props.subtitle
						then React.createElement(Text, {
							Text = props.subtitle,
							tag = variantProps.subtitle.tag,
							LayoutOrder = 2,
							testId = `{props.testId}--subtitle`,
						})
						else nil,
					Separator = if props.link
						then React.createElement(Text, {
							Text = "·",
							tag = "auto-xy text-body-medium content-default",
							LayoutOrder = 3,
							testId = `{props.testId}--separator`,
						})
						else nil,
					Link = if props.link
						then React.createElement(Text, {
							Text = if isLinkHovered then `<u>{linkText}</u>` else linkText,
							RichText = true,
							tag = variantProps.link.tag,
							LayoutOrder = 4,
							stateLayer = { affordance = StateLayerAffordance.None },
							onStateChanged = onLinkStateChanged,
							onActivated = props.link.onActivated,
							testId = `{props.testId}--link`,
						})
						else nil,
				}),
				Close = if props.onClose ~= nil
					then React.createElement(CloseAffordance, {
						onActivated = props.onClose,
						size = InputSize.XSmall,
						variant = CloseAffordanceVariant.Utility,
						LayoutOrder = 3,
						testId = `{props.testId}--close`,
					})
					else nil,
			}),
			Description = if props.description
				then React.createElement(Text, {
					Text = props.description,
					tag = variantProps.description.tag,
					LayoutOrder = 2,
					testId = `{props.testId}--description`,
				})
				else nil,
			Actions = React.createElement(AlertActions, {
				actions = props.actions,
				testId = `{props.testId}--actions`,
				LayoutOrder = 3,
			}),
		}
	)
end

return React.memo(React.forwardRef(FeedbackAlert))
