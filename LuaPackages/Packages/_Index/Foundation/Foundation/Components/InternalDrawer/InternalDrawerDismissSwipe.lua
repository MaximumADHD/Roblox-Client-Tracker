local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
local InternalDrawerTypes = require(script.Parent.Types)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local View = require(Foundation.Components.View)
local dismissSwipeHandlers = require(script.Parent.dismissSwipeHandlers)
local drawerMotion = require(script.Parent.drawerMotion)
local swipeMath = require(script.Parent.swipeMath)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local useSwipeSession = require(script.Parent.useSwipeSession)
local useTokens = require(Foundation.Providers.Style.useTokens)

type InternalDrawerSide = InternalDrawerSide.InternalDrawerSide
type InternalDrawerSwipeToDismiss = InternalDrawerTypes.InternalDrawerSwipeToDismiss
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason

type DrawerMotion = drawerMotion.DrawerMotion
type Latest = dismissSwipeHandlers.DismissSwipeLatest
type Session = dismissSwipeHandlers.DismissSwipeSession

export type InternalDrawerDismissSwipeProps = {
	config: InternalDrawerSwipeToDismiss,
	panelRef: { current: GuiObject? },
	backdropRef: { current: GuiObject? },
	scrollingFrameRef: { current: ScrollingFrame? },
	travel: number,
	side: InternalDrawerSide,
	isOpen: boolean,
	motion: DrawerMotion,
	onRequestClose: (reason: OnCloseCallbackReason) -> (),
	testId: string,
}

local function InternalDrawerDismissSwipe(props: InternalDrawerDismissSwipeProps): React.ReactNode
	local tokens = useTokens()
	local reducedMotion = usePreferences().reducedMotion
	local snapBackIfOpen, setSnapBackIfOpen = React.useState(false)
	local captureRef = React.useRef(nil :: GuiObject?)
	local distanceFraction, velocityThreshold = swipeMath.resolveThresholds(props.config)

	local onClaim = React.useCallback(function()
		drawerMotion.hold(props.motion)
	end, { props.motion })

	local onRelease = React.useCallback(function(dismiss: boolean)
		if dismiss then
			props.onRequestClose(OnCloseCallbackReason.Swipe)
			setSnapBackIfOpen(true)
		else
			drawerMotion.animate(props.motion, true, tokens, reducedMotion)
		end
	end, { props.motion, props.onRequestClose, tokens, reducedMotion } :: { unknown })

	local onCancel = React.useCallback(function()
		drawerMotion.animate(props.motion, props.isOpen, tokens, reducedMotion)
	end, { props.motion, props.isOpen, tokens, reducedMotion } :: { unknown })

	local latest: Latest = {
		side = props.side,
		travel = props.travel,
		isOpen = props.isOpen,
		distanceFraction = distanceFraction,
		velocityThreshold = velocityThreshold,
		onClaim = onClaim,
		setDrag = props.motion.setDrag,
		onRelease = onRelease,
		onCancel = onCancel,
	}
	useSwipeSession(latest, function(latestRef: { current: Latest }): Session
		return {
			gesture = nil,
			latest = latestRef,
			panelRef = props.panelRef,
			backdropRef = props.backdropRef,
			scrollingFrameRef = props.scrollingFrameRef,
			captureRef = captureRef,
			unlock = nil,
		}
	end, dismissSwipeHandlers, props.isOpen)

	React.useEffect(function()
		if not snapBackIfOpen then
			return
		end
		if props.isOpen then
			drawerMotion.animate(props.motion, true, tokens, reducedMotion)
		end
		setSnapBackIfOpen(false)
	end, { snapBackIfOpen, props.isOpen, props.motion, tokens, reducedMotion } :: { unknown })

	return React.createElement(View, {
		Visible = false,
		ZIndex = 5,
		onActivated = Dash.noop,
		selection = Constants.MODAL.DISABLE_SELECTION,
		stateLayer = {
			affordance = StateLayerAffordance.None,
		},
		ref = captureRef,
		tag = "size-full",
		testId = `{props.testId}--swipe-capture`,
	})
end

return InternalDrawerDismissSwipe
