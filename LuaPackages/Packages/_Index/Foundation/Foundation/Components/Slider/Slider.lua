local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local Constants = require(Foundation.Constants)

local InputMode = require(Foundation.Utility.Input.InputMode)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useBindable = require(Foundation.Utility.useBindable)
local useLastInputMode = require(Foundation.Utility.Input.useLastInputMode)
local usePointerPosition = require(Foundation.Utility.usePointerPosition)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local calculateNextStepValue = require(script.Parent.calculateNextStepValue)
local calculatePixelsPerStep = require(script.Parent.calculatePixelsPerStep)
local calculateSliderPositionDelta = require(script.Parent.calculateSliderPositionDelta)
local calculateSliderStepValue = require(script.Parent.calculateSliderStepValue)
local calculateSliderValueFromPosition = require(script.Parent.calculateSliderValueFromPosition)
local useSliderDirectionalInput = require(script.Parent.useSliderDirectionalInput)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Visibility = require(Foundation.Enums.Visibility)
type Visibility = Visibility.Visibility

local SliderVariant = require(Foundation.Enums.SliderVariant)
type SliderVariant = SliderVariant.SliderVariant

local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local ControlState = require(Foundation.Enums.ControlState)
local CursorType = require(Foundation.Enums.CursorType)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
type ControlState = ControlState.ControlState

local CursorComponent = require(Foundation.Providers.Cursor.CursorComponent)
local Flags = require(Foundation.Utility.Flags)
local Knob = require(Foundation.Components.Knob)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local blendTransparencies = require(Foundation.Utility.blendTransparencies)
local getKnobSize = require(Foundation.Components.Knob.getKnobSize)
local usePresentationContext = PresentationContext.usePresentationContext
local useSliderMotionStates = require(Foundation.Components.Slider.useSliderMotionStates)
local useSliderVariants = require(Foundation.Components.Slider.useSliderVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)

-- When observing the drag deltas this was a reasonably large value that would
-- only realistically be reached from the directional input jumping back to the
-- center.
--
-- The actual deltas were much smaller on average, but there are properties on
-- UIDragDetector to adjust the speed it moves for directional input, so this
-- may not work forever.
local MAX_DIRECTIONAL_INPUT_DRAG_DELTA = 0.01

type Bindable<T> = Types.Bindable<T>

export type SliderProps = {
	value: Bindable<number>,
	range: NumberRange?,

	size: InputSize?,
	width: UDim?,
	variant: SliderVariant?,
	isDisabled: boolean?,
	isContained: boolean?,
	knobVisibility: Visibility?,
	knob: React.ReactElement?,
	step: number?,

	onValueChanged: ((newValue: number) -> ())?,
	onDragStarted: (() -> ())?,
	onDragEnded: (() -> ())?,
} & Types.CommonProps

local defaultProps = {
	range = NumberRange.new(0, 1),
	size = InputSize.Medium,
	width = UDim.new(1, 0),
	variant = SliderVariant.Standard,
	isDisabled = false,
	isContained = false,
	knobVisibility = Visibility.Auto,
	testId = "--foundation-slider",
}

local IS_INVERSE = { colorNamespace = ColorNamespace.Inverse }

local DIRECTIONAL_SELECTION_GROUP: Types.SelectionGroup = {
	SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
	SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
	SelectionBehaviorUp = Enum.SelectionBehavior.Escape,
	SelectionBehaviorDown = Enum.SelectionBehavior.Escape,
}

-- selene: allow(high_cyclomatic_complexity) -- try removing when cleaning up either FFlagFoundationSliderOffloadDraggingMath or FFlagFoundationSliderAsSeenOnTV
local function Slider(sliderProps: SliderProps, forwardRef: React.Ref<GuiObject>?)
	local props = withDefaults(sliderProps, defaultProps)
	local tokens = useTokens()
	local controlState, setControlState = React.useState(ControlState.Initialize :: ControlState)
	local isDragging, setIsDragging = React.useState(false)
	local isKnobVisible, setIsKnobVisible = React.useState(false)
	local value: React.Binding<number> = useBindable(props.value):map(function(currValue)
		return math.clamp(currValue, props.range.Min, props.range.Max)
	end)

	local lastDragPosition = if Flags.FoundationSliderOffloadDraggingMath
		then nil :: never
		else React.useRef(nil :: Vector2?)
	local dragDetectorRef = if Flags.FoundationSliderOffloadDraggingMath
		then React.useRef<<UIDragDetector?>>(nil)
		else nil :: never
	-- The fraction we seek to on DragStart. DragUDim2 deltas are anchored to it.
	local dragStartFractionRef = if Flags.FoundationSliderOffloadDraggingMath then React.useRef(0) else nil :: never
	-- Previous DragUDim2 scale, used to detect the engine resetting the drag origin
	-- when directional input changes direction.
	local lastDragUDim2Ref = if Flags.FoundationSliderOffloadDraggingMath then React.useRef(0) else nil :: never
	local lastInputMode = useLastInputMode()
	local ref = React.useRef(nil :: GuiObject?)
	React.useImperativeHandle(forwardRef, function()
		return ref.current
	end, {})

	local trackInstance, setTrackInstance
	if Flags.FoundationSliderOffloadDraggingMath then
		trackInstance, setTrackInstance = React.useBinding<<GuiObject?>>(nil)
	end
	local setTrackRef = if Flags.FoundationSliderOffloadDraggingMath
		then ReactUtils.useComposedRef(ref, setTrackInstance)
		else nil :: never

	local pointerPosition = if Flags.FoundationSliderOffloadDraggingMath
		then nil :: never
		else usePointerPosition(ref.current)

	local variant = useSliderVariants(tokens, props.size, props.variant)
	local motionStates = useSliderMotionStates(variant.knob.style, variant.knob.dragStyle)

	-- Determine current motion state based on visibility and interaction
	local currentMotionState = React.useMemo(function()
		if not isKnobVisible then
			return motionStates.Hidden
		end
		return if isDragging then motionStates.Dragging else motionStates.Idle
	end, { tokens, isKnobVisible, isDragging, motionStates } :: { unknown })

	local knobStyle = if Flags.FoundationSliderBeta
		then React.useMemo(function(): Types.ColorStyleValue
			if not isKnobVisible then
				return { Color3 = variant.knob.style.Color3, Transparency = 1 }
			elseif isDragging then
				return variant.knob.dragStyle
			end
			return variant.knob.style
		end, { variant, isKnobVisible, isDragging } :: { unknown })
		else nil :: never

	local isSelected = if Flags.FoundationSliderKnobSelection
		then controlState == ControlState.Selected or controlState == ControlState.SelectedPressed
		else nil :: never

	React.useEffect(
		function()
			if Flags.FoundationSliderBeta and props.isDisabled then
				setIsKnobVisible(false)
			elseif props.knobVisibility :: Visibility == Visibility.None then
				setIsKnobVisible(if Flags.FoundationSliderKnobSelection then isSelected else false)
			elseif props.knobVisibility :: Visibility == Visibility.Always then
				setIsKnobVisible(true)
			else
				setIsKnobVisible(
					isDragging
						or controlState == ControlState.Hover
						or controlState == ControlState.Selected
						or controlState == ControlState.Pressed
				)
			end
		end,
		{
			props.knobVisibility,
			controlState,
			isDragging,
			if Flags.FoundationSliderBeta then props.isDisabled else nil,
			if Flags.FoundationSliderKnobSelection then isSelected else nil,
		} :: { unknown }
	)

	local calculateValueFromAbsPosition = if Flags.FoundationSliderOffloadDraggingMath
		then nil :: never
		else React.useCallback(function(position: Vector2)
			if ref.current then
				local unsteppedValue = calculateSliderValueFromPosition(position, ref.current, props.range)
				if props.step then
					return calculateSliderStepValue(unsteppedValue, props.step, props.range)
				end

				return unsteppedValue
			else
				return 0
			end
		end, { ref, props.range, props.step } :: { unknown })

	local updateValue = React.useCallback(function(newValue: number)
		if newValue ~= value:getValue() then
			if props.onValueChanged then
				props.onValueChanged(newValue)
			end
		end
	end, { value, props.onValueChanged } :: { unknown })

	local onSeek = if Flags.FoundationSliderOffloadDraggingMath
		then nil :: never
		else React.useCallback(function()
			local newValue = calculateValueFromAbsPosition(pointerPosition:getValue())
			updateValue(newValue)
		end, { calculateValueFromAbsPosition, pointerPosition, updateValue } :: { unknown })

	if Flags.FoundationSliderAsSeenOnTV then
		if not Flags.FoundationSliderKnobSelection then
			isSelected = controlState == ControlState.Selected or controlState == ControlState.SelectedPressed
		end

		useSliderDirectionalInput(isSelected and not props.isDisabled, props.step, props.range, {
			getValue = function()
				return value:getValue()
			end,
			onStep = function(newValue: number)
				updateValue(
					if props.step then calculateSliderStepValue(newValue, props.step, props.range) else newValue
				)
			end,
		})
	end

	local onDrag = if Flags.FoundationSliderOffloadDraggingMath
		then React.useCallback(function(_rbx: UIDragDetector, _inputPosition: Vector2)
			local dragDetector = dragDetectorRef.current
			if not dragDetector then
				return
			end

			local rangeSpan = props.range.Max - props.range.Min
			local delta = dragDetector.DragUDim2.X.Scale

			-- Directional input resets the engine's drag origin when the direction flips,
			-- which surfaces as a large jump in DragUDim2. Discard it and re-anchor to the
			-- current value so the knob keeps its position instead of snapping back.
			if
				lastInputMode == InputMode.Directional
				and math.abs(delta - lastDragUDim2Ref.current) > MAX_DIRECTIONAL_INPUT_DRAG_DELTA
			then
				dragStartFractionRef.current = (value:getValue() - props.range.Min) / rangeSpan - delta
				lastDragUDim2Ref.current = delta
				return
			end

			lastDragUDim2Ref.current = delta

			-- DragUDim2 reports the drag's translation from the press point, so add it to
			-- the fraction we seeked to on DragStart to get the absolute position.
			local fraction = math.clamp(dragStartFractionRef.current + delta, 0, 1)
			local newValue = props.range.Min + fraction * rangeSpan

			updateValue(if props.step then calculateSliderStepValue(newValue, props.step, props.range) else newValue)
		end, { props.step, props.range, lastInputMode, value, updateValue } :: { unknown })
		else React.useCallback(
				function(_rbx: UIDragDetector, position: Vector2)
					if ref.current and lastDragPosition.current then
						-- When step is enabled, use absolute position calculation for better
						-- stepping behavior instead of delta-based calculation
						if props.step and props.step > 0 then
							if lastInputMode == InputMode.Directional then
								-- Handle directional input movement by stepping one `props.step` at a time

								local pixelDisplacement = position - lastDragPosition.current
								local pixelDistanceX = math.abs(pixelDisplacement.X)
								local pixelsPerStep =
									calculatePixelsPerStep(ref.current.AbsoluteSize.X, props.step, props.range)

								-- Detect position jumps that are too large for a single frame
								-- Thumbstick movement is gradual, so anything > 2 steps is likely a position reset
								local maxExpectedMovement = pixelsPerStep * 2
								if pixelDistanceX > maxExpectedMovement then
									lastDragPosition.current = position
									return
								end

								-- Only register movement if it's at least the half the size of one step
								if pixelDistanceX < pixelsPerStep / 2 then
									return
								end

								local currentValue = value:getValue()
								local newValue =
									calculateNextStepValue(pixelDisplacement.X, currentValue, props.step, props.range)

								if newValue ~= currentValue then
									-- Only update position baseline when we actually step
									updateValue(newValue)
									lastDragPosition.current = position
								end
							else
								-- Handle normal drag movement by snapping to the nearest step
								local newValue = calculateValueFromAbsPosition(position)
								updateValue(newValue)
								lastDragPosition.current = position
							end
						else
							local length = ref.current.AbsoluteSize.Magnitude
							local delta = calculateSliderPositionDelta(position, lastDragPosition.current, length)

							lastDragPosition.current = position

							-- When using directional input (Gamepad/WASD/Arrow keys) with a Scriptable UIDragDetector,
							-- the `position` gets reset when making significant directional changes.
							-- Examples of this include going from Right -> Right+Up or Right -> Left.
							--
							-- In practice, this means that if the user moves the Slider to the right then wants to adjust
							-- and move back a bit towards the left, this will immediately jump to the center of the
							-- bar. To work around this, we discard that jump in position by making sure the delta isn't too large,
							-- then from there we receive incremental changes like normal and sliding continues to work smoothly.
							if
								lastInputMode == InputMode.Directional
								and math.abs(delta) > MAX_DIRECTIONAL_INPUT_DRAG_DELTA
							then
								return
							end

							-- Calculate the new value from the position
							local unsteppedValue = calculateValueFromAbsPosition(position)

							updateValue(unsteppedValue)
						end
					end
				end,
				{ props.step, props.range, lastInputMode, value, updateValue, calculateValueFromAbsPosition } :: { unknown }
			) :: never

	local onDragStarted = if Flags.FoundationSliderOffloadDraggingMath
		then React.useCallback(function(_rbx: UIDragDetector, inputPosition: Vector2)
			setIsDragging(true)

			if props.onDragStarted then
				props.onDragStarted()
			end

			lastDragUDim2Ref.current = 0

			local rangeSpan = props.range.Max - props.range.Min

			if lastInputMode == InputMode.Directional then
				-- Directional input has no meaningful press position, so anchor to the
				-- current value and let DragUDim2 deltas adjust it from there.
				dragStartFractionRef.current = (value:getValue() - props.range.Min) / rangeSpan
				return
			end

			-- DragUDim2 only reports movement *after* the grab, so seek to the press point
			-- here and anchor subsequent drag deltas to this fraction.
			local pressValue = if ref.current
				then calculateSliderValueFromPosition(inputPosition, ref.current, props.range)
				else props.range.Min

			dragStartFractionRef.current = (pressValue - props.range.Min) / rangeSpan

			updateValue(
				if props.step then calculateSliderStepValue(pressValue, props.step, props.range) else pressValue
			)
		end, { props.onDragStarted, props.step, props.range, lastInputMode, value, updateValue } :: { unknown })
		else React.useCallback(function(_rbx: UIDragDetector, inputPosition: Vector2)
			lastDragPosition.current = inputPosition
			setIsDragging(true)
			if props.onDragStarted then
				props.onDragStarted()
			end
		end, { props.onDragStarted }) :: never

	local onDragEnded = React.useCallback(function(_rbx: UIDragDetector, _position: Vector2)
		setIsDragging(false)
		if not Flags.FoundationSliderOffloadDraggingMath then
			lastDragPosition.current = nil
		end

		if props.onDragEnded then
			props.onDragEnded()
		end
	end, { props.onDragEnded })

	local onStateChanged = React.useCallback(function(state: ControlState)
		setControlState(state)

		if not Flags.FoundationSliderOffloadDraggingMath and state == ControlState.Pressed then
			onSeek()
		end
	end, { onSeek })

	local presentationContext = if Flags.FoundationSliderKnobSelection then usePresentationContext() else nil :: never

	if Flags.FoundationSliderOffloadDraggingMath then
		React.useEffect(function()
			local dragDetector = dragDetectorRef.current
			if not dragDetector then
				return
			end
			local connection = dragDetector:AddConstraintFunction(
				1,
				function(proposedPosition: UDim2, proposedRotation: number)
					-- Keep the seeked fraction plus the drag delta within [0, 1] so the knob
					-- stops at the ends instead of over-dragging past them.
					local base = dragStartFractionRef.current
					local clampedDelta = math.clamp(proposedPosition.X.Scale, -base, 1 - base)
					return UDim2.fromScale(clampedDelta, 0), proposedRotation
				end
			)
			return function()
				connection:Disconnect()
			end
		end, {})
	end

	local knobPosition = UDim2.fromScale(1, 0.5)
	local knobAnchorPoint = if props.isContained
		then value:map(function(currentValue: number)
			local valuePercent = (currentValue - props.range.Min) / (props.range.Max - props.range.Min)
			return Vector2.new(valuePercent, 0.5)
		end)
		else Vector2.new(0.5, 0.5)

	local hitboxHeight = if Flags.FoundationSliderBeta then getKnobSize(tokens, props.size).X.Offset else nil :: never

	local knobStroke = if Flags.FoundationSliderBeta
		then React.useMemo(function(): Types.Stroke?
			local variantKnobStroke = variant.knob.stroke
			if variantKnobStroke == nil then
				return nil
			end
			return {
				Color = variantKnobStroke.Color,
				Thickness = variantKnobStroke.Thickness,
				Transparency = blendTransparencies(
					if typeof(variantKnobStroke.Transparency) == "number" then variantKnobStroke.Transparency else nil,
					if isKnobVisible then 0 else 1
				),
			}
		end, { variant, isKnobVisible } :: { unknown })
		else nil :: never

	local customKnobSize, setCustomKnobSize
	if Flags.FoundationSliderKnobSelection then
		customKnobSize, setCustomKnobSize = React.useBinding<<Vector2>>(Vector2.zero)
	end
	local onCustomKnobSizeChanged = if Flags.FoundationSliderKnobSelection
		then React.useCallback(function(rbx: GuiObject)
			setCustomKnobSize(rbx.AbsoluteSize)
		end, {})
		else nil :: never

	return React.createElement(
		View,
		withCommonProps(
			props,
			{
				Size = UDim2.new(
					props.width,
					UDim.new(
						0,
						if Flags.FoundationSliderBeta
							then hitboxHeight
							else (variant.hitbox :: { height: number }).height
					)
				),
				GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
				stateLayer = {
					-- This element is just the hitbox so we don't actually want it to visually change
					affordance = StateLayerAffordance.None,
				},
				selectionGroup = if Flags.FoundationSliderAsSeenOnTV then DIRECTIONAL_SELECTION_GROUP else nil,
				cursor = if Flags.FoundationSliderKnobSelection then CursorType.Invisible else nil,
				onStateChanged = onStateChanged,
				isDisabled = props.isDisabled,
				ref = if Flags.FoundationSliderOffloadDraggingMath then setTrackRef else ref,
			} :: View.ViewProps
		),
		{
			DragDetector = if Flags.FoundationSliderOffloadDraggingMath
				then React.createElement("UIDragDetector", {
					ref = dragDetectorRef,
					ReferenceUIInstance = trackInstance,
					DragStyle = Enum.UIDragDetectorDragStyle.TranslateLine,
					DragAxis = Vector2.new(1, 0),
					ResponseStyle = Enum.UIDragDetectorResponseStyle.CustomScale,
					DragRelativity = Enum.UIDragDetectorDragRelativity.Absolute,
					[React.Event.DragStart] = onDragStarted,
					[React.Event.DragContinue] = onDrag,
					[React.Event.DragEnd] = onDragEnded,
					SelectionModeDragSpeed = if Flags.FoundationSliderAsSeenOnTV then UDim2.new() else nil,
					Enabled = not props.isDisabled,
				})
				else React.createElement("UIDragDetector", {
					DragStyle = Enum.UIDragDetectorDragStyle.Scriptable,
					[React.Event.DragStart] = onDragStarted :: any,
					[React.Event.DragContinue] = onDrag :: any,
					[React.Event.DragEnd] = onDragEnded :: any,
					SelectionModeDragSpeed = if Flags.FoundationSliderAsSeenOnTV then UDim2.new() else nil,
					Enabled = not props.isDisabled,
				}),

			Bar = React.createElement(View, {
				tag = variant.bar.tag,
				Size = if Flags.FoundationSliderBeta then UDim2.new(1, 0, 0, variant.bar.height) else nil,
				testId = `{props.testId}--bar`,
			}, {
				Fill = React.createElement(View, {
					tag = variant.fill.tag,
					Size = value:map(function(alpha: number)
						return UDim2.fromScale((alpha - props.range.Min) / (props.range.Max - props.range.Min), 1)
					end),
					testId = `{props.testId}--fill`,
				}, {
					SelectionCursor = if Flags.FoundationSliderKnobSelection and isSelected
						then React.createElement(View, {
							Size = if props.knob
								then customKnobSize:map(function(size: Vector2)
									return UDim2.fromOffset(size.X, size.Y)
								end)
								else getKnobSize(tokens, props.size),
							AnchorPoint = knobAnchorPoint,
							Position = knobPosition,
							testId = `{props.testId}--selection-cursor`,
						}, {
							Cursor = React.createElement(CursorComponent, {
								isVisible = true,
								cornerRadius = UDim.new(0.5, 0),
								offset = tokens.Padding.XSmall,
								borderWidth = tokens.Stroke.Thicker,
								colorNamespace = presentationContext.colorNamespace,
							}),
						})
						else nil,
					Knob = if props.knob
						then React.createElement(View, {
							tag = "size-0-0 auto-xy",
							AnchorPoint = knobAnchorPoint,
							Position = knobPosition,
							Visible = isKnobVisible,
							onAbsoluteSizeChanged = if Flags.FoundationSliderKnobSelection
								then onCustomKnobSizeChanged
								else nil,
							testId = `{props.testId}--custom-knob`,
						}, props.knob)
						else React.createElement(PresentationContext.Provider, { value = IS_INVERSE }, {
							Knob = React.createElement(Knob, {
								AnchorPoint = knobAnchorPoint,
								Position = knobPosition,
								size = props.size,
								style = if Flags.FoundationSliderBeta then knobStyle else currentMotionState.knobStyle,
								stroke = if Flags.FoundationSliderBeta then knobStroke else variant.knob.stroke,
								hasShadow = variant.knob.hasShadow,
								testId = `{props.testId}--knob`,
							}),
						}),
				}),
			}),
		}
	)
end

return React.forwardRef(Slider)
