local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local ReactRoblox = require(Packages.ReactRoblox)
local useAnimatedBinding = ReactOtter.useAnimatedBinding

local Backdrop = require(Foundation.Components.Backdrop)
local Constants = require(Foundation.Constants)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local ElevationOwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope
local InternalDrawerDismissSwipe = require(script.Parent.InternalDrawerDismissSwipe)
local ScrollView = require(Foundation.Components.ScrollView)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local View = require(Foundation.Components.View)
local drawerMotion = require(script.Parent.drawerMotion)
local useInternalDrawerVariants = require(script.Parent.useInternalDrawerVariants)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local useSurfaceWidth = require(script.Parent.useSurfaceWidth)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InternalDrawerBackdrop = require(Foundation.Enums.InternalDrawerBackdrop)
local InternalDrawerOpenPhase = require(Foundation.Enums.InternalDrawerOpenPhase)
local InternalDrawerShadow = require(Foundation.Enums.InternalDrawerShadow)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
local InternalDrawerTypes = require(script.Parent.Types)
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason

export type InternalDrawerOverlayProps = InternalDrawerTypes.InternalDrawerProps & {
	testId: string,
	onExited: () -> (),
	drag: React.Binding<number?>,
	setDrag: drawerMotion.SetDrag,
	openPhase: InternalDrawerOpenPhase.InternalDrawerOpenPhase,
}

local function assignForwardedRef(forwardedRef: React.Ref<GuiObject>?, instance: GuiObject?)
	if typeof(forwardedRef) == "function" then
		forwardedRef(instance)
	elseif forwardedRef ~= nil then
		forwardedRef.current = instance
	end
end

local function InternalDrawerOverlay(props: InternalDrawerOverlayProps, ref: React.Ref<GuiObject>?)
	local overlay = useOverlay()
	local tokens = useTokens()
	local variant = useInternalDrawerVariants(props.layout, props.side)
	local hasShadow = props.shadow == InternalDrawerShadow.Overlay300
	local elevation = props.elevation
	local reducedMotion = usePreferences().reducedMotion

	local surface = variant.surface
	local outerBleed = props.outerBleed or 0
	local surfaceWidth, travel = useSurfaceWidth(props.width, surface.margin, outerBleed)
	local contentPadding = if outerBleed > 0
		then if props.side == InternalDrawerSide.End
			then { right = UDim.new(0, outerBleed) }
			else { left = UDim.new(0, outerBleed) }
		else nil

	local isOpenRef = React.useRef(props.isOpen)
	isOpenRef.current = props.isOpen
	local panelRef = React.useRef(nil :: GuiObject?)
	local backdropRef = React.useRef(nil :: GuiObject?)
	local scrollingFrameRef = React.useRef(nil :: ScrollingFrame?)
	local forwardedRef = ref
	local surfaceRef = React.useCallback(function(instance: GuiObject?)
		panelRef.current = instance
		assignForwardedRef(forwardedRef, instance)
	end, { forwardedRef })

	local panelSettled = React.useRef(true)
	local backdropSettled = React.useRef(true)
	local panelValue = React.useRef(0)
	local backdropValue = React.useRef(1)
	local awaitingOpen = React.useRef(false)
	local onExitedRef = React.useRef(props.onExited)
	onExitedRef.current = props.onExited
	local onOpenCompleteRef = React.useRef(props.onOpenComplete)
	onOpenCompleteRef.current = props.onOpenComplete
	local suppressExitRef = React.useRef(false)
	local pressedClosed = props.openPhase == InternalDrawerOpenPhase.Pressed and not props.isOpen
	local holdClosed = (
		props.openPhase == InternalDrawerOpenPhase.Dragging or props.openPhase == InternalDrawerOpenPhase.Requested
	) and not props.isOpen
	suppressExitRef.current = holdClosed or pressedClosed

	local function notifySettled()
		if
			not isOpenRef.current
			and not suppressExitRef.current
			and panelSettled.current
			and backdropSettled.current
		then
			onExitedRef.current()
		elseif
			awaitingOpen.current
			and panelSettled.current
			and backdropSettled.current
			and panelValue.current == 1
			and backdropValue.current == 0
		then
			awaitingOpen.current = false
			local onOpenComplete = onOpenCompleteRef.current
			if onOpenComplete then
				onOpenComplete()
			end
		end
	end

	local panelProgress, setPanelGoalBinding = useAnimatedBinding(0, function(value: number)
		panelValue.current = value
		panelSettled.current = true
		notifySettled()
	end)
	local backdropTransparency, setBackdropGoalBinding = useAnimatedBinding(1, function(value: number)
		backdropValue.current = value
		backdropSettled.current = true
		notifySettled()
	end)
	local setPanelGoal: drawerMotion.SetGoal = setPanelGoalBinding
	local setBackdropGoal: drawerMotion.SetGoal = setBackdropGoalBinding

	local drag = props.drag
	local setDrag = props.setDrag
	local motion: drawerMotion.DrawerMotion = React.useMemo(function()
		return {
			panelProgress = panelProgress,
			backdropTransparency = backdropTransparency,
			setPanelGoal = setPanelGoal,
			setBackdropGoal = setBackdropGoal,
			drag = drag,
			setDrag = setDrag,
		}
	end, { panelProgress, backdropTransparency, setPanelGoal, setBackdropGoal, drag, setDrag } :: { unknown })

	local displayedPanel = React.useMemo(function()
		return React.joinBindings({ animated = panelProgress, dragged = drag })
			:map(function(values: { animated: number, dragged: number? }): number
				return if values.dragged ~= nil then values.dragged else values.animated
			end)
	end, { panelProgress, drag } :: { unknown })
	local displayedBackdrop = React.useMemo(function()
		return React.joinBindings({ animated = backdropTransparency, dragged = drag })
			:map(function(values: { animated: number, dragged: number? }): number
				return if values.dragged ~= nil then 1 - values.dragged else values.animated
			end)
	end, { backdropTransparency, drag } :: { unknown })

	-- lute-lint-ignore(exhaustiveDeps) tokens.Ease and tokens.Time are stable between colorModes
	React.useEffect(function()
		if holdClosed then
			drawerMotion.hold(motion)
			return
		end
		if pressedClosed then
			-- Leave the resting closed motors alone so the press can stay mounted.
			return
		end

		panelSettled.current = false
		backdropSettled.current = false
		awaitingOpen.current = props.isOpen and onOpenCompleteRef.current ~= nil
		drawerMotion.animate(motion, props.isOpen, tokens, reducedMotion)
	end, { props.isOpen, holdClosed, pressedClosed, reducedMotion } :: { unknown })

	local onBackdropActivated = React.useCallback(function()
		if props.backdrop == InternalDrawerBackdrop.Dismissible and isOpenRef.current then
			props.onRequestClose(OnCloseCallbackReason.BackdropClick)
		end
	end, { props.backdrop, props.onRequestClose } :: { unknown })

	local surfaceSize = UDim2.new(0, surfaceWidth + outerBleed, 1, -surface.margin * 2)
	local side = props.side
	local surfacePosition = React.useMemo(function()
		return displayedPanel:map(function(value: number)
			local xOffset
			-- Closed panels sit outerBleed past the overlay edge so they clear the hardware inset. Open leaves this at zero.
			local hiddenBleed = (1 - value) * outerBleed
			if side == InternalDrawerSide.End then
				-- Top-left anchor, so the open width is the negative X offset.
				xOffset = -value * (surfaceWidth + surface.margin) + hiddenBleed
			else
				local hiddenOffset = (1 - value) * surfaceWidth
				xOffset = surface.openOffsetSign * surface.margin * value
					+ surface.hiddenOffsetSign * (hiddenOffset + outerBleed + hiddenBleed)
			end
			return UDim2.new(surface.anchorScaleX, xOffset, 0, surface.margin)
		end)
	end, { displayedPanel, side, surfaceWidth, outerBleed, surface } :: { unknown })

	return overlay
		and ReactRoblox.createPortal(
			React.createElement(View, {
				Visible = props.openPhase ~= InternalDrawerOpenPhase.Pressed,
				ZIndex = elevation.zIndex,
				tag = "size-full",
				testId = `{props.testId}--container`,
			}, {
				Surface = React.createElement(View, {
					Size = surfaceSize,
					Position = surfacePosition,
					ClipsDescendants = true,
					ZIndex = if hasShadow then 3 else 2,
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					-- Sinks activation so clicks on the surface do not reach the backdrop
					onActivated = Dash.noop,
					selection = Constants.MODAL.DISABLE_SELECTION,
					selectionGroup = Constants.MODAL.TRAP_FOCUS,
					tag = `{surface.tag} {props.backgroundColor}`,
					ref = if props.swipeToDismiss ~= nil then surfaceRef else ref,
					testId = props.testId,
				}, {
					Content = React.createElement(
						View,
						{
							tag = "col size-full",
							padding = contentPadding,
							testId = `{props.testId}--column`,
						},
						React.createElement(ElevationOwnerScope, { owner = elevation }, {
							Header = if props.header ~= nil
								then React.createElement(View, {
									LayoutOrder = 1,
									tag = "col size-full-0 auto-y",
									testId = `{props.testId}--header`,
								}, props.header)
								else nil,
							Body = if props.scrolls == false
								then React.createElement(View, {
									LayoutOrder = 2,
									tag = "fill size-full-0",
									testId = `{props.testId}--body`,
								}, props.children)
								else React.createElement(ScrollView, {
									LayoutOrder = 2,
									scroll = {
										AutomaticCanvasSize = Enum.AutomaticSize.Y,
										CanvasSize = UDim2.fromScale(1, 0),
										ScrollingDirection = Enum.ScrollingDirection.Y,
										scrollBarVisibility = props.scrollBarVisibility,
									},
									tag = "fill size-full-0",
									scrollingFrameRef = if props.swipeToDismiss ~= nil then scrollingFrameRef else nil,
									testId = `{props.testId}--body`,
								}, {
									Children = React.createElement(View, {
										tag = "col size-full-0 auto-y",
										testId = `{props.testId}--body-content`,
									}, props.children),
								}),
							Footer = if props.footer ~= nil
								then React.createElement(View, {
									LayoutOrder = 3,
									tag = "col size-full-0 auto-y",
									testId = `{props.testId}--footer`,
								}, props.footer)
								else nil,
						})
					),
					InnerEdge = if variant.innerEdge.isVisible
						then React.createElement(View, {
							Size = UDim2.new(0, variant.innerEdge.thickness, 1, 0),
							backgroundStyle = variant.innerEdge.backgroundStyle,
							ZIndex = 2,
							tag = variant.innerEdge.tag,
							testId = `{props.testId}--inner-edge`,
						})
						else nil,
				}),
				Shadow = if hasShadow
					then React.createElement(View, {
						Size = surfaceSize,
						Position = surfacePosition,
						ZIndex = 2,
						tag = variant.shadow.tag,
						testId = `{props.testId}--shadow`,
					})
					else nil,
				Backdrop = React.createElement(Backdrop, {
					ZIndex = 1,
					transparency = displayedBackdrop,
					onActivated = onBackdropActivated,
					ref = if props.swipeToDismiss ~= nil then backdropRef else nil,
					testId = `{props.testId}--backdrop`,
				}),
				-- Above the panel and the backdrop so the release does not activate either one.
				Swipe = if props.swipeToDismiss ~= nil
					then React.createElement(InternalDrawerDismissSwipe, {
						config = props.swipeToDismiss,
						panelRef = panelRef,
						backdropRef = backdropRef,
						scrollingFrameRef = scrollingFrameRef,
						travel = travel,
						side = props.side,
						isOpen = props.isOpen,
						motion = motion,
						onRequestClose = props.onRequestClose,
						testId = props.testId,
					})
					else nil,
			}),
			overlay
		)
end

return React.memo(React.forwardRef(InternalDrawerOverlay))
