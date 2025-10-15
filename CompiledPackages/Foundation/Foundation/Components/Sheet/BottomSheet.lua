local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local Otter = require(Packages.Otter)
local ReactOtter = require(Packages.ReactOtter)
local Dash = require(Packages.Dash)
local useAnimatedBinding = ReactOtter.useAnimatedBinding
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useTokens = require(Foundation.Providers.Style.useTokens)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local withDefaults = require(Foundation.Utility.withDefaults)
local Constants = require(Foundation.Constants)

local SheetContext = require(script.Parent.SheetContext)
local SheetTypes = require(script.Parent.Types)
type SheetRef = SheetTypes.SheetRef
type SheetProps = SheetTypes.SheetProps
local SheetType = require(script.Parent.SheetType)

local getHardwareSafeAreaInsets = require(script.Parent.getHardwareSafeAreaInsets)

local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)

local SPRING_FREQUENCY = 18
local SPRING_DAMPING = 0.9
local VELOCITY_THRESHOLD = 1
local POSITION_THRESHOLD = 0.5
local ENGINE_INERTIA_FRICTION = 2.35
local BOTTOM_PADDING = 200

local defaultProps = {
	snapPoints = { 0.5, 0.9 },
	defaultSnapPointIndex = 1,
	testId = "--foundation-sheet",
}

local SHADOW_IMAGE = Constants.SHADOW_IMAGE
local SHADOW_SIZE = Constants.SHADOW_SIZE

local function BottomSheet(sheetProps: SheetProps, ref: React.Ref<GuiObject>)
	local props = withDefaults(sheetProps, defaultProps)
	local overlay = useOverlay()
	local tokens = useTokens()

	local screenHeight = overlay and overlay.AbsoluteSize.Y or 0
	local snapPoints = props.snapPoints :: { number }
	local maxSheetHeight = screenHeight * math.max(table.unpack(snapPoints))
	local safeAreaPadding = getHardwareSafeAreaInsets().bottom

	local currentSnapIndex = React.useRef(0)
	local isClosing = React.useRef(false)

	local backdropTransparency, setBackdropTransparencyGoal = useAnimatedBinding(1, function()
		if isClosing.current then
			props.onClose()
		end
	end)
	local sheetHeightAvailable, setSheetHeightAvailable = React.useBinding(-safeAreaPadding)
	local actionsHeight, setActionsHeight = React.useBinding(0)
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

	local closeSheet

	local function stopSpringSimulation()
		if springConnection.current then
			springConnection.current:Disconnect()
			springConnection.current = nil
		end
		scrollVelocity.current = 0
		springActive.current = false
	end

	local function startSpringSimulation(targetPosition: number)
		stopSpringSimulation()
		springActive.current = true

		local springTarget = targetPosition
		local lastPosition = if outerScrollingRef.current then outerScrollingRef.current.CanvasPosition.Y else 0

		springConnection.current = game:GetService("RunService").Heartbeat:Connect(function(delta)
			if not outerScrollingRef.current or not springActive.current then
				stopSpringSimulation()
				return
			end

			local currentPos = outerScrollingRef.current.CanvasPosition.Y
			local displacement = springTarget - currentPos
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
			lastPosition = newCanvasY

			local hasSettled = math.abs(displacement) < POSITION_THRESHOLD
				and math.abs(springVelocity.current) < VELOCITY_THRESHOLD

			if hasSettled then
				outerScrollingRef.current.CanvasPosition = Vector2.new(0, springTarget)
				stopSpringSimulation()

				if springTarget <= safeAreaPadding then
					closeSheet()
				end
			end
		end)
	end

	local function screenPercentToPosition(percent: number)
		return percent * screenHeight + safeAreaPadding
	end

	local function springToSnapIndex(index: number)
		currentSnapIndex.current = index
		startSpringSimulation(screenPercentToPosition(snapPoints[index]))
	end

	closeSheet = function()
		if isClosing.current then
			return
		end
		springVelocity.current = -scrollVelocity.current
		startSpringSimulation(0)
		setBackdropTransparencyGoal(Otter.ease(1, {
			duration = tokens.Time.Time_100,
		}))
		isClosing.current = true
	end

	local function updateInnerScrolling()
		local isAtTopOfInnerScroll = innerScrollY:getValue() <= 0
		local isAtMaxOfOuterScroll = outerScrollY.current >= math.round(maxSheetHeight + safeAreaPadding)

		if scrollVelocity.current > 0 and isAtTopOfInnerScroll and inputActive.current then
			setInnerScrollingEnabled(false)
		elseif scrollVelocity.current < 0 and isAtMaxOfOuterScroll then
			setInnerScrollingEnabled(true)
		end
	end

	local function snapToClosestSwipeSnapPoint()
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
				position = screenPercentToPosition(snap),
			})
		end
		table.sort(snaps, function(a, b)
			return math.abs(a.position - finalPos) < math.abs(b.position - finalPos)
		end)
		local target = snaps[1]

		if not inputActive.current then
			springVelocity.current = -vel
			if target.index == 0 then
				closeSheet()
			else
				springToSnapIndex(target.index)
			end
		end
	end

	React.useEffect(function()
		if overlay then
			springToSnapIndex(props.defaultSnapPointIndex)

			-- Enable inner scrolling if starting at max snap point
			local isAtMaxSnapPoint = math.max(table.unpack(snapPoints)) == snapPoints[props.defaultSnapPointIndex]
			if isAtMaxSnapPoint then
				setInnerScrollingEnabled(true)
			end

			setBackdropTransparencyGoal(Otter.ease(0, {
				duration = tokens.Time.Time_100,
			}))
		end
		return function()
			stopSpringSimulation()
		end
	end, { overlay })

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

			-- Don't handle snapping if inner scrolling is active or sheet is closing
			local shouldSkipSnapping = (
				innerScrollingEnabled:getValue()
				and outerScrollY.current >= math.round(maxSheetHeight + safeAreaPadding)
			) or isClosing.current

			if shouldSkipSnapping then
				return
			end

			snapToClosestSwipeSnapPoint()
		end)

		return function()
			touchPanConnection:Disconnect()
			inputBeganConnection:Disconnect()
			inputEndedConnection:Disconnect()
		end
	end, { overlay })

	React.useImperativeHandle(props.sheetRef, function()
		return {
			close = closeSheet,
		}
	end, {})

	return overlay
		and ReactRoblox.createPortal(
			React.createElement("ScrollingFrame", {
				Size = UDim2.fromScale(1, 1),
				CanvasSize = UDim2.new(1, 0, 0, screenHeight + maxSheetHeight + safeAreaPadding),
				ClipsDescendants = false,
				BackgroundTransparency = 1,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ScrollBarThickness = 0,
				ZIndex = 0,
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
				Sheet = React.createElement(View, {
					Size = UDim2.new(1, 0, 0, maxSheetHeight + BOTTOM_PADDING),
					Position = UDim2.fromOffset(0, screenHeight + safeAreaPadding),
					ZIndex = 3,
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					-- Needed to sink the onActivated event to the backdrop
					onActivated = Dash.noop,
					ref = ref,
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
								local nextIndex = currentSnapIndex.current % #snapPoints + 1
								springToSnapIndex(nextIndex)
							end,
						}),
					}),
					Content = React.createElement(SheetContext.Provider, {
						value = {
							actionsHeight = actionsHeight,
							setActionsHeight = setActionsHeight,
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
							testId = props.testId,
						},
					}, props.children),
				}),
				Shadow = React.createElement(Image, {
					Image = SHADOW_IMAGE,
					Size = UDim2.new(1, SHADOW_SIZE * 2, 0, maxSheetHeight + BOTTOM_PADDING + SHADOW_SIZE * 2),
					Position = UDim2.fromOffset(-SHADOW_SIZE, screenHeight + safeAreaPadding - SHADOW_SIZE),
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
					onActivated = closeSheet,
					testId = `{props.testId}--backdrop`,
				}),
			}),
			overlay
		)
end

return React.memo(React.forwardRef(BottomSheet))
