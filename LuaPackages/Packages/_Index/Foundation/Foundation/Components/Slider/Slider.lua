local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local useBindable = require(Foundation.Utility.useBindable)
local usePointerPosition = require(Foundation.Utility.usePointerPosition)
local useLastInputMode = require(Foundation.Utility.Input.useLastInputMode)
local InputMode = require(Foundation.Utility.Input.InputMode)

local calculateSliderValueFromPosition = require(script.Parent.calculateSliderValueFromPosition)
local calculateSliderPositionDelta = require(script.Parent.calculateSliderPositionDelta)
local calculateSliderValueFromDelta = require(script.Parent.calculateSliderValueFromDelta)

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

	local lastDragPosition = React.useRef(nil :: Vector2?)
	local lastInputMode = useLastInputMode()
	local ref = React.useRef(nil :: GuiObject?)
	React.useImperativeHandle(forwardRef, function()
		return ref.current
	end, {})

	local pointerPosition = usePointerPosition(ref.current)

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
			return calculateSliderValueFromPosition(position, ref.current, props.range)
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
		lastDragPosition.current = inputPosition
		setIsDragging(true)

		if props.onDragStarted then
			props.onDragStarted()
		end
	end, { props.onDragStarted })

	local onDrag = React.useCallback(function(_rbx, position: Vector2)
		if ref.current and lastDragPosition.current then
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
			if lastInputMode == InputMode.Directional and math.abs(delta) > MAX_DIRECTIONAL_INPUT_DRAG_DELTA then
				return
			end

			-- Calculate the new value from the delta
			local newValue = calculateSliderValueFromDelta(value:getValue() :: number, delta, props.range)
			updateValue(newValue)
		end
	end, { ref, lastDragPosition, value, updateValue, lastInputMode } :: { unknown })

	local onDragEnded = React.useCallback(function()
		setIsDragging(false)
		lastDragPosition.current = nil

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

	local knobPosition = UDim2.fromScale(1, 0.5)
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
						return UDim2.fromScale((alpha - props.range.Min) / (props.range.Max - props.range.Min), 1)
					end),
					testId = "--foundation-slider-fill",
				}, {
					Knob = if props.knob
						then React.createElement(View, {
							tag = "auto-xy size-0-0",
							AnchorPoint = knobAnchorPoint,
							Position = knobPosition,
							Visible = isKnobVisible,
							testId = "--foundation-knob",
						}, props.knob)
						else React.createElement(Knob, {
							AnchorPoint = knobAnchorPoint,
							Position = knobPosition,
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
