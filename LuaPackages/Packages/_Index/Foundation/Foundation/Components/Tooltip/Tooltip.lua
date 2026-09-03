local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
type ReactNode = React.ReactNode

local UserInputService = require(Foundation.Utility.Wrappers).Services.UserInputService

local Flags = require(Foundation.Utility.Flags)

local Constants = require(Foundation.Constants)
local Logger = require(Foundation.Utility.Logger)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverContext = require(Foundation.Components.Popover.PopoverContext)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Radius = require(Foundation.Enums.Radius)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local useScaledValue = require(Foundation.Utility.useScaledValue)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide
local Popover = require(Foundation.Components.Popover)
type PopoverAnchorProps = Popover.PopoverAnchorProps

export type TooltipProps = {
	-- A title for the tooltip. To omit, set it to an empty string.
	title: string,
	-- Body text for the tooltip.
	text: string?,
	-- Shortcut associated with the action owning the tooltip
	shortcut: { Enum.KeyCode }?,
	align: PopoverAlign?,
	side: PopoverSide?,
	-- Whether the tooltip should have an arrow. Defaults to true.
	hasArrow: boolean?,
	children: ReactNode?,
} & Types.CommonProps

local defaultProps = {
	align = PopoverAlign.Start,
	side = PopoverSide.Right,
	hasArrow = if Flags.FoundationTooltipBeta then true else nil :: never,
	testId = "--foundation-tooltip",
}

local function AnchorWrapper(props: { onHover: (isHovered: boolean) -> () } & PopoverAnchorProps)
	local context = React.useContext(PopoverContext)
	local listener = React.useRef(nil :: RBXScriptConnection?)

	React.useEffect(function()
		if context.anchor ~= nil then
			if typeof(context.anchor) ~= "Instance" then
				Logger:warning("MeasurableRef cannot be an anchor for the tooltip")
				return
			end
			listener.current = context.anchor:GetPropertyChangedSignal("GuiState"):Connect(function()
				props.onHover(context.anchor.GuiState == Enum.GuiState.Hover)
			end)
		end

		return function()
			if listener.current ~= nil then
				listener.current:Disconnect()
			end
		end
	end, { context.anchor, props.onHover } :: { unknown })

	return React.createElement(Popover.Anchor, withCommonProps(props, {}), props.children)
end

local function Tooltip(tooltipProps: TooltipProps)
	local props = withDefaults(tooltipProps, defaultProps)
	local isOpen, setIsOpen = React.useState(false)
	local tokens = useTokens()
	local hasText = props.text ~= nil and props.text ~= ""
	local maxXSize = useScaledValue(if Flags.FoundationTooltipBeta then Constants.TOOLTIP_MAX_WIDTH else 320)

	local containerPadding = if Flags.FoundationTooltipBeta
		then if hasText
			then {
				top = UDim.new(0, tokens.Size.Size_150),
				bottom = UDim.new(0, tokens.Size.Size_200),
				left = UDim.new(0, tokens.Size.Size_200),
				right = UDim.new(0, tokens.Size.Size_200),
			}
			else {
				top = UDim.new(0, tokens.Size.Size_100),
				bottom = UDim.new(0, tokens.Size.Size_150),
				left = UDim.new(0, tokens.Size.Size_150),
				right = UDim.new(0, tokens.Size.Size_150),
			}
		else nil

	local shortcutText = React.useMemo(function()
		if props.shortcut == nil then
			return nil :: string?
		end
		local text = ""
		for index, value in props.shortcut do
			local key = UserInputService:GetStringForKeyCode(value)
			if key == nil or key == "" then
				key = value.Name
			end

			if index > 1 then
				text ..= " + "
			end
			text ..= key
		end
		return text
	end, { props.shortcut })

	return React.createElement(Popover.Root, {
		isOpen = isOpen,
		testId = props.testId,
	}, {
		Anchor = React.createElement(
			AnchorWrapper,
			withCommonProps(props, {
				onHover = setIsOpen,
			}),
			props.children
		),
		Content = React.createElement(
			Popover.Content,
			{
				hasArrow = if Flags.FoundationTooltipBeta then props.hasArrow else false,
				align = props.align,
				side = {
					position = props.side,
					offset = tokens.Size.Size_200,
				},
				radius = Radius.Small,
				backgroundStyle = tokens.Inverse.Surface.Surface_0,
				selectionGroup = false,
				onPressedOutside = if Flags.FoundationTooltipPressedOutside
					then function()
						setIsOpen(false)
					end
					else nil,
			},
			React.createElement(View, {
				tag = {
					["col gap-xsmall auto-xy"] = true,
					["padding-x-medium padding-y-small"] = not Flags.FoundationTooltipBeta and props.text ~= nil,
					["padding-x-small padding-y-xsmall"] = not Flags.FoundationTooltipBeta and props.text == nil,
				},
				padding = containerPadding,
				sizeConstraint = {
					MaxSize = Vector2.new(maxXSize, math.huge),
				},
			}, {
				Header = if props.title ~= "" or props.shortcut
					then React.createElement(
						View,
						{ LayoutOrder = 1, tag = "row flex-between gap-small size-full-0 auto-y" },
						{
							Title = if props.title ~= ""
								then React.createElement(Text, {
									LayoutOrder = 1,
									Text = props.title,
									tag = {
										["shrink auto-xy text-truncate-end content-inverse-emphasis"] = true,
										["text-title-small"] = not Flags.FoundationTooltipBeta,
										["text-caption-medium"] = Flags.FoundationTooltipBeta and hasText,
										["text-body-small"] = Flags.FoundationTooltipBeta and not hasText,
									},
									testId = `{props.testId}--title`,
								})
								else nil,
							Shortcut = if props.shortcut
								then React.createElement(Text, {
									LayoutOrder = 2,
									Text = shortcutText,
									tag = "auto-xy text-body-small content-inverse-muted",
									testId = `{props.testId}--shortcut`,
								})
								else nil,
						}
					)
					else nil,
				Text = if props.text and props.text ~= ""
					then React.createElement(Text, {
						LayoutOrder = 2,
						Text = props.text,
						tag = "auto-xy text-body-small text-wrap text-align-x-left content-inverse-default",
						testId = `{props.testId}--text`,
					})
					else nil,
			})
		),
	})
end

return React.memo(Tooltip)
