local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local AlertActions = require(Foundation.Components.AlertActions)
local AlertConstants = require(Foundation.Components.AlertActions.AlertConstants)
local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local AlertVariant = require(Foundation.Enums.AlertVariant)
local Breakpoint = require(Foundation.Enums.Breakpoint)
local BuilderIcons = require(Packages.BuilderIcons)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local Flags = require(Foundation.Utility.Flags)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local IconVariant = BuilderIcons.IconVariant
local InputSize = require(Foundation.Enums.InputSize)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useBreakpoint = require(Foundation.Providers.Responsive.Hooks.useBreakpoint)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useSystemBannerVariants = require(script.Parent.useSystemBannerVariants)

type Breakpoint = Breakpoint.Breakpoint
type ButtonVariant = ButtonVariant.ButtonVariant
type CloseAffordanceVariant = CloseAffordanceVariant.CloseAffordanceVariant
type AlertVariant = AlertVariant.AlertVariant
type AlertSeverity = AlertSeverity.AlertSeverity
type AlertAction = AlertActions.AlertAction

-- Remove with FoundationSystemBannerUseSharedAlertActions

local SEVERITY_TO_ICON: { [AlertSeverity]: string } = AlertConstants.SEVERITY_TO_ICON

export type SystemBannerProps = {
	variant: AlertVariant?,
	severity: AlertSeverity,
	title: string,
	description: string?,
	actions: { AlertAction }?,
	onClose: (() -> ())?,
} & Types.CommonProps

local defaultProps = {
	variant = AlertVariant.Standard,
	testId = "--foundation-system-banner",
}

-- SystemBanner renders Standard and Emphasis only; the Alert values collapse onto the default.
local VARIANT_FALLBACKS: { [AlertVariant]: AlertVariant } = {
	[AlertVariant.System] = AlertVariant.Standard,
	[AlertVariant.Feedback] = AlertVariant.Standard,
}

local function SystemBanner(systemBannerProps: SystemBannerProps, ref: React.Ref<Instance>)
	local props = withDefaults(systemBannerProps, defaultProps)
	local tokens = useTokens()
	local variant: AlertVariant = VARIANT_FALLBACKS[props.variant] or props.variant

	local variantProps = useSystemBannerVariants(tokens, variant, props.severity)

	local container, setContainer = React.useState(nil :: Frame?)
	local composedRef = ReactUtils.useComposedRef(ref, setContainer)

	local breakpoint = useBreakpoint(container)
	local shouldWrapActions = breakpoint == Breakpoint.XSmall

	local actions = React.useMemo(function()
		return React.createElement(AlertActions, {
			actions = props.actions,
			testId = `{props.testId}--actions`,
			LayoutOrder = 3,
			tag = {
				["row gap-small auto-xy"] = true,
				["align-x-left"] = shouldWrapActions,
				["align-x-right"] = not shouldWrapActions,
			},
			padding = if shouldWrapActions then { top = UDim.new(0, tokens.Gap.Small) } else nil,
		}) :: any
	end, { props.actions, props.testId, shouldWrapActions, tokens.Gap.Small } :: { unknown })

	local presentationValue = if Flags.FoundationStableContextValues
		then React.useMemo(function()
			return { colorNamespace = variantProps.container.colorNamespace }
		end, { variantProps.container.colorNamespace } :: { unknown })
		else nil

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = {
				[variantProps.container.tag] = true,
				["align-y-center"] = props.title == "" or props.description == nil,
				["align-y-top"] = props.title ~= "" and props.description ~= nil,
			},
			ref = composedRef,
		}),
		React.createElement(PresentationContext.Provider, {
			value = if Flags.FoundationStableContextValues
				then presentationValue
				else { colorNamespace = variantProps.container.colorNamespace },
		}, {
			Icon = React.createElement(Icon, {
				LayoutOrder = 1,
				name = SEVERITY_TO_ICON[props.severity],
				size = IconSize.Large,
				variant = IconVariant.Filled,
				style = variantProps.icon.style,
				testId = `{props.testId}--icon`,
			}),
			Content = React.createElement(View, {
				LayoutOrder = 2,
				tag = {
					["fill auto-xy"] = true,
					["col"] = shouldWrapActions,
					["row"] = not shouldWrapActions,
				},
				testId = `{props.testId}--content`,
			}, {
				Text = React.createElement(View, {
					LayoutOrder = 2,
					tag = "col auto-xy",
				}, {
					Title = if props.title ~= ""
						then React.createElement(Text, {
							Text = props.title,
							textStyle = variantProps.title.style,
							tag = variantProps.title.tag,
							LayoutOrder = 1,
							testId = `{props.testId}--title`,
						})
						else nil,
					Description = if props.description
						then React.createElement(Text, {
							Text = props.description,
							textStyle = variantProps.description.style,
							tag = variantProps.description.tag,
							LayoutOrder = 2,
							testId = `{props.testId}--description`,
						})
						else nil,
					Actions = if shouldWrapActions then actions else nil,
				}),
			}),
			Actions = if not shouldWrapActions then actions else nil,
			Close = if props.onClose ~= nil
				then React.createElement(CloseAffordance, {
					onActivated = props.onClose,
					size = InputSize.Small,
					variant = CloseAffordanceVariant.Utility,
					LayoutOrder = 4,
					testId = `{props.testId}--close`,
				})
				else nil,
		})
	)
end

return React.memo(React.forwardRef(SystemBanner))
