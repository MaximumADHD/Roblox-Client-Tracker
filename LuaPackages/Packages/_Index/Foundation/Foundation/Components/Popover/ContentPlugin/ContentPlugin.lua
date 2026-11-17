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

local SHADOW_SIZE = if Flags.FoundationPluginShadowSize then Constants.PLUGIN_SHADOW_SIZE else Constants.SHADOW_SIZE
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
	local parentPluginPopoverInfo = React.useContext(PluginPopoverParentContext)
	local parentPluginPopoverId = parentPluginPopoverInfo.id

	local popoverContext = React.useContext(PopoverContext)
	local styleSheet = useStyleSheet()
	local tokens = useTokens()

	local elevationToken = useElevation(ElevationLayer.Popover, { stackAboveOwner = true })
	local depth = elevation.getRelativeIndex(elevationToken)

	local contentInstance, setContentInstance = React.useState(nil :: GuiObject?)
	React.useImperativeHandle(forwardedRef, function()
		return contentInstance
	end, { contentInstance })

	local overlay = useOverlay()

	-- We measure popover content in the normal overlay (unconstrained by QWidget)
	-- and then reparent this stable container into the QWidget once sized. This
	-- avoids AutomaticSize being capped by the QWidget starting at 0x0.
	local stableContainer = React.useMemo(function()
		local frame = Instance.new("Frame")
		frame.Name = "PopoverPluginContainer"
		frame.BackgroundTransparency = 1
		frame.BorderSizePixel = 0
		frame.ClipsDescendants = false
		frame.Position = UDim2.fromOffset(-10000, -10000)
		return frame
	end, {})
	React.useEffect(function()
		return function()
			stableContainer:Destroy()
		end
	end, { stableContainer })

	local measuredPopoverSize, setMeasuredPopoverSize
	local measuredContentSizeBinding, setMeasuredContentSizeBinding
	local measuredContentSize, setMeasuredContentSize
	measuredPopoverSize, setMeasuredPopoverSize = React.useBinding(UDim2.new())
	measuredContentSizeBinding, setMeasuredContentSizeBinding = React.useBinding(UDim2.new())
	measuredContentSize, setMeasuredContentSize = React.useState<<Vector2?>>(nil)

	local arrowSide = tokens.Size.Size_200
	local arrowWidth = arrowSide * math.sqrt(2)
	local arrowHeight = arrowWidth / 2
	local backgroundStyle = props.backgroundStyle or tokens.Color.Surface.Surface_100
	local sideConfig: SideConfig
	local alignConfig: AlignConfig
	local sideOffset
	local alignOffset
	sideConfig = if props.side then props.side else PopoverSide.Bottom
	alignConfig = if props.align then props.align else PopoverAlign.Center
	sideOffset = if type(sideConfig) == "table" then sideConfig.offset else 0
	alignOffset = if type(alignConfig) == "table" then alignConfig.offset else 0
	local sidePosition: PopoverSide
	local alignPosition
	sidePosition = if type(sideConfig) == "table" then sideConfig.position else sideConfig
	alignPosition = if type(alignConfig) == "table" then alignConfig.position else alignConfig

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
	isOpen = popoverContext.isOpen and pluginAnchor.isReady and parentPluginPopoverInfo.ready
	shouldMeasure = isOpen and overlay ~= nil
	isMeasuring = shouldMeasure and measuredContentSize == nil

	React.useEffect(function()
		if not isOpen then
			setMeasuredContentSize(nil)
		end
	end, { isOpen })

	local onContentSizeChanged = React.useCallback(function(frame: GuiObject)
		if not Flags.FoundationPopoverRecomputeContentSize and not isMeasuring then
			return
		end
		local size = frame.AbsoluteSize
		if size.X > 0 and size.Y > 0 then
			setMeasuredContentSize(size)
		end
	end, { if Flags.FoundationPopoverRecomputeContentSize then nil else isMeasuring })

	local position = React.useMemo(
		function()
			return getPanelPosition(
				sideConfig,
				props.align or PopoverAlign.Start,
				nil,
				SHADOW_SIZE,
				if hasArrow then arrowHeight else 0
			)
		end,
		{
			sideConfig,
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
			isFocusable: boolean?,
			initialSize: Vector2?
		)
			return panelsContext.registerPopoverAsync(
				anchorUri,
				panelPosition,
				onClose,
				panelDepth,
				parentId,
				if Flags.FoundationPopoverPluginFocusable then isFocusable else nil,
				if Flags.FoundationPopoverPluginPoolReclaim then initialSize else nil
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
	local initialWidgetSize: Vector2?
	if Flags.FoundationPopoverPluginPoolReclaim then
		if measuredContentSize then
			initialWidgetSize = positioning.calculatePopoverBounds(
				sidePosition,
				sideOffset,
				alignOffset,
				if hasArrow then arrowHeight else 0,
				measuredContentSize
			) + Vector2.new(SHADOW_SIZE * 2, SHADOW_SIZE * 2)
		end
	end
	local panel = usePanel({
		-- Overlay layout must settle before Studio receives the first native size.
		isOpen = if Flags.FoundationPopoverPluginPoolReclaim then isOpen and initialWidgetSize ~= nil else isOpen,
		onClose = onPanelClose,
		anchorUri = pluginAnchor.uri,
		registerPanelAsync = registerPanelAsync,
		position = position,
		depth = panelDepth,
		parentPopoverId = parentPluginPopoverId,
		isFocusable = if Flags.FoundationPopoverPluginFocusable then props.isFocusable else nil :: never,
		initialSize = if Flags.FoundationPopoverPluginPoolReclaim then initialWidgetSize else nil :: never,
	})

	local popoverSize, contentSize
	popoverSize = measuredPopoverSize
	contentSize = measuredContentSizeBinding

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
	React.useLayoutEffect(function()
		if not isMeasuring or contentInstance == nil then
			return
		end

		local size = contentInstance.AbsoluteSize
		if size.X > 0 and size.Y > 0 then
			setMeasuredContentSize(size)
		end
	end, { isMeasuring, contentInstance })

	local measuredWidgetSize = if Flags.FoundationPopoverPluginPoolReclaim
		then nil
		else React.useMemo(function(): Vector2?
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

	-- Once measured, size the QWidget and update local bindings for layout.
	React.useLayoutEffect(
		function()
			local widgetSize = if Flags.FoundationPopoverPluginPoolReclaim
				then initialWidgetSize
				else measuredWidgetSize
			if measuredContentSize == nil or widgetSize == nil then
				setMeasuredContentSizeBinding(UDim2.new())
				setMeasuredPopoverSize(UDim2.new())
				return
			end

			setMeasuredContentSizeBinding(UDim2.fromOffset(measuredContentSize.X, measuredContentSize.Y))
			setMeasuredPopoverSize(UDim2.fromOffset(widgetSize.X, widgetSize.Y))

			if panel then
				panel.setSizeAsync(widgetSize)
			end
		end,
		{
			measuredContentSize,
			if Flags.FoundationPopoverPluginPoolReclaim then initialWidgetSize else measuredWidgetSize,
			panel,
		} :: { unknown }
	)

	-- Keep the container in the overlay while measuring, then reparent into the QWidget.
	React.useLayoutEffect(
		function()
			if not shouldMeasure then
				-- lute-lint-ignore(immutability) stableContainer is not immutable
				stableContainer.Parent = nil
				return
			end

			local widgetSize = if Flags.FoundationPopoverPluginPoolReclaim
				then initialWidgetSize
				else measuredWidgetSize
			-- lute-lint-ignore(immutability) stableContainer is not immutable
			if panel and widgetSize then
				stableContainer.AutomaticSize = Enum.AutomaticSize.None
				stableContainer.Size = UDim2.fromOffset(widgetSize.X, widgetSize.Y)
				stableContainer.Position = UDim2.new()
				stableContainer.Parent = panel.container
			else
				stableContainer.AutomaticSize = Enum.AutomaticSize.XY
				stableContainer.Size = UDim2.new()
				stableContainer.Position = UDim2.fromOffset(-10000, -10000)
				stableContainer.Parent = overlay
			end
		end,
		{
			shouldMeasure,
			overlay,
			panel,
			if Flags.FoundationPopoverPluginPoolReclaim then initialWidgetSize else measuredWidgetSize,
			stableContainer,
		} :: { unknown }
	)

	local anchorInstance: GuiBase2d? = if pluginAnchor.isVirtual or typeof(popoverContext.anchor) ~= "Instance"
		then nil
		else popoverContext.anchor

	local arrowPosition =
		useArrowPosition(contentSize, sidePosition, props.radius, alignValue, arrowHeight, anchorInstance)

	local panelReady = panel ~= nil
		and (if Flags.FoundationPopoverPluginPoolReclaim then initialWidgetSize else measuredWidgetSize) ~= nil
	local shouldRender = shouldMeasure
	local renderTarget = stableContainer

	local pluginPopoverParentContext = React.useMemo(function()
		return {
			id = if panel then panel.popoverId else nil,
			ready = panelReady,
		}
	end, { panel, panelReady } :: { unknown })

	local panelContent = if shouldRender and renderTarget
		then ReactRoblox.createPortal(
			React.createElement(React.Fragment, nil, {
				StyleLink = React.createElement("StyleLink", {
					StyleSheet = styleSheet,
				}),

				Container = React.createElement(View, {
					AutomaticSize = if (
							if Flags.FoundationPopoverPluginPoolReclaim then initialWidgetSize else measuredWidgetSize
						) == nil
						then Enum.AutomaticSize.XY
						else nil,
					Size = if (
							if Flags.FoundationPopoverPluginPoolReclaim then initialWidgetSize else measuredWidgetSize
						) == nil
						then nil
						else popoverSize,
					testId = `{popoverContext.testId}--container`,
				}, {
					-- The plugin window padding is 16px, or 4px when FoundationPluginShadowSize is on.
					-- shadow-overlay-300, shadow-overlay-100, and shadow-raised-100 all draw past that edge.
					-- A larger window would also move the panel, arrow, and click-outside region, so this path
					-- keeps PopoverShadow until product approves that layout change.
					Shadow = React.createElement(PopoverShadow, {
						contentSize = contentSize,
						position = UDim2.fromOffset(
							SHADOW_SIZE / 2,
							SHADOW_SIZE / 2 + (if Flags.FoundationPluginShadowSize then 0 else SHADOW_VERTICAL_OFFSET)
						),
						radiusTag = radiusToTag[props.radius],
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
							onAbsoluteSizeChanged = onContentSizeChanged,
							backgroundStyle = backgroundStyle,
							ZIndex = 3,
							testId = `{popoverContext.testId}--content`,
						},
						React.createElement(PluginPopoverParentContext.Provider, {
							value = pluginPopoverParentContext,
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
			renderTarget
		)
		else nil

	return React.createElement(React.Fragment, nil, {
		Anchor = pluginAnchor.element,
		Panel = panelContent,
	})
end

return React.forwardRef(PopoverContentPlugin)
