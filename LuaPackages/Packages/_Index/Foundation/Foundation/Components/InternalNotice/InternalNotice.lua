local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local Flags = require(Foundation.Utility.Flags)
local Icon = require(Foundation.Components.Icon)
local InputSize = require(Foundation.Enums.InputSize)
local Link = require(Foundation.Components.Link)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Text = require(Foundation.Components.Text)
local TextOverflow = require(Foundation.Enums.TextOverflow)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local escapeRichText = require(Foundation.Utility.escapeRichText)
local useInternalNoticeLayout = require(script.Parent.useInternalNoticeLayout)
local useInternalNoticeVariantsProps = require(script.Parent.useInternalNoticeVariantsProps)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)

type IconConfig = Types.IconConfig
type SizeConstraint = Types.SizeConstraint

export type InternalNoticeLink = {
	text: string,
	onActivated: () -> (),
}

export type InternalNoticeVariantProps = useInternalNoticeVariantsProps.InternalNoticeVariantProps

export type InternalNoticeProps = {
	text: string,
	link: InternalNoticeLink?,
	onClose: (() -> ())?,
	icon: IconConfig?,
	-- Truncates the message and link to one line. Wrap when false.
	truncation: boolean?,
	variantProps: InternalNoticeVariantProps,
} & Types.CommonProps

-- Centers the icon and close against the first line.
local ICON_SLOT_TAG = "col align-y-center auto-x"

local function InternalNotice(props: InternalNoticeProps, ref: React.Ref<Instance>)
	local testId = props.testId or "--foundation-internal-notice"
	local tokens = useTokens()
	-- Holds the first line to the design's content-row height. A taller trailing slot grows the
	-- row past it, since the content row is auto-y and this is only a minimum.
	local iconSlotHeight = tokens.Size.Size_600
	local iconSlotSize = UDim2.fromOffset(0, iconSlotHeight)
	local firstLineSlot = React.useMemo(function(): SizeConstraint
		return { MinSize = Vector2.new(0, iconSlotHeight) }
	end, { iconSlotHeight })

	local layout = useInternalNoticeLayout(props.onAbsoluteSizeChanged)
	local isStacked = layout.isStacked
	local variantProps = useInternalNoticeVariantsProps(props.variantProps, isStacked, props.truncation == true)

	local icon = if typeof(props.icon) == "string" then { name = props.icon, variant = nil } else props.icon
	local iconElement = if icon
		then React.createElement(Icon, {
			name = icon.name,
			variant = icon.variant,
			size = variantProps.icon.size,
			style = variantProps.icon.style,
			LayoutOrder = 1,
			testId = `{testId}--icon`,
		})
		else nil

	local leadingIcon = if iconElement
		then React.createElement(View, {
			tag = ICON_SLOT_TAG,
			Size = iconSlotSize,
			LayoutOrder = 1,
		}, {
			Icon = iconElement,
		})
		else nil

	local message = React.createElement(Text, {
		Text = props.text,
		tag = variantProps.message.tag,
		padding = variantProps.message.padding,
		LayoutOrder = 2,
		testId = `{testId}--message`,
	})

	local linkContainer = variantProps.linkContainer
	local link = if props.link and Flags.FoundationInternalNoticeUseLink
		then React.createElement(View, {
			tag = if linkContainer then linkContainer.tag else nil,
			padding = variantProps.link.padding,
			LayoutOrder = if isStacked then 3 else 2,
			onAbsoluteSizeChanged = layout.measureInlineLink,
		}, {
			Link = React.createElement(Link, {
				text = props.link.text,
				onActivated = props.link.onActivated,
				size = variantProps.link.size,
				hasUnderline = true,
				textOverflow = if not isStacked
					then TextOverflow.None
					elseif props.truncation then TextOverflow.Truncate
					else TextOverflow.Wrap,
				testId = `{testId}--link`,
			}),
		})
		elseif props.link then React.createElement(Text, {
			Text = `<u>{escapeRichText(props.link.text)}</u>`,
			RichText = true,
			tag = variantProps.link.tag,
			padding = variantProps.link.padding,
			sizeConstraint = layout.stackedLinkConstraint,
			stateLayer = { affordance = StateLayerAffordance.None },
			onActivated = props.link.onActivated,
			LayoutOrder = if isStacked then 3 else 2,
			testId = `{testId}--link`,
			onAbsoluteSizeChanged = layout.measureInlineLink,
		})
		else nil

	local close = if props.onClose
		then React.createElement(View, {
			tag = ICON_SLOT_TAG,
			Size = iconSlotSize,
			LayoutOrder = 3,
		}, {
			Close = React.createElement(CloseAffordance, {
				onActivated = props.onClose,
				size = InputSize.Small,
				variant = CloseAffordanceVariant.Utility,
				-- Padded close is taller than the content row, so it would drive the banner height
				hasPadding = false,
				LayoutOrder = 1,
				testId = `{testId}--close`,
			}),
		})
		else nil

	local container = variantProps.container
	local containerProps = withCommonProps(props, {
		tag = if container then container.tag else nil,
		backgroundStyle = if container then container.backgroundStyle else nil,
		ref = ref,
	})
	containerProps.onAbsoluteSizeChanged = layout.onNoticeAbsoluteSizeChanged

	local contentRow = React.createElement(
		View,
		{
			tag = variantProps.content.tag,
			padding = variantProps.content.padding,
			LayoutOrder = if variantProps.border then 2 else 1,
		},
		if isStacked
			then {
				Icon = leadingIcon,
				Stack = React.createElement(View, {
					LayoutOrder = 2,
					tag = variantProps.stack.tag,
					sizeConstraint = firstLineSlot,
					onAbsoluteSizeChanged = layout.onStackedColumnAbsoluteSizeChanged,
					testId = `{testId}--stack`,
				}, {
					Message = message,
					Link = link,
				}),
				Close = close,
			}
			else {
				Leading = React.createElement(View, {
					tag = variantProps.leading.tag,
					sizeConstraint = firstLineSlot,
					LayoutOrder = 1,
					testId = `{testId}--leading`,
				}, {
					Icon = leadingIcon,
					Message = message,
				}),
				Link = link,
				Close = close,
			}
	)

	return React.createElement(
		View,
		containerProps,
		if variantProps.border
			then {
				TopBorder = React.createElement(View, {
					Size = variantProps.border.Size,
					backgroundStyle = variantProps.border.backgroundStyle,
					LayoutOrder = 1,
					testId = `{testId}--top-border`,
				}),
				Main = contentRow,
				BottomBorder = React.createElement(View, {
					Size = variantProps.border.Size,
					backgroundStyle = variantProps.border.backgroundStyle,
					LayoutOrder = 3,
					testId = `{testId}--bottom-border`,
				}),
			}
			else {
				Main = contentRow,
			}
	)
end

return React.memo(React.forwardRef(InternalNotice))
