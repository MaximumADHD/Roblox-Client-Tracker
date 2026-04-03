local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local AlertVariant = require(Foundation.Enums.AlertVariant)
local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local CloseAffordance = require(Foundation.Components.CloseAffordance)
local Icon = require(Foundation.Components.Icon)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
type ButtonVariant = ButtonVariant.ButtonVariant
local BuilderIcons = require(Packages.BuilderIcons)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local IconVariant = BuilderIcons.IconVariant
local Breakpoint = require(Foundation.Enums.Breakpoint)
local Logger = require(Foundation.Utility.Logger)
local useBreakpoint = require(Foundation.Providers.Responsive.Hooks.useBreakpoint)

local useSystemBannerVariants = require(script.Parent.useSystemBannerVariants)

type Breakpoint = Breakpoint.Breakpoint
type CloseAffordanceVariant = CloseAffordanceVariant.CloseAffordanceVariant
type AlertVariant = AlertVariant.AlertVariant
type AlertSeverity = AlertSeverity.AlertSeverity

export type SystemBannerProps = {
	variant: AlertVariant?,
	severity: AlertSeverity,
	title: string,
	description: string?,
	actions: {
		{
			onActivated: () -> (),
			-- Only `Standard` and `Utility` variants are supported
			variant: (typeof(ButtonVariant.Standard) | typeof(ButtonVariant.Utility))?,
			text: string,
		}
	}?,
	onClose: (() -> ())?,
} & Types.CommonProps

local defaultProps = {
	variant = AlertVariant.Standard,
	testId = "--foundation-system-banner",
}

local MAX_BUTTON_COUNT = 3

local SEVERITY_TO_ICON: { [AlertSeverity]: string } = {
	[AlertSeverity.Info] = "circle-i",
	[AlertSeverity.Warning] = "triangle-exclamation",
	[AlertSeverity.Success] = "circle-check",
	[AlertSeverity.Error] = "circle-x",
}

local function SystemBanner(systemBannerProps: SystemBannerProps, ref: React.Ref<Instance>)
	local props = withDefaults(systemBannerProps, defaultProps)
	local tokens = useTokens()

	local variantProps = useSystemBannerVariants(tokens, props.variant, props.severity)

	local container, setContainer = React.useState(nil :: Frame?)
	local composedRef = ReactUtils.useComposedRef(ref, setContainer)

	local breakpoint = useBreakpoint(container)
	local shouldWrapActions = breakpoint == Breakpoint.XSmall or breakpoint == Breakpoint.Small

	local actions: { [string]: React.Node }? = React.useMemo(function()
		local buttons = nil
		if props.actions and #props.actions > 0 then
			buttons = {} :: { [string]: React.Node }
			for i, action in props.actions do
				if i > MAX_BUTTON_COUNT then
					Logger:warning(`SystemBanner only supports up to {MAX_BUTTON_COUNT} actions`)
					break
				end

				local buttonProps = Dash.join(action, {
					LayoutOrder = i,
					size = InputSize.Small,
					testId = `{props.testId}--action-{i}`,
				})
				buttons["ActionButton" .. i] = React.createElement(Button, buttonProps)
			end
		end
		return buttons
	end, { props.actions })

	local actionsContainer = if actions
		then React.createElement(View, {
			tag = {
				["auto-xy row gap-small"] = true,
				["align-x-left"] = shouldWrapActions,
				["align-x-right"] = not shouldWrapActions,
			},
			padding = if shouldWrapActions then { top = UDim.new(0, tokens.Gap.Small) } else nil,
			LayoutOrder = 3,
			testId = `{props.testId}--actions`,
		}, actions)
		else nil

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = {
				[variantProps.container.tag] = true,
				["align-y-center"] = props.description == nil,
				["align-y-top"] = props.description ~= nil,
			},
			ref = composedRef,
		}),
		React.createElement(PresentationContext.Provider, {
			value = { colorMode = variantProps.container.colorMode },
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
					["auto-xy fill"] = true,
					["col"] = shouldWrapActions,
					["row"] = not shouldWrapActions,
				},
				testId = `{props.testId}--content`,
			}, {
				Text = React.createElement(View, {
					LayoutOrder = 2,
					tag = "auto-xy col",
				}, {
					Title = React.createElement(Text, {
						Text = props.title,
						textStyle = variantProps.title.style,
						tag = variantProps.title.tag,
						LayoutOrder = 1,
						testId = `{props.testId}--title`,
					}),
					Description = if props.description
						then React.createElement(Text, {
							Text = props.description,
							textStyle = variantProps.description.style,
							tag = variantProps.description.tag,
							LayoutOrder = 2,
							testId = `{props.testId}--description`,
						})
						else nil,
					Actions = if shouldWrapActions then actionsContainer else nil,
				}),
			}),
			Actions = if not shouldWrapActions then actionsContainer else nil,
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
