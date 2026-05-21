local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local ElevationLayer = require(Foundation.Enums.ElevationLayer)
local PluginPopoverParentContext = require(Foundation.Providers.StudioPanels.PluginPopoverParentContext)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverArrow = require(script.Parent.Parent.PopoverArrow)
local PopoverContent = require(script.Parent.Parent.Content)
local PopoverContext = require(script.Parent.Parent.PopoverContext)
local PopoverShadow = require(script.Parent.Parent.PopoverShadow)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local getPanelPosition = require(script.Parent.getPanelPosition)
local usePanel = require(Foundation.Providers.StudioPanels.usePanel)
local usePanelsContext = require(Foundation.Providers.StudioPanels.usePanelsContext)
local useStyleSheet = require(Foundation.Providers.Style.StyleSheetContext).useStyleSheet
local Constants = require(Foundation.Constants)
local Flags = require(Foundation.Utility.Flags)
local Logger = require(Foundation.Utility.Logger)
local Radius = require(Foundation.Enums.Radius)
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local View = require(Foundation.Components.View)
local elevation = require(Foundation.Providers.Elevation.elevation)
local useArrowPosition = require(script.Parent.useArrowPosition)
local useElevation = require(Foundation.Providers.Elevation.useElevation)
local usePanelSizing = require(script.Parent.usePanelSizing)
local usePluginAnchor = require(script.Parent.usePluginAnchor)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useUniqueWidget = require(Foundation.Providers.StudioWidgets.useUniqueWidget)
local withDefaults = require(Foundation.Utility.withDefaults)

local ElevationOwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope

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
	local parentPluginPopoverId = React.useContext(PluginPopoverParentContext)
	local popoverContext = React.useContext(PopoverContext)
	local styleSheet = useStyleSheet()
	local tokens = useTokens()

	local depth, elevationToken
	if Flags.FoundationPopoverPluginDepthPool then
		elevationToken = useElevation(ElevationLayer.Popover, { stackAboveOwner = true })
		depth = elevation.getRelativeIndex(elevationToken)
	end

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

	local anchorWidget, anchorElement, isVirtualAnchor, anchorReady
	if Flags.FoundationPopoverPluginVirtualAnchor then
		local pluginAnchor = usePluginAnchor(popoverContext.anchor)
		anchorWidget = pluginAnchor.widget
		anchorElement = pluginAnchor.element
		isVirtualAnchor = pluginAnchor.isVirtual
		anchorReady = pluginAnchor.isReady
	else
		local anchorRef = React.useRef(popoverContext.anchor :: any)
		anchorRef.current = popoverContext.anchor :: any
		anchorWidget = useUniqueWidget({
			forwardRef = anchorRef,
		})
		isVirtualAnchor = false
		anchorElement = nil
		anchorReady = true
	end
	local hasArrow = if Flags.FoundationPopoverPluginVirtualAnchor and isVirtualAnchor then false else props.hasArrow

	local position = React.useMemo(function()
		return getPanelPosition(
			props.side or PopoverSide.Bottom,
			props.align or PopoverAlign.Start,
			nil,
			SHADOW_SIZE,
			if hasArrow then arrowHeight else 0
		)
	end, { props.side, props.align, hasArrow, arrowHeight } :: { unknown })

	local registerPanelAsync = React.useCallback(
		function(anchorUri: StudioUri, panelPosition: PanelPosition, onClose: () -> (), panelDepth: number?)
			local parentId = if Flags.FoundationPopoverPluginDepthPool then parentPluginPopoverId else nil
			return panelsContext.registerPopoverAsync(anchorUri, panelPosition, onClose, panelDepth, parentId)
		end,
		{ panelsContext.registerPopoverAsync, parentPluginPopoverId } :: { unknown }
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

	local panelDepth = if Flags.FoundationPopoverPluginDepthPool then (if depth ~= nil then depth else 0) else depth
	local panel = usePanel({
		isOpen = if Flags.FoundationPopoverPluginVirtualAnchor
			then popoverContext.isOpen and anchorReady
			else popoverContext.isOpen,
		onClose = onPanelClose,
		anchorUri = anchorWidget.uri,
		registerPanelAsync = registerPanelAsync,
		position = position,
		depth = panelDepth,
		parentPopoverId = if Flags.FoundationPopoverPluginDepthPool then parentPluginPopoverId else nil,
	})

	local popoverSize, contentSize =
		usePanelSizing(props.side, props.align, contentInstance, if hasArrow then arrowHeight else 0, panel)

	local anchorInstance: GuiBase2d? = if Flags.FoundationPopoverPluginVirtualAnchor
		then (if isVirtualAnchor or typeof(popoverContext.anchor) ~= "Instance" then nil else popoverContext.anchor)
		else popoverContext.anchor :: any

	local arrowPosition =
		useArrowPosition(contentSize, sidePosition, props.radius, alignValue, arrowHeight, anchorInstance)

	local panelContent = if panel
		then ReactRoblox.createPortal(
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
					Arrow = if hasArrow
						then React.createElement(PopoverArrow, {
							size = arrowSide,
							position = arrowPosition,
							ZIndex = 2,
							backgroundStyle = backgroundStyle,
							testId = `{popoverContext.testId}--arrow`,
						})
						else nil,
					Content = React.createElement(
						View,
						{
							tag = `auto-xy {radiusToTag[props.radius]}`,
							Position = UDim2.fromOffset(SHADOW_SIZE, SHADOW_SIZE),
							ref = setContentInstance,
							backgroundStyle = backgroundStyle,
							ZIndex = 3,
							testId = `{popoverContext.testId}--content`,
						},
						if Flags.FoundationPopoverPluginDepthPool
							then React.createElement(PluginPopoverParentContext.Provider, { value = panel.popoverId }, {
								Nested = React.createElement(
									ElevationOwnerScope,
									{ owner = elevationToken },
									props.children
								),
							})
							else props.children
					),
				}),
			}),
			panel.container
		)
		else nil

	if Flags.FoundationPopoverPluginVirtualAnchor then
		return React.createElement(React.Fragment, nil, {
			Anchor = anchorElement,
			Panel = panelContent,
		})
	end

	if not panel then
		return nil
	end
	return panelContent
end

return React.forwardRef(PopoverContentPlugin)
