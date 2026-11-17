local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InternalDrawerOpenPhase = require(Foundation.Enums.InternalDrawerOpenPhase)
local ScrollBarVisibility = require(Foundation.Enums.ScrollBarVisibility)
local withDefaults = require(Foundation.Utility.withDefaults)

local InternalDrawerEdgeSwipe = require(script.Parent.InternalDrawerEdgeSwipe)
local InternalDrawerOverlay = require(script.Parent.InternalDrawerOverlay)
local InternalDrawerTypes = require(script.Parent.Types)
local drawerMotion = require(script.Parent.drawerMotion)
local useInternalDrawerVariants = require(script.Parent.useInternalDrawerVariants)
local useSurfaceWidth = require(script.Parent.useSurfaceWidth)

export type InternalDrawerProps = InternalDrawerTypes.InternalDrawerProps

type OpenPhase = InternalDrawerOpenPhase.InternalDrawerOpenPhase

local defaultProps = {
	outerBleed = 0,
	scrolls = true,
	scrollBarVisibility = ScrollBarVisibility.None,
	testId = "--foundation-internal-drawer",
}

local function InternalDrawer(internalDrawerProps: InternalDrawerProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local props = withDefaults(internalDrawerProps, defaultProps)
	local variant = useInternalDrawerVariants(props.layout, props.side)
	local _surfaceWidth, travel = useSurfaceWidth(props.width, variant.surface.margin, props.outerBleed)
	local isMounted, setIsMounted = React.useState(props.isOpen)
	local openPhase, setOpenPhase = React.useState(InternalDrawerOpenPhase.Idle)
	local openPhaseRef = React.useRef(openPhase)
	openPhaseRef.current = openPhase
	local openedRef = React.useRef(props.isOpen)
	local drag, setDrag = drawerMotion.useDrag()
	if props.isOpen and not isMounted then
		setIsMounted(true)
	end
	if props.isOpen then
		openedRef.current = true
		if openPhase ~= InternalDrawerOpenPhase.Idle then
			setOpenPhase(InternalDrawerOpenPhase.Idle)
		end
	end

	-- A consumer may leave the drawer closed after onRequestOpen. Settle closed from the drag after the next commit.
	React.useEffect(function()
		if openPhase == InternalDrawerOpenPhase.Requested and not props.isOpen then
			setOpenPhase(InternalDrawerOpenPhase.Settling)
		end
	end, { openPhase, props.isOpen } :: { unknown })

	local onCloseComplete = props.onCloseComplete
	local onExited = React.useCallback(function()
		local shouldNotify = openedRef.current
		openedRef.current = false
		setIsMounted(false)
		setOpenPhase(InternalDrawerOpenPhase.Idle)
		if shouldNotify and onCloseComplete then
			onCloseComplete()
		end
	end, { onCloseComplete })

	local onRequestOpen = props.onRequestOpen
	local setPhase = React.useCallback(function(phase: OpenPhase)
		if phase == InternalDrawerOpenPhase.Idle and openPhaseRef.current ~= InternalDrawerOpenPhase.Pressed then
			return
		end
		setOpenPhase(phase)
		if phase == InternalDrawerOpenPhase.Requested and onRequestOpen ~= nil then
			onRequestOpen()
		end
	end, { onRequestOpen })

	local showOverlay = isMounted or openPhase ~= InternalDrawerOpenPhase.Idle
	if not showOverlay and props.swipeToOpen == nil then
		return nil
	end

	local overlayProps = Dash.join(props, {
		ref = ref,
		onExited = onExited,
		drag = drag,
		setDrag = setDrag,
		openPhase = openPhase,
	}) :: InternalDrawerOverlay.InternalDrawerOverlayProps

	return React.createElement(React.Fragment, nil, {
		Edge = if props.swipeToOpen ~= nil
			then React.createElement(InternalDrawerEdgeSwipe, {
				config = props.swipeToOpen,
				side = props.side,
				outerBleed = props.outerBleed,
				travel = travel,
				isOpen = props.isOpen,
				zIndex = props.elevation.zIndex,
				setPhase = setPhase,
				setDrag = setDrag,
				testId = props.testId,
			})
			else nil,
		Overlay = if showOverlay then React.createElement(InternalDrawerOverlay, overlayProps) else nil,
	})
end

return React.memo(React.forwardRef(InternalDrawer))
