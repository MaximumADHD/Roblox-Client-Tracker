local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local useBindable = require(Foundation.Utility.useBindable)
local usePointerPosition = require(Foundation.Utility.usePointerPosition)
local useLayerCollector = require(Foundation.Utility.useLayerCollector)
local useGuiInset = require(Foundation.Utility.useGuiInset)
local Flags = require(Foundation.Utility.Flags)
local useLastInputMode = require(Foundation.Utility.Input.useLastInputMode)
local InputMode = require(Foundation.Utility.Input.InputMode)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Visibility = require(Foundation.Enums.Visibility)
type Visibility = Visibility.Visibility

local SliderVariant = require(Foundation.Enums.SliderVariant)
type SliderVariant = SliderVariant.SliderVariant

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local useTokens = require(Foundation.Providers.Style.useTokens)
local useSliderVariants = require(Foundation.Components.Slider.useSliderVariants)
local useSliderMotionStates = require(Foundation.Components.Slider.useSliderMotionStates)
local Knob = require(Foundation.Components.Knob)

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
}

local function Slider(sliderProps: SliderProps, forwardRef: React.Ref<GuiObject>?)
	local props = withDefaults(sliderProps, defaultProps)
	local tokens = useTokens()
	local controlState, setControlState = React.useState(ControlState.Initialize :: ControlState)
	local isDragging, setIsDragging = React.useState(false)
	local isKnobVisible, setIsKnobVisible = React.useState(false)
	local value = useBindable(props.value)

	local lastDragPosition = if Flags.FoundationSliderDirectionalInputSupport()
		then React.useRef(nil :: Vector2?)
		else nil :: never
	local lastInputMode = if Flags.FoundationSliderDirectionalInputSupport then useLastInputMode() else nil :: never

	local ref = React.useRef(nil :: GuiObject?)
	React.useImperativeHandle(forwardRef, function()
		return ref.current
	end, {})

	local pointerPosition = usePointerPosition(ref.current)
	local guiInset = if Flags.FoundationSliderDirectionalInputSupport() then nil :: never else useGuiInset()
	local layerCollector = if Flags.FoundationSliderDirectionalInputSupport()
		then nil :: never
		else useLayerCollector(ref.current)

	local variant = useSliderVariants(tokens, props.size, props.variant)
	local motionStates = useSliderMotionStates(variant.knob.style, variant.knob.dragStyle)

	-- Determine current motion state based on visibility and interaction
	local currentMotionState = React.useMemo(function()
		if not isKnobVisible then
			return motionStates.Hidden
		end
		return if isDragging then motionStates.Dragging else motionStates.Idle
	end, { tokens :: any, isKnobVisible, isDragging, motionStates })

	React.useEffect(function()
		if props.knobVisibility :: Visibility == Visibility.None then
			setIsKnobVisible(false)
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
	end, { props.knobVisibility :: any, controlState, isDragging })

	local calculateValueFromAbsPosition = React.useCallback(function(position: Vector2)
		if ref.current then
			if Flags.FoundationSliderOrientationImprovement then
				local orientation = ref.current.AbsoluteRotation
				local sliderFrame = ref.current

				local length = sliderFrame.AbsoluteSize.Magnitude
				local centerPoint = sliderFrame.AbsolutePosition + sliderFrame.AbsoluteSize * 0.5

				local radians = math.rad(orientation)
				local unit = Vector2.new(math.cos(radians), math.sin(radians))

				local dotProduct = (position - centerPoint):Dot(unit)
				local percentage = dotProduct / length + 0.5
				local clampedPercent = math.clamp(percentage, 0, 1)

				local rangeSpan = props.range.Max - props.range.Min
				return clampedPercent * rangeSpan + props.range.Min
			else
				local bounds = NumberRange.new(
					ref.current.AbsolutePosition.X,
					ref.current.AbsolutePosition.X + ref.current.AbsoluteSize.X
				)
				local valueAsPercent = (position.X - bounds.Min) / (bounds.Max - bounds.Min)
				local newValue = valueAsPercent * props.range.Max
				return math.clamp(newValue, props.range.Min, props.range.Max)
			end
		else
			return 0
		end
	end, { ref, props.range } :: { unknown })

	local updateValue = React.useCallback(function(newValue: number)
		if newValue ~= value:getValue() then
			if props.onValueChanged then
				props.onValueChanged(newValue)
			end
		end
	end, { value, props.onValueChanged } :: { unknown })

	local onSeek = React.useCallback(function()
		local newValue = calculateValueFromAbsPosition(pointerPosition:getValue())
		updateValue(newValue)
	end, { calculateValueFromAbsPosition, pointerPosition, updateValue } :: { unknown })

	local onDragStarted = React.useCallback(function(_rbx, inputPosition: Vector2)
		if Flags.FoundationSliderDirectionalInputSupport() then
			lastDragPosition.current = inputPosition
		end
		setIsDragging(true)

		if props.onDragStarted then
			props.onDragStarted()
		end
	end, { props.onDragStarted })

	local onDrag = if Flags.FoundationSliderDirectionalInputSupport()
		then React.useCallback(function(_rbx, position: Vector2)
			if ref.current and lastDragPosition.current then
				local length = ref.current.AbsoluteSize.Magnitude
				local delta = (position - lastDragPosition.current).X / length

				lastDragPosition.current = position

				-- When using directional input (Gamepad/WASD/Arrow keys) with a
				-- Scriptable UIDragDetector, the `position` gets reset when
				-- making significant directional changes. Examples of this
				-- include going from Right -> Right+Up or Right -> Left.
				--
				-- In practice, this means that if the user moves the Slider to
				-- the right then wants to adjust and move back a bit towards
				-- the left, this will immediately jump to the center of the
				-- bar. To work around this, we discard that jump in position by
				-- making sure the delta isn't too large, then from there we
				-- receive incremental changes like normal and sliding continues
				-- to work smoothly.
				if lastInputMode == InputMode.Directional and math.abs(delta) > MAX_DIRECTIONAL_INPUT_DRAG_DELTA then
					return
				end

				local current = value:getValue() :: number
				local newValue = math.clamp(current + delta, props.range.Min, props.range.Max)

				updateValue(newValue)
			end
		end, { ref, lastDragPosition, value, updateValue, lastInputMode } :: { unknown })
		else React.useCallback(function(_rbx, position: Vector2)
			--[[
				To get dragging working correctly in the app we need to shift the
				position over by the left/right GuiInsets

				When testing with Studio or on-device the drag position passed in
				from `DragContinue` was offset by 64px. It turns out this is because
				the system bar and the universal app are two separate containers, and
				the UA container is offset by GuiInset, so its AbsolutePosition
				starts 64px shifted to the right but is still 0.
			]]
			local guiInsets = if Flags.FoundationDisableDragPositionAdjustmentForGuiInsets
				then Vector2.zero
				else (if layerCollector
						and layerCollector:IsA("ScreenGui")
						and not layerCollector.IgnoreGuiInset
					then Vector2.new(guiInset.Width, guiInset.Height)
					else Vector2.zero)
			local newValue = calculateValueFromAbsPosition(position - guiInsets)
			updateValue(newValue)
		end, { updateValue, calculateValueFromAbsPosition, guiInset, layerCollector } :: { unknown })

	local onDragEnded = React.useCallback(function()
		setIsDragging(false)
		if Flags.FoundationSliderDirectionalInputSupport() then
			lastDragPosition.current = nil
		end

		if props.onDragEnded then
			props.onDragEnded()
		end
	end, { props.onDragEnded })

	local onStateChanged = React.useCallback(function(state: ControlState)
		setControlState(state)

		-- Only need to set this once on Pressed to jump to the right position.
		-- The UIDragDetector takes care of the rest
		if state == ControlState.Pressed then
			onSeek()
		end
	end, { onSeek })

	local knobAnchorPoint = if props.isContained
		then (value :: React.Binding<number>):map(function(currentValue: number)
			local valuePercent = (currentValue - props.range.Min) / (props.range.Max - props.range.Min)
			return Vector2.new(valuePercent, 0.5)
		end)
		else Vector2.new(0.5, 0.5)

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = UDim2.new(props.width, UDim.new(0, variant.hitbox.height)),
			GroupTransparency = if props.isDisabled then 0.5 else nil,
			stateLayer = {
				-- This element is just the hitbox so we don't actually want it to visually change
				affordance = StateLayerAffordance.None,
			},
			onStateChanged = onStateChanged,
			isDisabled = props.isDisabled,
			ref = ref,
		}),
		{
			DragDetector = React.createElement("UIDragDetector", {
				DragStyle = Enum.UIDragDetectorDragStyle.Scriptable,
				[React.Event.DragStart] = onDragStarted :: any,
				[React.Event.DragContinue] = onDrag :: any,
				[React.Event.DragEnd] = onDragEnded :: any,
				Enabled = not props.isDisabled,
			}),

			Bar = React.createElement(View, {
				tag = variant.bar.tag,
				testId = "--foundation-slider-bar",
			}, {
				Fill = React.createElement(View, {
					tag = variant.fill.tag,
					Size = (value :: React.Binding<number>):map(function(alpha: number)
						return UDim2.fromScale(alpha / props.range.Max, 1)
					end),
					testId = "--foundation-slider-fill",
				}, {
					Knob = if props.knob
						then React.createElement(View, {
							tag = "position-center-right auto-xy size-0-0",
							AnchorPoint = knobAnchorPoint,
							Visible = isKnobVisible,
							testId = "--foundation-knob",
						}, props.knob)
						else React.createElement(Knob, {
							AnchorPoint = knobAnchorPoint,
							Position = UDim2.fromScale(1, 0.5),
							size = props.size,
							style = currentMotionState.knobStyle,
							stroke = variant.knob.stroke,
							hasShadow = variant.knob.hasShadow,
							testId = "--foundation-knob",
						}),
				}),
			}),
		}
	)
end

return React.forwardRef(Slider)
