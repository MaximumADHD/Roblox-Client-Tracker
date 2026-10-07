local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local AlertConstants = require(Foundation.Components.AlertActions.AlertConstants)
local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local AlertVariant = require(Foundation.Enums.AlertVariant)
local Breakpoint = require(Foundation.Enums.Breakpoint)
local BreakpointConfig = require(Foundation.Utility.Responsive.BreakpointConfig)
local ButtonGroup = require(Foundation.Components.ButtonGroup)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local Flags = require(Foundation.Utility.Flags)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local escapeRichText = require(Foundation.Utility.escapeRichText)
local isBuilderIcon = require(Foundation.Utility.isBuilderIcon)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useAlertVariants = require(script.Parent.useAlertVariants)

local IconVariant = BuilderIcons.IconVariant
type IconVariant = BuilderIcons.IconVariant

type AlertSeverity = AlertSeverity.AlertSeverity
type AlertVariant = AlertVariant.AlertVariant
type ButtonGroupItem = ButtonGroup.ButtonGroupItem
type IconConfig = Types.IconConfig

type AlertInteraction = {
	text: string,
	onActivated: () -> (),
}

type AlertActions = {
	-- Required primary action (Standard variant)
	primary: AlertInteraction,
	-- Optional secondary action (Utility variant)
	secondary: AlertInteraction?,
}

type AlertBaseProps = {
	-- Visual treatment of the alert
	variant: AlertVariant?,
	-- Semantic severity, which drives color and icon
	severity: AlertSeverity?,
	-- Replaces the glyph on `Info` alerts, keeping the severity color. Other severities ignore it.
	-- Builder Icons only. Nil, empty, or non-Builder Icons fall back to the Info glyph.
	icon: IconConfig?,
	-- Message shown in the alert
	text: string,
	-- Interprets markup in `text` (e.g. bold, color, links).
	richText: boolean?,
	-- The close affordance is only rendered when the alert is dismissable.
	onClose: (() -> ())?,
} & Types.CommonProps

type AlertTrailingProps =
	{
		-- Text link in the trailing slot
		link: AlertInteraction?,
		actions: nil,
	}
	| {
		link: nil,
		-- Action buttons in the trailing slot
		actions: AlertActions?,
	}

export type AlertProps = AlertBaseProps & AlertTrailingProps

local defaultProps = {
	variant = AlertVariant.Feedback,
	severity = AlertSeverity.Info,
	testId = "--foundation-alert",
}

-- Alert renders Feedback and System only; the SystemBanner values collapse onto the default.
local VARIANT_FALLBACKS: { [AlertVariant]: AlertVariant } = {
	[AlertVariant.Standard] = AlertVariant.Feedback,
	[AlertVariant.Emphasis] = AlertVariant.Feedback,
}

-- Inclusive XSmall cutoff on the alert, not the viewport.
local STACK_MAX_WIDTH = BreakpointConfig.widths[Breakpoint.XSmall]
-- Arbitrary 40% cap so the message keeps some min width.
local TRAILING_MAX_WIDTH_RATIO = 0.4
-- Trailing content stacks once it needs more than 30% of the alert width.
local STACKING_TRAILING_MAX_WIDTH_RATIO = 0.3

-- Any label change remeasures the trailing slot, so a shorter one can go back inline.
local function getTrailingLabels(link: AlertInteraction?, actions: AlertActions?): string
	if link then
		return link.text
	end
	if actions then
		return `{actions.primary.text}|{if actions.secondary then actions.secondary.text else ""}`
	end

	return ""
end

-- TODO UIBLOX-5430: Clean up after Engine UI fix
local function WrappingRichText(props: {
	slot: { tag: string, padding: Types.Padding? },
	text: string,
	LayoutOrder: number,
	testId: string,
	alertWidth: number,
	onActivated: (() -> ())?,
	stateLayer: Types.StateLayer?,
})
	local slotWidth, setSlotWidth = React.useState(0)
	local alertWidth = props.alertWidth
	local onSlotAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		local width = rbx.AbsoluteSize.X
		if alertWidth <= 0 or width <= alertWidth then
			setSlotWidth(width)
		end
	end, { alertWidth })

	-- Keyed on the settled slot width: a plain MaxSize clamps the frame but
	-- doesn't always make the engine re-solve the wrap, so remounting the
	-- label once the width settles forces a fresh solve at the real width.
	-- Floor to whole pixels so sub-pixel jitter doesn't churn the remount.
	local children: { [string]: React.ReactNode } = {
		[`Label-{math.floor(slotWidth)}`] = React.createElement(Text, {
			Text = props.text,
			RichText = true,
			-- Keep the label's styling, but pin its width to the slot so it wraps
			-- at the measured width; the flex tag is inert since the wrapper, not
			-- the label, is the flex child.
			tag = {
				["size-full-0"] = true,
				[props.slot.tag] = true,
			},
			padding = props.slot.padding,
			sizeConstraint = if slotWidth > 0 then { MaxSize = Vector2.new(slotWidth, math.huge) } else nil,
			stateLayer = props.stateLayer,
			onActivated = props.onActivated,
			testId = props.testId,
		}),
	}

	return React.createElement(View, {
		tag = props.slot.tag,
		LayoutOrder = props.LayoutOrder,
		onAbsoluteSizeChanged = onSlotAbsoluteSizeChanged,
	}, children)
end

local function Alert(alertProps: AlertProps, ref: React.Ref<Instance>)
	local props = withDefaults(alertProps, defaultProps)
	local tokens = useTokens()
	local variant: AlertVariant = VARIANT_FALLBACKS[props.variant :: AlertVariant] or props.variant :: AlertVariant

	-- Stacking keys off the alert's own width, not the viewport, so it must be measured.
	local alertSize, setAlertSize = React.useState(Vector2.zero)
	local onAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		setAlertSize(rbx.AbsoluteSize)
		if props.onAbsoluteSizeChanged then
			props.onAbsoluteSizeChanged(rbx)
		end
	end, { props.onAbsoluteSizeChanged })

	local trailingWidth, setTrailingWidth = React.useState(0)
	local onTrailingAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		setTrailingWidth(rbx.AbsoluteSize.X)
	end, {})
	local trailingLabels = getTrailingLabels(props.link, props.actions)
	-- Skip the first run: there is nothing to reset before the first measurement, and clearing it
	-- here would drop the only one an alert that is never resized afterwards ever takes.
	local hasMeasuredLabels = React.useRef(false)
	React.useEffect(function()
		if hasMeasuredLabels.current then
			setTrailingWidth(0)
		end
		hasMeasuredLabels.current = true
	end, { trailingLabels })

	local isNarrow = alertSize.X > 0 and alertSize.X <= STACK_MAX_WIDTH
	local maxTrailingWidth = alertSize.X
		* if Flags.FoundationAlertStackTrailingOnOverflow
			then STACKING_TRAILING_MAX_WIDTH_RATIO
			else TRAILING_MAX_WIDTH_RATIO

	local isStacked = if Flags.FoundationAlertStackTrailingOnOverflow
		then isNarrow or (maxTrailingWidth > 0 and trailingWidth > maxTrailingWidth)
		else isNarrow or (props.actions ~= nil and maxTrailingWidth > 0 and trailingWidth > maxTrailingWidth)

	local variantProps = useAlertVariants(tokens, props.severity :: AlertSeverity, variant, isStacked)

	local buttons = React.useMemo(function(): { ButtonGroupItem }?
		if not props.actions then
			return nil
		end

		local items: { ButtonGroupItem } = {
			{
				text = props.actions.primary.text,
				onActivated = props.actions.primary.onActivated,
				variant = ButtonVariant.Standard,
			},
		}
		if props.actions.secondary then
			table.insert(items, {
				text = props.actions.secondary.text,
				onActivated = props.actions.secondary.onActivated,
				variant = ButtonVariant.Utility,
			})
		end

		return items
	end, { props.actions })

	local iconName = AlertConstants.SEVERITY_TO_ICON[props.severity :: AlertSeverity]
	local iconVariant: IconVariant = IconVariant.Filled
	local backplate = variantProps.iconBackplate
	local customIcon = props.icon
	if customIcon ~= nil and props.severity == AlertSeverity.Info then
		local customName = if typeof(customIcon) == "string" then customIcon else customIcon.name
		if isBuilderIcon(customName) then
			iconName = customName
			iconVariant = if typeof(customIcon) == "table" and customIcon.variant
				then customIcon.variant
				else IconVariant.Filled
			-- The disc fills the knockout in the severity glyphs; a custom glyph may not have one.
			backplate = nil
		end
	end
	local leadingIcon = React.createElement(Icon, {
		name = iconName,
		size = IconSize.Medium,
		variant = iconVariant,
		style = variantProps.icon.style,
		LayoutOrder = 2,
		ZIndex = 2,
		testId = `{props.testId}--icon`,
	})
	local icon = React.createElement(View, {
		tag = "align-y-center size-0-800 auto-x",
		LayoutOrder = 1,
	}, {
		Content = if backplate
			then React.createElement(View, {
				Size = variantProps.iconFrame.Size,
				LayoutOrder = 1,
			}, {
				Backplate = React.createElement(View, {
					Size = backplate.Size,
					Position = backplate.Position,
					tag = backplate.tag,
					backgroundStyle = backplate.backgroundStyle,
					LayoutOrder = 1,
					ZIndex = 1,
					testId = `{props.testId}--icon-backplate`,
				}),
				Icon = leadingIcon,
			})
			else leadingIcon,
	})

	local message = if props.richText
		then React.createElement(WrappingRichText, {
			slot = variantProps.message,
			text = props.text,
			LayoutOrder = 2,
			testId = `{props.testId}--message`,
			alertWidth = alertSize.X,
		})
		else React.createElement(Text, {
			Text = props.text,
			tag = variantProps.message.tag,
			padding = variantProps.message.padding,
			LayoutOrder = 2,
			testId = `{props.testId}--message`,
		})

	-- Measuring while stacked feeds the stacked width back into the 40% check.
	local measureTrailing = if not isStacked then onTrailingAbsoluteSizeChanged else nil

	local trailing: React.ReactNode = if props.link
		then if isStacked and Flags.FoundationAlertLinkWrap
			-- Stacked: the underline wraps full-width, so cap it at the slot.
			then React.createElement(WrappingRichText, {
				slot = variantProps.link,
				text = `<u>{escapeRichText(props.link.text)}</u>`,
				LayoutOrder = 3,
				testId = `{props.testId}--link`,
				alertWidth = alertSize.X,
				onActivated = props.link.onActivated,
				stateLayer = { affordance = StateLayerAffordance.None },
			})
			-- Inline: single line. Capped at the trailing cap unless the flag lets it stack instead.
			else React.createElement(Text, {
				Text = `<u>{escapeRichText(props.link.text)}</u>`,
				RichText = true,
				tag = variantProps.link.tag,
				padding = variantProps.link.padding,
				sizeConstraint = if Flags.FoundationAlertStackTrailingOnOverflow
					then nil :: never
					else if not isStacked and maxTrailingWidth > 0
						then { MaxSize = Vector2.new(maxTrailingWidth, math.huge) }
						else nil,
				stateLayer = { affordance = StateLayerAffordance.None },
				onActivated = props.link.onActivated,
				LayoutOrder = 3,
				testId = `{props.testId}--link`,
				onAbsoluteSizeChanged = measureTrailing,
			})
		elseif buttons then React.createElement(ButtonGroup, {
			buttons = buttons,
			size = InputSize.Small,
			LayoutOrder = 3,
			testId = `{props.testId}--actions`,
			onAbsoluteSizeChanged = measureTrailing,
		})
		else nil

	local close = if props.onClose
		then React.createElement(CloseAffordance, {
			onActivated = props.onClose,
			size = InputSize.Small,
			variant = CloseAffordanceVariant.Utility,
			LayoutOrder = 4,
			testId = `{props.testId}--close`,
		})
		else nil

	local content = if isStacked
		then {
			Icon = icon,
			Stack = React.createElement(View, {
				LayoutOrder = 2,
				tag = variantProps.stack.tag,
				testId = `{props.testId}--stack`,
			}, {
				Message = message,
				Trailing = trailing,
			}),
			Close = close,
		}
		else {
			Icon = icon,
			Message = message,
			Trailing = trailing,
			Close = close,
		}

	local containerProps = withCommonProps(props, {
		tag = variantProps.container.tag,
		backgroundStyle = variantProps.container.backgroundStyle,
		ref = ref,
	})
	containerProps.onAbsoluteSizeChanged = onAbsoluteSizeChanged

	-- UIStroke can't draw a single edge.
	local children = if variant == AlertVariant.System
		then {
			TopBorder = React.createElement(View, {
				Size = variantProps.border.Size,
				backgroundStyle = variantProps.border.backgroundStyle,
				LayoutOrder = 1,
				testId = `{props.testId}--top-border`,
			}),
			Main = React.createElement(View, {
				tag = variantProps.main.tag,
				LayoutOrder = 2,
			}, content),
			BottomBorder = React.createElement(View, {
				Size = variantProps.border.Size,
				backgroundStyle = variantProps.border.backgroundStyle,
				LayoutOrder = 3,
				testId = `{props.testId}--bottom-border`,
			}),
		}
		else content

	return React.createElement(View, containerProps, children)
end

return React.memo(React.forwardRef(Alert))
