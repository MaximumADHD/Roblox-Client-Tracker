local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
type ReactNode = React.ReactNode

local UserInputService = require(Foundation.Utility.Wrappers).Services.UserInputService

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useTokens = require(Foundation.Providers.Style.useTokens)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local Radius = require(Foundation.Enums.Radius)
local PopoverContext = require(Foundation.Components.Popover.PopoverContext)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local Logger = require(Foundation.Utility.Logger)
local Flags = require(Foundation.Utility.Flags)

type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide
local Popover = require(Foundation.Components.Popover)
type PopoverAnchorProps = Popover.PopoverAnchorProps

export type TooltipProps = {
	title: string,
	text: string?,
	-- Shortcut associated with the action owning the tooltip
	shortcut: { Enum.KeyCode }?,
	align: PopoverAlign?,
	side: PopoverSide?,
	children: ReactNode?,
} & Types.CommonProps

local defaultProps = {
	align = PopoverAlign.Start,
	side = PopoverSide.Right,
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
	end, { context.anchor :: unknown, props.onHover })

	return React.createElement(Popover.Anchor, withCommonProps(props, {}), props.children)
end

local function Tooltip(tooltipProps: TooltipProps)
	local props = withDefaults(tooltipProps, defaultProps)
	local isOpen, setIsOpen = React.useState(false)
	local tokens = useTokens()
	local maxXSize = useScaledValue(320)

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
				hasArrow = false,
				align = props.align,
				side = {
					position = props.side,
					offset = tokens.Size.Size_200,
				},
				radius = Radius.Small,
				backgroundStyle = tokens.Inverse.Surface.Surface_0,
				selectionGroup = false,
			},
			React.createElement(View, {
				tag = {
					["col gap-xsmall auto-xy"] = true,
					["padding-y-small padding-x-medium"] = props.text ~= nil,
					["padding-y-xsmall padding-x-small"] = props.text == nil,
				},
				sizeConstraint = {
					MaxSize = Vector2.new(maxXSize, math.huge),
				},
			}, {
				Header = React.createElement(
					View,
					{ LayoutOrder = 1, tag = "row gap-small size-full-0 auto-y flex-between" },
					{
						Title = React.createElement(Text, {
							LayoutOrder = 1,
							Text = props.title,
							tag = "auto-xy text-title-small content-inverse-emphasis text-truncate-end shrink",
						}),
						Shortcut = if props.shortcut
							then React.createElement(Text, {
								LayoutOrder = 2,
								Text = shortcutText,
								tag = "auto-xy text-body-small content-inverse-muted",
								testId = `{props.testId}--shortcut`,
							})
							else nil,
					}
				),
				Text = if props.text and props.text ~= ""
					then React.createElement(Text, {
						LayoutOrder = 2,
						Text = props.text,
						tag = `{if Flags.FoundationTooltipTextAutosize then "auto-xy" else "size-full-0 auto-y"} text-wrap text-align-x-left text-body-small content-inverse-default`,
						testId = `{props.testId}--text`,
					})
					else nil,
			})
		),
	})
end

return React.memo(Tooltip)
