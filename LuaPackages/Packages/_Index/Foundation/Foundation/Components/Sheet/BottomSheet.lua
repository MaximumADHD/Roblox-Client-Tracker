local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local ReactRoblox = require(Packages.ReactRoblox)
local ReactUtils = require(Packages.ReactUtils)
local useAnimatedBinding = ReactOtter.useAnimatedBinding
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local useElevation = require(Foundation.Providers.Elevation.useElevation)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local OwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope
local ElevationLayer = require(Foundation.Enums.ElevationLayer)
type ElevationLayer = ElevationLayer.ElevationLayer
local Constants = require(Foundation.Constants)

local SheetContext = require(script.Parent.SheetContext)
local SheetTypes = require(script.Parent.Types)
type SheetRef = SheetTypes.SheetRef
type SheetProps = SheetTypes.SheetProps
local SheetType = require(script.Parent.SheetType)

local childrenHasFullBleed = require(script.Parent.childrenHasFullBleed)
local useHardwareInsets = require(script.Parent.useHardwareInsets)
local useScreenHeight = require(script.Parent.useScreenHeight)

local Flags = require(Foundation.Utility.Flags)
local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)

local usePreferences = require(Foundation.Providers.Preferences.usePreferences)

local SPRING_FREQUENCY_HZ = 4
local SPRING_OMEGA = 2 * math.pi * SPRING_FREQUENCY_HZ
local VELOCITY_THRESHOLD = 1
local POSITION_THRESHOLD = 0.5
local SCROLL_AT_MAX_TOLERANCE = 1e-2
local ENGINE_INERTIA_FRICTION = 2.35
local BOTTOM_PADDING = 200

local defaultProps = {
	defaultSnapPointIndex = 1,
	testId = "--foundation-sheet",
}

local SHADOW_IMAGE = Constants.SHADOW_IMAGE
local SHADOW_SIZE = Constants.SHADOW_SIZE

--[[
Critical damping is a type of damping that results in the fastest possible return to equilibrium without overshooting.
This is a closed form solution making it frame rate independent.

https://en.wikipedia.org/wiki/Damping#Critical_damping_(ζ_=_1)
https://mathworld.wolfram.com/CriticallyDampedSimpleHarmonicMotion.html
]]
local function advanceCriticalDampedSpring(
	position: number,
	velocity: number,
	target: number,
	delta: number
): (number, number)
	local displacement = position - target
	local normalizedTime = SPRING_OMEGA * delta
	local decay = math.exp(-normalizedTime)
	local springTerm = velocity + SPRING_OMEGA * displacement

	local newDisplacement = (displacement + springTerm * delta) * decay
	local newVelocity = (velocity - springTerm * normalizedTime) * decay

	return target + newDisplacement, newVelocity
end

-- selene: allow(high_cyclomatic_complexity)
local function BottomSheet(sheetProps: SheetProps, ref: React.Ref<Instance>)
	local props = withDefaults(sheetProps, defaultProps)
	local overlay = useOverlay()
	local tokens = useTokens()
	local elevation = useElevation(ElevationLayer.Sheet, { stackAboveOwner = false })

	local preferences = usePreferences()
	local reducedMotion = preferences.reducedMotion

	local screenHeight = useScreenHeight()
	local overlayAvailableHeight, setOverlayAvailableHeight =
		React.useState(if overlay then overlay.AbsoluteSize.Y else 0)
	local sheetHeight, setSheetHeight = React.useState(0)
	local backupSnapPoints = React.useMemo(function()
		return { sheetHeight }
	end, { sheetHeight })
	local snapPoints: { number } = props.snapPoints or backupSnapPoints

	-- Convert a snap value to pixels: values > 1 are treated as absolute pixels,
	-- values in the range [0,1] are treated as a fraction of the screen height
	local snapValueToPixels = React.useCallback(function(value: number)
		if value > 1 then
			return value
		end
		return value * screenHeight
	end, { screenHeight })

	local maxSheetHeight = 0
	for _, snap in snapPoints do
		local pixels = snapValueToPixels(snap)
		if pixels > maxSheetHeight then
			maxSheetHeight = pixels
		end
	end
	maxSheetHeight = math.min(maxSheetHeight, screenHeight)
	if overlayAvailableHeight > 0 then
		maxSheetHeight = math.min(maxSheetHeight, overlayAvailableHeight)
	end

	local safeAreaPadding = useHardwareInsets(overlay).bottom

	local currentSnapIndex = React.useRef(0)
	local isClosing = React.useRef(false)

	-- onSnapPointChanged is captured via a ref because including it in the
	-- useCallback deps below cascades into the opening useEffect and
	-- re-snaps the sheet to defaultSnapPointIndex on every parent render
	-- when the consumer passes a non-memoized callback.
	local onSnapPointChangedRef = if Flags.FoundationBottomSheetOnSnapPointChanged
		then React.useRef(props.onSnapPointChanged)
		else nil :: never
	if Flags.FoundationBottomSheetOnSnapPointChanged then
		onSnapPointChangedRef.current = props.onSnapPointChanged
	end

	local backdropTransparency, setBackdropTransparencyGoal = useAnimatedBinding(1, function()
		if isClosing.current then
			props.onClose()
		end
	end)
	local sheetHeightAvailable, setSheetHeightAvailable = React.useBinding(-safeAreaPadding)
	local actionsHeight, setActionsHeight = React.useBinding(0)
	local hasActionsDivider, setHasActionsDivider = React.useBinding(false)
	local hasHeader, setHasHeader = React.useBinding(false)
	local hasFullBleed
	local fullBleedHeight, setFullBleedHeight
	hasFullBleed = childrenHasFullBleed(props.children)
	fullBleedHeight, setFullBleedHeight = React.useBinding(0)

	local outerScrollY = React.useRef(0)
	local outerScrollingRef = React.useRef(nil :: ScrollingFrame?)
	local innerScrollY, setInnerScrollY = React.useBinding(0)
	local innerScrollingRef = React.useRef(nil :: ScrollingFrame?)
	local innerScrollingEnabled, setInnerScrollingEnabled = React.useBinding(false)

	local inputActive = React.useRef(false)
	local scrollVelocity = React.useRef(0)
	local springConnection = React.useRef(nil :: RBXScriptConnection?)
	local springActive = React.useRef(false)
	local springVelocity = React.useRef(0)

	local isVerticalSheetGestureRef = nil
	local isVerticalSheetGesture = nil
	local setIsVerticalSheetGesture = nil
	local setIsVerticalSheetGestureValue = nil
	if Flags.FoundationBottomSheetGestureInteractionSink then
		isVerticalSheetGestureRef = React.useRef(false)
		isVerticalSheetGesture, setIsVerticalSheetGesture = React.useState(false)
		setIsVerticalSheetGestureValue = React.useCallback(function(value: boolean)
			if isVerticalSheetGestureRef.current == value then
				return
			end
			isVerticalSheetGestureRef.current = value
			setIsVerticalSheetGesture(value)
		end, {})
	end

	local stopSpringSimulation = React.useCallback(function()
		if springConnection.current then
			springConnection.current:Disconnect()
			springConnection.current = nil
		end
		scrollVelocity.current = 0
		springActive.current = false
	end, {})

	local startSpringSimulation = React.useCallback(function(targetPosition: number)
		stopSpringSimulation()
		springActive.current = true

		local springTarget = targetPosition
		if outerScrollingRef.current then
			outerScrollingRef.current:ResetScrollVelocity()
		end

		springConnection.current = game:GetService("RunService").Heartbeat:Connect(function(delta)
			if not outerScrollingRef.current or not springActive.current then
				stopSpringSimulation()
				return
			end

			local currentPos = outerScrollingRef.current.CanvasPosition.Y
			local displacement
			local newCanvasY, newVelocity =
				advanceCriticalDampedSpring(currentPos, springVelocity.current, springTarget, delta)

			springVelocity.current = newVelocity
			outerScrollingRef.current.CanvasPosition = Vector2.new(0, newCanvasY)
			displacement = springTarget - outerScrollingRef.current.CanvasPosition.Y

			local hasSettled = math.abs(displacement) < POSITION_THRESHOLD
				and math.abs(springVelocity.current) < VELOCITY_THRESHOLD

			if hasSettled then
				outerScrollingRef.current.CanvasPosition = Vector2.new(0, springTarget)
				stopSpringSimulation()
			end
		end)
	end, { stopSpringSimulation })

	local snapValueToPosition = React.useCallback(
		function(value: number)
			return math.min(snapValueToPixels(value), maxSheetHeight) + safeAreaPadding
		end,
		{
			safeAreaPadding,
			snapValueToPixels,
			maxSheetHeight,
		} :: { unknown }
	)

	local springToSnapIndex = React.useCallback(function(index: number)
		currentSnapIndex.current = index
		startSpringSimulation(snapValueToPosition(snapPoints[index]))
		if Flags.FoundationBottomSheetOnSnapPointChanged and onSnapPointChangedRef.current then
			onSnapPointChangedRef.current(snapPoints[index], index)
		end
	end, { snapValueToPosition, snapPoints } :: { unknown })

	local jumpToSnapIndex = React.useCallback(function(index: number)
		stopSpringSimulation()
		currentSnapIndex.current = index
		if outerScrollingRef.current then
			outerScrollingRef.current.CanvasPosition = Vector2.new(0, snapValueToPosition(snapPoints[index]))
		end
		if Flags.FoundationBottomSheetOnSnapPointChanged and onSnapPointChangedRef.current then
			onSnapPointChangedRef.current(snapPoints[index], index)
		end
	end, { stopSpringSimulation, snapValueToPosition, snapPoints } :: { unknown })

	local closeSheet = React.useCallback(function(forceAnimate: boolean?)
		if isClosing.current then
			return
		end
		if reducedMotion and not forceAnimate then
			isClosing.current = true
			stopSpringSimulation()
			if outerScrollingRef.current then
				outerScrollingRef.current.CanvasPosition = Vector2.new(0, 0)
			end
			setBackdropTransparencyGoal(Otter.instant(1) :: Otter.Goal<any>)
		else
			springVelocity.current = -scrollVelocity.current
			startSpringSimulation(0)
			setBackdropTransparencyGoal(Otter.ease(1, {
				duration = tokens.Time.Time_100,
			}))
			isClosing.current = true
		end
	end, { startSpringSimulation, stopSpringSimulation, reducedMotion } :: { unknown })

	local isOuterScrollAtMax = if Flags.FoundationBottomSheetScrollAtMaxTolerance
		then React.useCallback(function()
			local target = math.floor(maxSheetHeight + safeAreaPadding)
			return outerScrollY.current >= target - SCROLL_AT_MAX_TOLERANCE
		end, { maxSheetHeight, safeAreaPadding } :: { unknown })
		else nil :: never

	local updateInnerScrolling = React.useCallback(
		function()
			local isAtTopOfInnerScroll = innerScrollY:getValue() <= 0
			local isAtMaxOfOuterScroll = if Flags.FoundationBottomSheetScrollAtMaxTolerance
				then isOuterScrollAtMax()
				else outerScrollY.current >= math.floor(maxSheetHeight + safeAreaPadding)
			local isCollapsing = not isAtMaxOfOuterScroll and scrollVelocity.current < 0

			if isCollapsing or (scrollVelocity.current > 0 and isAtTopOfInnerScroll and inputActive.current) then
				setInnerScrollingEnabled(false)
			elseif (scrollVelocity.current < 0 or (scrollVelocity.current == 0)) and isAtMaxOfOuterScroll then
				setInnerScrollingEnabled(true)
			end
		end,
		if Flags.FoundationBottomSheetScrollAtMaxTolerance
			then { isOuterScrollAtMax }
			else { maxSheetHeight, safeAreaPadding } :: { unknown }
	)

	local snapToClosestSwipeSnapPoint = React.useCallback(function()
		local vel = scrollVelocity.current
		local currentPos = outerScrollY.current
		local inertiaFriction = ENGINE_INERTIA_FRICTION
		local distanceTraveled = vel / inertiaFriction
		local finalPos = currentPos - distanceTraveled

		-- Find closest snap point
		local snaps = { {
			index = 0,
			position = 0,
		} }
		for index, snap in snapPoints do
			table.insert(snaps, {
				index = index,
				position = snapValueToPosition(snap),
			})
		end
		table.sort(snaps, function(a, b)
			return math.abs(a.position - finalPos) < math.abs(b.position - finalPos)
		end)
		local target = snaps[1]

		if not inputActive.current then
			springVelocity.current = -vel
			if target.index == 0 then
				closeSheet(true)
			else
				springToSnapIndex(target.index)
			end
		end
	end, { snapPoints, springToSnapIndex, snapValueToPosition, closeSheet } :: { unknown })

	React.useEffect(
		function()
			if overlay then
				if reducedMotion then
					jumpToSnapIndex(props.defaultSnapPointIndex)
					setBackdropTransparencyGoal(Otter.instant(0))
				else
					springToSnapIndex(props.defaultSnapPointIndex)
					setBackdropTransparencyGoal(Otter.ease(0, {
						duration = tokens.Time.Time_100,
					}))
				end

				-- Enable inner scrolling if starting at max snap point
				local isAtMaxSnapPoint = snapValueToPixels(snapPoints[props.defaultSnapPointIndex]) >= maxSheetHeight
				setInnerScrollingEnabled(isAtMaxSnapPoint)
			end
			return function()
				stopSpringSimulation()
			end
		end,
		{
			overlay,
			snapPoints,
			props.defaultSnapPointIndex,
			springToSnapIndex,
			snapValueToPixels,
			jumpToSnapIndex,
			reducedMotion,
		} :: { unknown }
	)

	if Flags.FoundationBottomSheetFixHeightCap then
		React.useLayoutEffect(function()
			if not overlay then
				return
			end
			setOverlayAvailableHeight(overlay.AbsoluteSize.Y)
			local connection = overlay:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				setOverlayAvailableHeight(overlay.AbsoluteSize.Y)
			end)
			return function()
				connection:Disconnect()
			end
		end, { overlay })
	end

	-- TODO: maybe attach these to the outer scroll view instead of input service (does it make a difference?)
	-- TODO: create a ScrollingInertia property that can be used instead of touchpan
	-- TODO: support mouse wheel scrolling/trackpad scrolling
	React.useEffect(
		function()
			local touchPanConnection = game:GetService("UserInputService").TouchPan
				:Connect(function(_, totalTranslation, velocity, _)
					scrollVelocity.current = velocity.Y
					if Flags.FoundationBottomSheetGestureInteractionSink then
						if inputActive.current and totalTranslation then
							local verticalDragDistance = math.abs(totalTranslation.Y)
							local horizontalDragDistance = math.abs(totalTranslation.X)
							if verticalDragDistance > horizontalDragDistance then
								setIsVerticalSheetGestureValue(true)
							end
						end
					end
					updateInnerScrolling()
				end)
			local inputBeganConnection = game:GetService("UserInputService").InputBegan:Connect(function()
				inputActive.current = true
				scrollVelocity.current = 0
				if Flags.FoundationBottomSheetGestureInteractionSink then
					setIsVerticalSheetGestureValue(false)
				end
				stopSpringSimulation()
			end)
			local inputEndedConnection = game:GetService("UserInputService").InputEnded:Connect(function()
				if inputActive.current == false then
					return
				end

				inputActive.current = false
				if Flags.FoundationBottomSheetGestureInteractionSink then
					setIsVerticalSheetGestureValue(false)
				end
				local outerScrollVelocityY = if outerScrollingRef.current
					then outerScrollingRef.current:GetScrollVelocity().Y
					else 0

				scrollVelocity.current = outerScrollVelocityY

				-- Don't handle snapping if outer scrolling is at maximum or sheet is closing
				local shouldSkipSnapping = (
					if Flags.FoundationBottomSheetScrollAtMaxTolerance
						then isOuterScrollAtMax()
						else outerScrollY.current >= math.floor(maxSheetHeight + safeAreaPadding)
				) or isClosing.current

				if shouldSkipSnapping then
					setInnerScrollingEnabled(true)
					return
				end

				snapToClosestSwipeSnapPoint()
			end)

			return function()
				if Flags.FoundationBottomSheetGestureInteractionSink then
					setIsVerticalSheetGestureValue(false)
				end
				touchPanConnection:Disconnect()
				inputBeganConnection:Disconnect()
				inputEndedConnection:Disconnect()
			end
		end,
		if Flags.FoundationBottomSheetScrollAtMaxTolerance
			then {
				overlay,
				snapToClosestSwipeSnapPoint,
				updateInnerScrolling,
				stopSpringSimulation,
				isOuterScrollAtMax,
				if Flags.FoundationBottomSheetGestureInteractionSink then setIsVerticalSheetGestureValue else nil,
			} :: { unknown }
			else {
				overlay,
				snapToClosestSwipeSnapPoint,
				updateInnerScrolling,
				stopSpringSimulation,
				if Flags.FoundationBottomSheetGestureInteractionSink then setIsVerticalSheetGestureValue else nil,
			} :: { unknown }
	)

	local closeAffordanceRef = React.useRef(nil) :: React.Ref<GuiObject>
	local contentStartRef, setContentStartRef = React.useState(nil :: React.Ref<GuiObject>?)

	local innerSurface, setInnerSurface = React.useState(nil :: Frame?)
	local composedRef = ReactUtils.useComposedRef(ref, setInnerSurface)

	React.useImperativeHandle(props.sheetRef, function()
		return {
			close = closeSheet,
		}
	end, {})

	local contextValue = React.useMemo(
		function()
			return {
				actionsHeight = actionsHeight,
				setActionsHeight = setActionsHeight,
				hasActionsDivider = hasActionsDivider,
				setHasActionsDivider = setHasActionsDivider,
				sheetHeightAvailable = sheetHeightAvailable,
				setSheetHeightAvailable = setSheetHeightAvailable,
				safeAreaPadding = safeAreaPadding,
				bottomPadding = BOTTOM_PADDING,
				innerScrollingEnabled = innerScrollingEnabled,
				innerScrollY = innerScrollY,
				innerScrollingRef = innerScrollingRef,
				setInnerScrollY = function(value: number)
					setInnerScrollY(value)
					updateInnerScrolling()
				end,
				hasHeader = hasHeader,
				setHasHeader = setHasHeader,
				hasFullBleed = hasFullBleed,
				fullBleedHeight = fullBleedHeight,
				setFullBleedHeight = setFullBleedHeight,
				closeSheet = closeSheet,
				hasRadius = true,
				sheetType = SheetType.Bottom,
				innerSurface = innerSurface,
				testId = props.testId,
				closeAffordanceRef = closeAffordanceRef,
				contentStartRef = contentStartRef,
				setContentStartRef = setContentStartRef,
				isVerticalSheetGesture = if Flags.FoundationBottomSheetGestureInteractionSink
					then isVerticalSheetGesture
					else nil,
			}
		end,
		{
			props.testId,
			closeSheet,
			safeAreaPadding,
			updateInnerScrolling,
			innerSurface,
			closeAffordanceRef,
			contentStartRef,
			hasFullBleed,
			if Flags.FoundationBottomSheetGestureInteractionSink then isVerticalSheetGesture else nil,
		} :: { unknown }
	)

	local gripperElement = React.createElement(View, {
		ZIndex = 5,
		backgroundStyle = tokens.Color.Content.Muted,
		Position = UDim2.new(0.5, 0, 0, if hasFullBleed then tokens.Padding.Small else -tokens.Padding.XSmall),
		AnchorPoint = Vector2.new(0.5, 0),
		tag = "align-y-center size-1000-100 padding-y-small radius-small",
		testId = `{props.testId}--gripper`,
	}, {
		TouchTarget = React.createElement(View, {
			tag = "size-1000-600",
			stateLayer = {
				affordance = StateLayerAffordance.None,
			},
			onActivated = function()
				-- Cancel input ended if the gripper is pressed
				inputActive.current = false
				if innerScrollingRef.current then
					setInnerScrollY(0)
					innerScrollingRef.current.CanvasPosition = Vector2.new(0, 0)
					innerScrollingRef.current:ResetScrollVelocity()
				end
				if #snapPoints > 1 then
					local nextIndex = currentSnapIndex.current % #snapPoints + 1
					if reducedMotion then
						jumpToSnapIndex(nextIndex)
					else
						springToSnapIndex(nextIndex)
					end
					local isAtMaxSnapPoint = snapValueToPixels(snapPoints[nextIndex]) >= maxSheetHeight
					setInnerScrollingEnabled(isAtMaxSnapPoint)
				else
					closeSheet()
				end
			end,
		}),
	})

	return overlay
		and ReactRoblox.createPortal(
			React.createElement(
				View,
				{
					ZIndex = elevation.zIndex,
					ref = composedRef,
					selection = SheetTypes.nonSelectable,
					selectionGroup = SheetTypes.isolatedSelectionGroup,
					tag = "size-full",
					testId = `{props.testId}--surface`,
					onAbsoluteSizeChanged = if not Flags.FoundationBottomSheetFixHeightCap
						then function(rbx: GuiObject)
							setOverlayAvailableHeight(rbx.AbsoluteSize.Y)
						end
						else nil,
				},
				React.createElement("ScrollingFrame", {
					Size = UDim2.fromScale(1, 1),
					CanvasSize = UDim2.new(1, 0, 1, maxSheetHeight + safeAreaPadding),
					ClipsDescendants = false,
					BackgroundTransparency = 1,
					ScrollingDirection = Enum.ScrollingDirection.Y,
					ScrollBarThickness = 0,
					ref = outerScrollingRef,
					[React.Change.CanvasPosition] = function(instance: ScrollingFrame)
						outerScrollY.current = instance.CanvasPosition.Y
						setSheetHeightAvailable(outerScrollY.current - safeAreaPadding - tokens.Margin.Small)
						updateInnerScrolling()
						if outerScrollY.current <= 0 then
							closeSheet()
						end
					end :: unknown,
				}, {
					SheetContainer = React.createElement(View, {
						Size = UDim2.new(1, 0, 1, BOTTOM_PADDING - maxSheetHeight - safeAreaPadding),
						Position = UDim2.new(0, 0, 1, -maxSheetHeight),
						ZIndex = 3,
					}, {
						Sheet = React.createElement(View, {
							Size = if props.snapPoints == nil
								then UDim2.fromScale(1, 0)
								else UDim2.new(1, 0, 0, maxSheetHeight + BOTTOM_PADDING),
							AutomaticSize = if props.snapPoints == nil then Enum.AutomaticSize.Y else nil,
							onAbsoluteSizeChanged = if props.snapPoints == nil
								then function(rbx: GuiObject)
									setSheetHeight(rbx.AbsoluteSize.Y - BOTTOM_PADDING)
								end
								else nil,
							stateLayer = {
								affordance = StateLayerAffordance.None,
							},
							-- Needed to sink the onActivated event to the backdrop
							onActivated = Dash.noop,
							testId = props.testId,
							tag = {
								["col items-center radius-large clip bg-surface-100"] = true,
								["padding-top-medium"] = not hasFullBleed,
							},
						}, {
							GripperContainer = React.createElement("Folder", nil, {
								Gripper = gripperElement,
							}),
							Content = React.createElement(SheetContext.Provider, {
								value = contextValue,
							}, React.createElement(OwnerScope, { owner = elevation }, props.children)),
						}),
					}),
					Shadow = React.createElement(Image, {
						Image = SHADOW_IMAGE,
						Size = UDim2.new(1, SHADOW_SIZE * 2, 0, maxSheetHeight + BOTTOM_PADDING + SHADOW_SIZE * 2),
						Position = UDim2.new(-SHADOW_SIZE, 0, 1, -maxSheetHeight - SHADOW_SIZE),
						ZIndex = 2,
						slice = {
							center = Rect.new(SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE + 1, SHADOW_SIZE + 1),
							scale = 2,
						},
						imageStyle = tokens.Color.Extended.Black.Black_10,
					}),
					Backdrop = React.createElement(View, {
						Size = UDim2.fromScale(1, 2),
						Position = UDim2.fromScale(0, -0.5),
						ZIndex = 1,
						stateLayer = {
							affordance = StateLayerAffordance.None,
						},
						backgroundStyle = backdropTransparency:map(function(value: number)
							return {
								Color3 = tokens.Color.Common.Backdrop.Color3,
								Transparency = math.lerp(tokens.Color.Common.Backdrop.Transparency, 1, value),
							}
						end),
						onActivated = function()
							closeSheet()
						end,
						testId = `{props.testId}--backdrop`,
					}),
				})
			),
			overlay
		)
end

return React.memo(React.forwardRef(BottomSheet))
