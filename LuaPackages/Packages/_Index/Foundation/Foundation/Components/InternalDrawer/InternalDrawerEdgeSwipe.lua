local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local InternalDrawerOpenPhase = require(Foundation.Enums.InternalDrawerOpenPhase)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
local InternalDrawerTypes = require(script.Parent.Types)
local edgeSwipeHandlers = require(script.Parent.edgeSwipeHandlers)
local getTestIdTag = require(Foundation.Utility.getTestIdTag)
local swipeMath = require(script.Parent.swipeMath)
local useHardwareInsets = require(Foundation.Components.Sheet.useHardwareInsets)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useSwipeSession = require(script.Parent.useSwipeSession)
local useTokens = require(Foundation.Providers.Style.useTokens)

type InternalDrawerSide = InternalDrawerSide.InternalDrawerSide
type InternalDrawerSwipeToOpen = InternalDrawerTypes.InternalDrawerSwipeToOpen
type OpenPhase = InternalDrawerOpenPhase.InternalDrawerOpenPhase

type Latest = edgeSwipeHandlers.EdgeSwipeLatest
type Session = edgeSwipeHandlers.EdgeSwipeSession

export type InternalDrawerEdgeSwipeProps = {
	config: InternalDrawerSwipeToOpen,
	side: InternalDrawerSide,
	outerBleed: number,
	travel: number,
	isOpen: boolean,
	zIndex: number,
	setPhase: (phase: OpenPhase) -> (),
	setDrag: (progress: number?) -> (),
	testId: string,
}

local function InternalDrawerEdgeSwipe(props: InternalDrawerEdgeSwipeProps)
	local overlay = useOverlay()
	local hardwareInsets = useHardwareInsets(overlay)
	local tokens = useTokens()
	local edgeRef = React.useRef(nil :: GuiObject?)
	local edgeWidth = props.config.edgeWidth
	local distanceFraction, velocityThreshold = swipeMath.resolveThresholds(props.config)
	local setPhase = props.setPhase

	local latest: Latest = {
		side = props.side,
		travel = props.travel,
		isOpen = props.isOpen,
		distanceFraction = distanceFraction,
		velocityThreshold = velocityThreshold,
		onPress = function()
			setPhase(InternalDrawerOpenPhase.Pressed)
		end,
		onPressEnd = function()
			setPhase(InternalDrawerOpenPhase.Idle)
		end,
		onClaim = function()
			setPhase(InternalDrawerOpenPhase.Dragging)
		end,
		onDragCancel = function()
			setPhase(InternalDrawerOpenPhase.Settling)
		end,
		onCommit = function()
			setPhase(InternalDrawerOpenPhase.Requested)
		end,
		setDrag = props.setDrag,
	}
	useSwipeSession(latest, function(latestRef: { current: Latest }): Session
		return {
			gesture = nil,
			latest = latestRef,
			edgeRef = edgeRef,
		}
	end, edgeSwipeHandlers, not props.isOpen)

	local isEnd = props.side == InternalDrawerSide.End
	local screenGui = if overlay then (overlay :: Instance):FindFirstAncestorWhichIsA("ScreenGui") else nil
	local insetsFromDevice = screenGui ~= nil
		and (screenGui :: ScreenGui).ScreenInsets == Enum.ScreenInsets.DeviceSafeInsets
	local deviceInset = if not insetsFromDevice then 0 elseif isEnd then hardwareInsets.right else hardwareInsets.left
	-- The overlay sits inside the device safe area, so the strip reaches past it to start at the screen edge.
	local bleed = math.max(props.outerBleed, deviceInset)
	local stripWidth = (if edgeWidth ~= nil then edgeWidth else tokens.Size.Size_600) + bleed
	local stripPosition = if isEnd then UDim2.new(1, bleed, 0, 0) else UDim2.fromOffset(-bleed, 0)
	local frameProps = {
		Active = false,
		AnchorPoint = Vector2.new(if isEnd then 1 else 0, 0),
		Size = UDim2.new(0, stripWidth, 1, 0),
		Position = stripPosition,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Selectable = false,
		ZIndex = props.zIndex,
		Visible = not props.isOpen,
		ref = edgeRef,
		[React.Tag] = getTestIdTag(props.testId, "edge"),
	}

	return overlay
		and ReactRoblox.createPortal(
			-- lute-lint-ignore(noEnginePrimitives) UIBLOX-5675
			React.createElement("Frame", frameProps),
			overlay
		)
end

return InternalDrawerEdgeSwipe
