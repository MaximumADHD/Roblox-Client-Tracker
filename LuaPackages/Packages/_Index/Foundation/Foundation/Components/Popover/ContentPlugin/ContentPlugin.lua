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
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
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
local positioning = require(script.Parent.Parent.positioning)
local useArrowPosition = require(script.Parent.useArrowPosition)
local useElevation = require(Foundation.Providers.Elevation.useElevation)
local useFloating = require(Foundation.Components.Popover.useFloating)
local usePanelSizing = require(script.Parent.usePanelSizing)
local usePluginAnchor = require(script.Parent.usePluginAnchor)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

local isPointInGuiObjectBounds = require(Foundation.Utility.isPointInGuiObjectBounds)

local ElevationOwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope

local Types = require(Foundation.Providers.StudioPanels.Types)
type PanelPosition = Types.PanelPosition

type Radius = Radius.Radius
type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide
type PopoverContentProps = PopoverContent.PopoverContentProps
type SideConfig = useFloating.SideConfig
type AlignConfig = useFloating.AlignConfig
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

-- selene: allow(high_cyclomatic_complexity)
local function PopoverContentPlugin(
	contentProps: PopoverContentProps,
	forwardedRef: React.Ref<GuiObject>?
): React.ReactNode
	local props = withDefaults(contentProps, defaultProps)

	local panelsContext = usePanelsContext()
	local parentPluginPopoverInfo = if Flags.FoundationPopoverPluginOverlayMeasurement
		then React.useContext(PluginPopoverParentContext)
		else nil :: never
	local parentPluginPopoverId = if Flags.FoundationPopoverPluginOverlayMeasurement
		then parentPluginPopoverInfo.id
		else React.useContext(PluginPopoverParentContext) :: never

	local popoverContext = React.useContext(PopoverContext)
	local styleSheet = useStyleSheet()
	local tokens = useTokens()

	local elevationToken = useElevation(ElevationLayer.Popover, { stackAboveOwner = true })
	local depth = elevation.getRelativeIndex(elevationToken)

	local contentInstance, setContentInstance = React.useState(nil :: GuiObject?)
	React.useImperativeHandle(forwardedRef, function()
		return contentInstance
	end, { contentInstance })

	local overlay = if Flags.FoundationPopoverPluginOverlayMeasurement then useOverlay() else nil :: never

	-- We measure popover content in the normal overlay (unconstrained by QWidget)
	-- and then reparent this stable container into the QWidget once sized. This
	-- avoids AutomaticSize being capped by the QWidget starting at 0x0.
	local stableContainer = if Flags.FoundationPopoverPluginOverlayMeasurement
		then React.useMemo(function()
			local frame = Instance.new("Frame")
			frame.Name = "PopoverPluginContainer"
			frame.BackgroundTransparency = 1
			frame.BorderSizePixel = 0
			frame.ClipsDescendants = false
			frame.Position = UDim2.fromOffset(-10000, -10000)
			return frame
		end, {})
		else nil :: never

	if Flags.FoundationPopoverPluginOverlayMeasurement then
		React.useEffect(function()
			return function()
				stableContainer:Destroy()
			end
		end, { stableContainer })
	end

	local measuredPopoverSize, setMeasuredPopoverSize
	local measuredContentSizeBinding, setMeasuredContentSizeBinding
	local measuredContentSize, setMeasuredContentSize
	if Flags.FoundationPopoverPluginOverlayMeasurement then
		measuredPopoverSize, setMeasuredPopoverSize = React.useBinding(UDim2.new())
		measuredContentSizeBinding, setMeasuredContentSizeBinding = React.useBinding(UDim2.new())
		measuredContentSize, setMeasuredContentSize = React.useState<<Vector2?>>(nil)
	end

	local arrowSide = tokens.Size.Size_200
	local arrowWidth = arrowSide * math.sqrt(2)
	local arrowHeight = arrowWidth / 2
	local backgroundStyle = props.backgroundStyle or tokens.Color.Surface.Surface_100
	local sideConfig: SideConfig
	local alignConfig: AlignConfig
	local sideOffset
	local alignOffset
	if Flags.FoundationPopoverPluginOverlayMeasurement then
		sideConfig = if props.side then props.side else PopoverSide.Bottom
		alignConfig = if props.align then props.align else PopoverAlign.Center
		sideOffset = if type(sideConfig) == "table" then sideConfig.offset else 0
		alignOffset = if type(alignConfig) == "table" then alignConfig.offset else 0
	end
	local sidePosition: PopoverSide
	local alignPosition
	if Flags.FoundationPopoverPluginOverlayMeasurement then
		sidePosition = if type(sideConfig) == "table" then sideConfig.position else sideConfig
		alignPosition = if type(alignConfig) == "table" then alignConfig.position else alignConfig
	else
		sidePosition = if type(props.side) == "table" then props.side.position else props.side or PopoverSide.Bottom
		alignPosition = if type(props.align) == "table"
			then props.align.position
			else props.align or PopoverAlign.Center
	end

	local alignValue = 0
	if alignPosition == PopoverAlign.Center then
		alignValue = 0.5
	elseif alignPosition == PopoverAlign.End then
		alignValue = 1
	end

	local uriAnchor: StudioUri? = popoverContext.anchorUri
	local pluginAnchor = usePluginAnchor(popoverContext.anchor, uriAnchor)
	local hasArrow = if pluginAnchor.isVirtual then false else props.hasArrow

	local isOpen
	local shouldMeasure
	local isMeasuring
	if Flags.FoundationPopoverPluginOverlayMeasurement then
		isOpen = popoverContext.isOpen and pluginAnchor.isReady and parentPluginPopoverInfo.ready
		shouldMeasure = isOpen and overlay ~= nil
		isMeasuring = shouldMeasure and measuredContentSize == nil

		React.useEffect(function()
			if not isOpen then
				setMeasuredContentSize(nil)
			end
		end, { isOpen })
	end

	local onContentSizeChanged = if Flags.FoundationPopoverPluginOverlayMeasurement
		then React.useCallback(function(frame: GuiObject)
			if not Flags.FoundationPopoverRecomputeContentSize and not isMeasuring then
				return
			end
			local size = frame.AbsoluteSize
			if size.X > 0 and size.Y > 0 then
				setMeasuredContentSize(size)
			end
		end, { if Flags.FoundationPopoverRecomputeContentSize then nil else isMeasuring })
		else nil :: never

	local position = React.useMemo(
		function()
			return getPanelPosition(
				if Flags.FoundationPopoverPluginOverlayMeasurement then sideConfig else props.side or PopoverSide.Bottom,
				props.align or PopoverAlign.Start,
				nil,
				SHADOW_SIZE,
				if hasArrow then arrowHeight else 0
			)
		end,
		{
			if Flags.FoundationPopoverPluginOverlayMeasurement then sideConfig else props.side,
			props.align,
			hasArrow,
			arrowHeight,
		} :: { unknown }
	)

	local registerPanelAsync = React.useCallback(
		function(
			anchorUri: StudioUri,
			panelPosition: PanelPosition,
			onClose: () -> (),
			panelDepth: number?,
			parentId: string?,
			isFocusable: boolean?
		)
			return panelsContext.registerPopoverAsync(
				anchorUri,
				panelPosition,
				onClose,
				panelDepth,
				parentId,
				if Flags.FoundationPopoverPluginFocusable then isFocusable else nil
			)
		end,
		{ panelsContext.registerPopoverAsync } :: { unknown }
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
			-- Suppress the dismiss when the user clicks on the anchor button to dismiss — the anchor's toggle should handle.
			if Flags.FoundationPopoverClickOutsideInGuiShadow and typeof(popoverContext.anchor) == "Instance" then
				local anchor = popoverContext.anchor :: GuiObject
				if anchor.GuiState ~= Enum.GuiState.Idle then
					return
				end
			end
			props.onPressedOutside()
		end
	end, { props.onPressedOutside, popoverContext.anchor } :: { any })

	local panelDepth = if depth ~= nil then depth else 0
	local panel = usePanel({
		isOpen = if Flags.FoundationPopoverPluginOverlayMeasurement
			then isOpen
			else popoverContext.isOpen and pluginAnchor.isReady,
		onClose = onPanelClose,
		anchorUri = pluginAnchor.uri,
		registerPanelAsync = registerPanelAsync,
		position = position,
		depth = panelDepth,
		parentPopoverId = parentPluginPopoverId,
		isFocusable = if Flags.FoundationPopoverPluginFocusable then props.isFocusable else nil :: never,
	})

	local popoverSize, contentSize
	if Flags.FoundationPopoverPluginOverlayMeasurement then
		popoverSize = measuredPopoverSize
		contentSize = measuredContentSizeBinding
	else
		popoverSize, contentSize =
			usePanelSizing(props.side, props.align, contentInstance, if hasArrow then arrowHeight else 0, panel)
	end

	-- Dismiss when clicking in the QWidget's shadow padding area (outside actual
	-- content bounds). The QWidget extends SHADOW_SIZE beyond the content on all
	-- sides for the drop shadow, which can overlap the trigger button and block
	-- input. Clicks in that region should behave like outside clicks.
	React.useEffect(function()
		if not Flags.FoundationPopoverClickOutsideInGuiShadow then
			return
		end

		if not panel or not panel.container or not props.onPressedOutside then
			return
		end
		local container = panel.container
		local connection = container.InputBegan:Connect(function(input: InputObject)
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end
			if not contentInstance then
				return
			end
			local clickPos = Vector2.new(input.Position.X, input.Position.Y)
			if not isPointInGuiObjectBounds(contentInstance, clickPos) then
				props.onPressedOutside()
			end
		end)
		return function()
			connection:Disconnect()
		end
	end, { panel, contentInstance, props.onPressedOutside } :: { unknown })

	-- First measurement pass: read the overlay-mounted content size.
	if Flags.FoundationPopoverPluginOverlayMeasurement then
		React.useLayoutEffect(function()
			if not isMeasuring or contentInstance == nil then
				return
			end

			local size = contentInstance.AbsoluteSize
			if size.X > 0 and size.Y > 0 then
				setMeasuredContentSize(size)
			end
		end, { isMeasuring, contentInstance })
	end

	local measuredWidgetSize = if Flags.FoundationPopoverPluginOverlayMeasurement
		then React.useMemo(function(): Vector2?
			if not measuredContentSize then
				return nil
			end

			local popoverBounds = positioning.calculatePopoverBounds(
				sidePosition,
				sideOffset,
				alignOffset,
				if hasArrow then arrowHeight else 0,
				measuredContentSize
			)
			return popoverBounds + Vector2.new(SHADOW_SIZE * 2, SHADOW_SIZE * 2)
		end, { measuredContentSize, sidePosition, sideOffset, alignOffset, hasArrow, arrowHeight } :: { unknown })
		else nil :: never

	if Flags.FoundationPopoverPluginOverlayMeasurement then
		-- Once measured, size the QWidget and update local bindings for layout.
		React.useLayoutEffect(function()
			if measuredContentSize == nil or measuredWidgetSize == nil then
				setMeasuredContentSizeBinding(UDim2.new())
				setMeasuredPopoverSize(UDim2.new())
				return
			end

			setMeasuredContentSizeBinding(UDim2.fromOffset(measuredContentSize.X, measuredContentSize.Y))
			setMeasuredPopoverSize(UDim2.fromOffset(measuredWidgetSize.X, measuredWidgetSize.Y))

			if panel then
				panel.setSizeAsync(measuredWidgetSize)
			end
		end, { measuredContentSize, measuredWidgetSize, panel } :: { unknown })

		-- Keep the container in the overlay while measuring, then reparent into the QWidget.
		React.useLayoutEffect(function()
			if not shouldMeasure then
				-- lute-lint-ignore(immutability) stableContainer is not immutable
				stableContainer.Parent = nil
				return
			end

			-- lute-lint-ignore(immutability) stableContainer is not immutable
			if panel and measuredWidgetSize then
				stableContainer.AutomaticSize = Enum.AutomaticSize.None
				stableContainer.Size = UDim2.fromOffset(measuredWidgetSize.X, measuredWidgetSize.Y)
				stableContainer.Position = UDim2.new()
				stableContainer.Parent = panel.container
			else
				stableContainer.AutomaticSize = Enum.AutomaticSize.XY
				stableContainer.Size = UDim2.new()
				stableContainer.Position = UDim2.fromOffset(-10000, -10000)
				stableContainer.Parent = overlay
			end
		end, { shouldMeasure, overlay, panel, measuredWidgetSize, stableContainer } :: { unknown })
	end

	local anchorInstance: GuiBase2d? = if pluginAnchor.isVirtual or typeof(popoverContext.anchor) ~= "Instance"
		then nil
		else popoverContext.anchor

	local arrowPosition =
		useArrowPosition(contentSize, sidePosition, props.radius, alignValue, arrowHeight, anchorInstance)

	local panelReady = if Flags.FoundationPopoverPluginOverlayMeasurement
		then panel ~= nil and measuredWidgetSize ~= nil
		else true
	local shouldRender = if Flags.FoundationPopoverPluginOverlayMeasurement then shouldMeasure else panel ~= nil
	local renderTarget = if Flags.FoundationPopoverPluginOverlayMeasurement
		then stableContainer
		else if panel then panel.container else nil

	local pluginPopoverParentContext = if Flags.FoundationPopoverPluginOverlayMeasurement
		then React.useMemo(function()
			return {
				id = if panel then panel.popoverId else nil,
				ready = panelReady,
			}
		end, { panel, panelReady } :: { unknown })
		else nil :: never

	local panelContent = if shouldRender and renderTarget
		then ReactRoblox.createPortal(
			React.createElement(React.Fragment, nil, {
				StyleLink = React.createElement("StyleLink", {
					StyleSheet = styleSheet,
				}),

				Container = React.createElement(View, {
					AutomaticSize = if Flags.FoundationPopoverPluginOverlayMeasurement
							and measuredWidgetSize == nil
						then Enum.AutomaticSize.XY
						else nil,
					Size = if Flags.FoundationPopoverPluginOverlayMeasurement and measuredWidgetSize == nil
						then nil
						else popoverSize,
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
							onAbsoluteSizeChanged = if Flags.FoundationPopoverPluginOverlayMeasurement
								then onContentSizeChanged
								else nil,
							backgroundStyle = backgroundStyle,
							ZIndex = 3,
							testId = `{popoverContext.testId}--content`,
						},
						React.createElement(PluginPopoverParentContext.Provider, {
							value = if Flags.FoundationPopoverPluginOverlayMeasurement
								then pluginPopoverParentContext
								else (panel :: any).popoverId,
						}, {
							Nested = React.createElement(
								ElevationOwnerScope,
								{ owner = elevationToken },
								props.children
							),
						})
					),
				}),
			}),
			if Flags.FoundationPopoverPluginOverlayMeasurement then renderTarget else (panel :: any).container
		)
		else nil

	return React.createElement(React.Fragment, nil, {
		Anchor = pluginAnchor.element,
		Panel = panelContent,
	})
end

return React.forwardRef(PopoverContentPlugin)
