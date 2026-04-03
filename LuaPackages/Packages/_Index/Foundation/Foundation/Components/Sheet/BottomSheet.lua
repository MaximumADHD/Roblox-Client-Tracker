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

local useHardwareInsets = require(script.Parent.useHardwareInsets)
local useScreenHeight = require(script.Parent.useScreenHeight)

local Flags = require(Foundation.Utility.Flags)
local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)

local usePreferences = require(Foundation.Providers.Preferences.usePreferences)

local SPRING_FREQUENCY = 18
local SPRING_FREQUENCY_HZ = 4
local SPRING_OMEGA = 2 * math.pi * SPRING_FREQUENCY_HZ
local SPRING_DAMPING = 0.9
local VELOCITY_THRESHOLD = 1
local POSITION_THRESHOLD = 0.5
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

local function BottomSheet(sheetProps: SheetProps, ref: React.Ref<Instance>)
	local props = withDefaults(sheetProps, defaultProps)
	local overlay = useOverlay()
	local tokens = useTokens()
	local elevation = useElevation(ElevationLayer.Sheet, { stackAboveOwner = false })

	local reducedMotion = false
	if Flags.FoundationSheetReducedMotion then
		local preferences = usePreferences()
		reducedMotion = preferences.reducedMotion
	end

	local screenHeight = useScreenHeight()
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
	local safeAreaPadding = useHardwareInsets(overlay).bottom

	local currentSnapIndex = React.useRef(0)
	local isClosing = React.useRef(false)

	local backdropTransparency, setBackdropTransparencyGoal = useAnimatedBinding(1, function()
		if isClosing.current then
			props.onClose()
		end
	end)
	local sheetHeightAvailable, setSheetHeightAvailable = React.useBinding(-safeAreaPadding)
	local actionsHeight, setActionsHeight = React.useBinding(0)
	local hasActionsDivider, setHasActionsDivider = React.useBinding(false)
	local hasHeader, setHasHeader = React.useBinding(false)

	local outerScrollY = React.useRef(0)
	local outerScrollingRef = React.useRef(nil :: ScrollingFrame?)
	local innerScrollY, setInnerScrollY = React.useBinding(0)
	local innerScrollingEnabled, setInnerScrollingEnabled = React.useBinding(false)

	local inputActive = React.useRef(false)
	local scrollVelocity = React.useRef(0)
	local springConnection = React.useRef(nil :: RBXScriptConnection?)
	local springActive = React.useRef(false)
	local springVelocity = React.useRef(0)

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
		if Flags.FoundationBottomSheetImproveSpring then
			if outerScrollingRef.current then
				outerScrollingRef.current:ResetScrollVelocity()
			end
		end
		local lastPosition = if outerScrollingRef.current then outerScrollingRef.current.CanvasPosition.Y else 0

		springConnection.current = game:GetService("RunService").Heartbeat:Connect(function(delta)
			if not outerScrollingRef.current or not springActive.current then
				stopSpringSimulation()
				return
			end

			local currentPos = outerScrollingRef.current.CanvasPosition.Y
			local displacement
			if Flags.FoundationBottomSheetImproveSpring then
				local newCanvasY, newVelocity =
					advanceCriticalDampedSpring(currentPos, springVelocity.current, springTarget, delta)

				springVelocity.current = newVelocity
				outerScrollingRef.current.CanvasPosition = Vector2.new(0, newCanvasY)
				lastPosition = outerScrollingRef.current.CanvasPosition.Y
				displacement = springTarget - outerScrollingRef.current.CanvasPosition.Y
			else
				displacement = springTarget - currentPos
				local springForce = displacement * SPRING_FREQUENCY * SPRING_FREQUENCY

				-- Engine has inertia, we can estimate it based off the delta from our expected last position
				-- then we remove that inertia from our spring to compensate and make the spring smooth
				local scrollingInertia = (currentPos - lastPosition) / delta
				springVelocity.current -= scrollingInertia

				local dampingForce = -springVelocity.current * 2 * SPRING_DAMPING * SPRING_FREQUENCY
				local totalForce = springForce + dampingForce
				local dt = math.min(delta, 1 / 30) -- cap delta to avoid large jumps

				springVelocity.current = springVelocity.current + totalForce * dt

				-- Apply the velocity to move the canvas position
				local newCanvasY = currentPos + springVelocity.current * dt
				outerScrollingRef.current.CanvasPosition = Vector2.new(0, newCanvasY)
				lastPosition = outerScrollingRef.current.CanvasPosition.Y
			end

			local hasSettled = math.abs(displacement) < POSITION_THRESHOLD
				and math.abs(springVelocity.current) < VELOCITY_THRESHOLD

			if hasSettled then
				outerScrollingRef.current.CanvasPosition = Vector2.new(0, springTarget)
				stopSpringSimulation()
			end
		end)
	end, { stopSpringSimulation })

	local snapValueToPosition = React.useCallback(function(value: number)
		return snapValueToPixels(value) + safeAreaPadding
	end, { safeAreaPadding, snapValueToPixels } :: { unknown })

	local springToSnapIndex = React.useCallback(function(index: number)
		currentSnapIndex.current = index
		startSpringSimulation(snapValueToPosition(snapPoints[index]))
	end, { snapValueToPosition, snapPoints } :: { unknown })

	local jumpToSnapIndex = if Flags.FoundationSheetReducedMotion
		then React.useCallback(function(index: number)
			stopSpringSimulation()
			currentSnapIndex.current = index
			if outerScrollingRef.current then
				outerScrollingRef.current.CanvasPosition = Vector2.new(0, snapValueToPosition(snapPoints[index]))
			end
		end, { stopSpringSimulation, snapValueToPosition, snapPoints } :: { unknown })
		else nil :: never

	local closeSheet = React.useCallback(
		function(forceAnimate: boolean?)
			if isClosing.current then
				return
			end
			if Flags.FoundationSheetReducedMotion and reducedMotion and not forceAnimate then
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
		end,
		if Flags.FoundationSheetReducedMotion
			then { startSpringSimulation, stopSpringSimulation, reducedMotion } :: { unknown }
			else { startSpringSimulation }
	)

	local updateInnerScrolling = React.useCallback(function()
		local isAtTopOfInnerScroll = innerScrollY:getValue() <= 0
		local isAtMaxOfOuterScroll = outerScrollY.current
			>= if Flags.FoundationBottomSheetImproveSpring
				then math.floor(maxSheetHeight + safeAreaPadding)
				else math.round(maxSheetHeight + safeAreaPadding)

		if scrollVelocity.current > 0 and isAtTopOfInnerScroll and inputActive.current then
			setInnerScrollingEnabled(false)
		elseif
			(scrollVelocity.current < 0 or (Flags.FoundationBottomSheetImproveSpring and scrollVelocity.current == 0))
			and isAtMaxOfOuterScroll
		then
			setInnerScrollingEnabled(true)
		end
	end, { maxSheetHeight, safeAreaPadding } :: { unknown })

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
				if Flags.FoundationSheetReducedMotion then
					closeSheet(true)
				else
					closeSheet()
				end
			else
				springToSnapIndex(target.index)
			end
		end
	end, { snapPoints, springToSnapIndex, snapValueToPosition, closeSheet } :: { unknown })

	React.useEffect(
		function()
			if overlay then
				if Flags.FoundationSheetReducedMotion and reducedMotion then
					jumpToSnapIndex(props.defaultSnapPointIndex)
					setBackdropTransparencyGoal(Otter.instant(0))
				else
					springToSnapIndex(props.defaultSnapPointIndex)
					setBackdropTransparencyGoal(Otter.ease(0, {
						duration = tokens.Time.Time_100,
					}))
				end

				-- Enable inner scrolling if starting at max snap point
				local isAtMaxSnapPoint = snapValueToPixels(snapPoints[props.defaultSnapPointIndex]) == maxSheetHeight
				if isAtMaxSnapPoint then
					setInnerScrollingEnabled(true)
				end
			end
			return function()
				stopSpringSimulation()
			end
		end,
		if Flags.FoundationSheetReducedMotion
			then {
				overlay,
				snapPoints,
				props.defaultSnapPointIndex,
				springToSnapIndex,
				snapValueToPixels,
				jumpToSnapIndex,
				reducedMotion,
			} :: { unknown }
			else {
				overlay,
				snapPoints,
				props.defaultSnapPointIndex,
				springToSnapIndex,
				snapValueToPixels,
			} :: { unknown }
	)

	-- TODO: maybe attach these to the outer scroll view instead of input service (does it make a difference?)
	-- TODO: create a ScrollingInertia property that can be used instead of touchpan
	-- TODO: support mouse wheel scrolling/trackpad scrolling
	React.useEffect(function()
		local touchPanConnection = game:GetService("UserInputService").TouchPan:Connect(function(_, _, velocity, _)
			scrollVelocity.current = velocity.Y
			updateInnerScrolling()
		end)
		local inputBeganConnection = game:GetService("UserInputService").InputBegan:Connect(function()
			inputActive.current = true
			scrollVelocity.current = 0
			stopSpringSimulation()
		end)
		local inputEndedConnection = game:GetService("UserInputService").InputEnded:Connect(function()
			if inputActive.current == false then
				return
			end

			inputActive.current = false

			if Flags.FoundationBottomSheetImproveSpring then
				local outerScrollVelocityY = if outerScrollingRef.current
					then outerScrollingRef.current:GetScrollVelocity().Y
					else 0

				scrollVelocity.current = outerScrollVelocityY

				-- Don't handle snapping if outer scrolling is at maximum or sheet is closing
				local shouldSkipSnapping = outerScrollY.current >= math.floor(maxSheetHeight + safeAreaPadding)
					or isClosing.current

				if shouldSkipSnapping then
					setInnerScrollingEnabled(true)
					return
				end
			elseif Flags.FoundationSheetFixClosingSwipe then
				local outerScrollingNotMoving
				if outerScrollingRef.current then
					local success, value = pcall(function()
						return outerScrollingRef.current:GetScrollVelocity().Y == 0
					end)

					if success then
						outerScrollingNotMoving = value
					end
				end

				-- Don't handle snapping if outer scrolling is not moving or sheet is closing
				local shouldSkipSnapping = outerScrollingNotMoving or isClosing.current

				if shouldSkipSnapping then
					setInnerScrollingEnabled(true)
					return
				end
			else
				-- Don't handle snapping if inner scrolling is active or sheet is closing
				local shouldSkipSnapping = (
					innerScrollingEnabled:getValue()
					and outerScrollY.current >= math.round(maxSheetHeight + safeAreaPadding)
				) or isClosing.current

				if shouldSkipSnapping then
					return
				end
			end

			snapToClosestSwipeSnapPoint()
		end)

		return function()
			touchPanConnection:Disconnect()
			inputBeganConnection:Disconnect()
			inputEndedConnection:Disconnect()
		end
	end, { overlay, snapToClosestSwipeSnapPoint, updateInnerScrolling, stopSpringSimulation } :: { unknown })

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
				setInnerScrollY = function(value: number)
					setInnerScrollY(value)
					updateInnerScrolling()
				end,
				hasHeader = hasHeader,
				setHasHeader = setHasHeader,
				closeSheet = closeSheet,
				sheetType = SheetType.Bottom,
				innerSurface = innerSurface,
				testId = props.testId,
				closeAffordanceRef = closeAffordanceRef,
				contentStartRef = contentStartRef,
				setContentStartRef = setContentStartRef,
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
		} :: { unknown }
	)

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
				},
				React.createElement("ScrollingFrame", {
					Size = UDim2.fromScale(1, 1),
					CanvasSize = if Flags.FoundationSheetPreventCloseOnResize
						then UDim2.new(1, 0, 1, maxSheetHeight + safeAreaPadding)
						else UDim2.new(1, 0, 0, screenHeight + maxSheetHeight + safeAreaPadding),
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
						Size = if Flags.FoundationSheetPreventCloseOnResize
							then UDim2.new(1, 0, 1, BOTTOM_PADDING - maxSheetHeight - safeAreaPadding)
							else UDim2.new(1, 0, 0, screenHeight + BOTTOM_PADDING),
						Position = if Flags.FoundationSheetPreventCloseOnResize
							then UDim2.new(0, 0, 1, -maxSheetHeight)
							else UDim2.fromOffset(0, screenHeight + safeAreaPadding),
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
							tag = "bg-surface-100 radius-large col items-center clip padding-top-small",
						}, {
							Gripper = React.createElement(View, {
								ZIndex = 3,
								backgroundStyle = tokens.Color.Content.Muted,
								tag = "padding-y-small size-1000-100 radius-small align-y-center",
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
										if #snapPoints > 1 then
											local nextIndex = currentSnapIndex.current % #snapPoints + 1
											if Flags.FoundationSheetReducedMotion and reducedMotion then
												jumpToSnapIndex(nextIndex)
											else
												springToSnapIndex(nextIndex)
											end
											if Flags.FoundationSheetFixClosingSwipe then
												local isAtMaxSnapPoint = snapValueToPixels(snapPoints[nextIndex])
													== maxSheetHeight
												if isAtMaxSnapPoint then
													setInnerScrollingEnabled(true)
												end
											end
										else
											closeSheet()
										end
									end,
								}),
							}),
							Content = React.createElement(SheetContext.Provider, {
								value = contextValue,
							}, React.createElement(OwnerScope, { owner = elevation }, props.children)),
						}),
					}),
					Shadow = React.createElement(Image, {
						Image = SHADOW_IMAGE,
						Size = UDim2.new(1, SHADOW_SIZE * 2, 0, maxSheetHeight + BOTTOM_PADDING + SHADOW_SIZE * 2),
						Position = if Flags.FoundationSheetPreventCloseOnResize
							then UDim2.new(-SHADOW_SIZE, 0, 1, -maxSheetHeight - SHADOW_SIZE)
							else UDim2.fromOffset(-SHADOW_SIZE, screenHeight + safeAreaPadding - SHADOW_SIZE),
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
						onActivated = if Flags.FoundationSheetReducedMotion
							then function()
								closeSheet()
							end
							else closeSheet :: never,
						testId = `{props.testId}--backdrop`,
					}),
				})
			),
			overlay
		)
end

return React.memo(React.forwardRef(BottomSheet))
