local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverArrow = require(script.Parent.Parent.PopoverArrow)
local PopoverContent = require(script.Parent.Parent.Content)
local PopoverContext = require(script.Parent.Parent.PopoverContext)
local PopoverShadow = require(script.Parent.Parent.PopoverShadow)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local getPanelPosition = require(script.Parent.getPanelPosition)
local usePanel = require(Foundation.Providers.StudioPanels.usePanel)
local usePanelsContext = require(Foundation.Providers.StudioPanels.usePanelsContext)
local useUniqueWidget = require(Foundation.Providers.StudioWidgets.useUniqueWidget)
local useStyleSheet = require(Foundation.Providers.Style.StyleSheetContext).useStyleSheet
local Constants = require(Foundation.Constants)
local Logger = require(Foundation.Utility.Logger)
local Radius = require(Foundation.Enums.Radius)
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local View = require(Foundation.Components.View)
local useArrowPosition = require(script.Parent.useArrowPosition)
local usePanelSizing = require(script.Parent.usePanelSizing)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

local Types = require(Foundation.Providers.StudioPanels.Types)
type PanelPosition = Types.PanelPosition

type Radius = Radius.Radius
type PopoverSide = PopoverSide.PopoverSide
type PopoverContentProps = PopoverContent.PopoverContentProps
type StudioUri = StudioUri.StudioUri

local SHADOW_SIZE = Constants.SHADOW_SIZE
local SHADOW_VERTICAL_OFFSET = 2

local defaultProps = {
	side = PopoverSide.Bottom,
	align = PopoverAlign.Center,
	hasArrow = true,
	radius = Radius.Medium,
}

local radiusToTag: { [Radius]: string } = {
	[Radius.Small] = "radius-small",
	[Radius.Medium] = "radius-medium",
	[Radius.Circle] = "radius-circle",
}

local function PopoverContentPlugin(
	contentProps: PopoverContentProps,
	forwardedRef: React.Ref<GuiObject>?
): React.ReactNode
	local props = withDefaults(contentProps, defaultProps)

	local panelsContext = usePanelsContext()
	local popoverContext = React.useContext(PopoverContext)
	local styleSheet = useStyleSheet()
	local tokens = useTokens()

	local contentInstance, setContentInstance = React.useState(nil :: GuiObject?)
	React.useImperativeHandle(forwardedRef, function()
		return contentInstance
	end, { contentInstance })

	local arrowSide = tokens.Size.Size_200
	local arrowWidth = arrowSide * math.sqrt(2)
	local arrowHeight = arrowWidth / 2
	local backgroundStyle = props.backgroundStyle or tokens.Color.Surface.Surface_100
	local sidePosition: PopoverSide = if type(props.side) == "table"
		then props.side.position
		else props.side or PopoverSide.Bottom
	local alignPosition = if type(props.align) == "table"
		then props.align.position
		else props.align or PopoverAlign.Center
	local alignValue = 0
	if alignPosition == PopoverAlign.Center then
		alignValue = 0.5
	elseif alignPosition == PopoverAlign.End then
		alignValue = 1
	end

	-- any cast is necessary because anchor is a weird mix of GuiObject and
	-- MeasurableObject.
	local anchorRef = React.useRef(popoverContext.anchor :: any)
	anchorRef.current = popoverContext.anchor :: any

	local anchor = useUniqueWidget({
		forwardRef = anchorRef,
	})

	local position = React.useMemo(function()
		return getPanelPosition(
			props.side or PopoverSide.Bottom,
			props.align or PopoverAlign.Start,
			nil,
			SHADOW_SIZE,
			if props.hasArrow then arrowHeight else 0
		)
	end, { props.side, props.align, props.hasArrow, arrowHeight } :: { unknown })

	local registerPanelAsync = React.useCallback(
		function(anchorUri: StudioUri, panelPosition: PanelPosition, onClose: () -> ())
			return panelsContext.registerPopoverAsync(anchorUri, panelPosition, onClose)
		end,
		{ panelsContext.registerPopoverAsync :: unknown }
	)

	local warnedMissingOnPressedOutside = React.useRef(false)
	React.useEffect(function()
		if not props.onPressedOutside and not warnedMissingOnPressedOutside.current then
			warnedMissingOnPressedOutside.current = true
			Logger:warning(
				"PopoverContent rendered in a plugin context without onPressedOutside. "
					.. "In Studio, the QWidget popup will close on focus loss, but the parent's "
					.. "isOpen state will not update. Provide onPressedOutside to stay in sync."
			)
		end
	end, { props.onPressedOutside })

	local onPanelClose = React.useCallback(function()
		if props.onPressedOutside then
			props.onPressedOutside()
		end
	end, { props.onPressedOutside })

	local panel = usePanel({
		isOpen = popoverContext.isOpen,
		onClose = onPanelClose,
		anchorUri = anchor.uri,
		registerPanelAsync = registerPanelAsync,
		position = position,
	})

	local popoverSize, contentSize =
		usePanelSizing(props.side, props.align, contentInstance, if props.hasArrow then arrowHeight else 0, panel)

	local arrowPosition =
		useArrowPosition(contentSize, sidePosition, props.radius, alignValue, arrowHeight, popoverContext.anchor :: any)

	if not panel then
		return nil
	end

	return ReactRoblox.createPortal(
		React.createElement(React.Fragment, nil, {
			StyleLink = React.createElement("StyleLink", {
				StyleSheet = styleSheet,
			}),

			Container = React.createElement(View, {
				Size = popoverSize,
				testId = `{popoverContext.testId}--container`,
			}, {
				Shadow = React.createElement(PopoverShadow, {
					contentSize = contentSize,
					position = UDim2.fromOffset(SHADOW_SIZE / 2, SHADOW_SIZE / 2 + SHADOW_VERTICAL_OFFSET),
					ZIndex = 1,
					testId = `{popoverContext.testId}--shadow`,
				}),
				Arrow = if props.hasArrow
					then React.createElement(PopoverArrow, {
						size = arrowSide,
						position = arrowPosition,
						ZIndex = 2,
						backgroundStyle = backgroundStyle,
						testId = `{popoverContext.testId}--arrow`,
					})
					else nil,
				Content = React.createElement(View, {
					tag = `auto-xy {radiusToTag[props.radius]}`,
					Position = UDim2.fromOffset(SHADOW_SIZE, SHADOW_SIZE),
					ref = setContentInstance,
					backgroundStyle = backgroundStyle,
					ZIndex = 3,
					testId = `{popoverContext.testId}--content`,
				}, props.children),
			}),
		}),
		panel.container
	)
end

return React.forwardRef(PopoverContentPlugin)
