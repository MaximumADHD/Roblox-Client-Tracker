local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)

local InputMode = require(Foundation.Utility.Input.InputMode)
type InputMode = InputMode.InputMode
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useLastInputMode = require(Foundation.Utility.Input.useLastInputMode)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local CursorType = require(Foundation.Enums.CursorType)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local Visibility = require(Foundation.Enums.Visibility)
type Visibility = Visibility.Visibility

local CursorComponent = require(Foundation.Providers.Cursor.CursorComponent)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local getKnobSize = require(Foundation.Components.Knob.getKnobSize)
local useTokens = require(Foundation.Providers.Style.useTokens)

local SliderThumb = require(Foundation.Components.Slider.SliderThumb)
local getKnobVisibility = require(script.Parent.getKnobVisibility)
local useSliderCapture = require(script.Parent.useSliderCapture)
local useSliderPointerDrag = require(script.Parent.useSliderPointerDrag)
local useSliderThumbs = require(script.Parent.useSliderThumbs)

export type InternalSliderThumbConfig = useSliderThumbs.InternalSliderThumbConfig

export type ThumbRenderState = {
	isVisible: boolean,
	isDragging: boolean,
}

export type InternalSliderProps = {
	-- Ordered from the start of the track to the end. Each thumb is bounded by
	-- its neighbors, so values must already be in ascending order.
	thumbs: { InternalSliderThumbConfig },
	onValueChanged: (thumbIndex: number, newValue: number) -> (),
	renderThumb: (thumbIndex: number, state: ThumbRenderState) -> React.ReactElement?,
	-- Track visuals, drawn beneath the thumbs and spanning the full length.
	children: React.ReactNode?,

	range: NumberRange?,
	step: number?,
	size: InputSize?,
	width: UDim?,
	orientation: Orientation?,
	isDisabled: boolean?,
	isContained: boolean?,
	knobVisibility: Visibility?,

	onDragStarted: (() -> ())?,
	onDragEnded: (() -> ())?,
} & Types.CommonProps

local defaultProps = {
	range = NumberRange.new(0, 1),
	size = InputSize.Medium,
	width = UDim.new(1, 0),
	orientation = Orientation.Horizontal,
	isDisabled = false,
	isContained = false,
	knobVisibility = Visibility.Auto,
	testId = "--foundation-internal-slider",
}

local CAPTURED_SELECTION_GROUP: Types.SelectionGroup = {
	SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
	SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
	SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
	SelectionBehaviorDown = Enum.SelectionBehavior.Stop,
}

local FOCUSED_SELECTION_GROUP: Types.SelectionGroup = {
	SelectionBehaviorLeft = Enum.SelectionBehavior.Escape,
	SelectionBehaviorRight = Enum.SelectionBehavior.Escape,
	SelectionBehaviorUp = Enum.SelectionBehavior.Escape,
	SelectionBehaviorDown = Enum.SelectionBehavior.Escape,
}

local function noop() end

local function getPosition(fraction: number, isVertical: boolean): UDim2
	return if isVertical then UDim2.fromScale(0.5, 1 - fraction) else UDim2.fromScale(fraction, 0.5)
end

local function getContainedAnchorPoint(fraction: number, isVertical: boolean): Vector2
	return if isVertical then Vector2.new(0.5, 1 - fraction) else Vector2.new(fraction, 0.5)
end

local function InternalSlider(sliderProps: InternalSliderProps, forwardRef: React.Ref<GuiObject>?)
	local props = withDefaults(sliderProps, defaultProps)
	local isVertical = props.orientation :: Orientation == Orientation.Vertical
	local tokens = useTokens()
	local presentationContext = PresentationContext.usePresentationContext()
	local lastInputMode: InputMode? = useLastInputMode()

	local ref = React.useRef<<GuiObject?>>(nil)
	React.useImperativeHandle(forwardRef, function()
		return ref.current
	end, {})

	local defaultKnobSize = getKnobSize(tokens, props.size)
	local knobSize, setKnobSize = React.useBinding(defaultKnobSize)
	local onThumbSizeChanged = React.useCallback(function(rbx: GuiObject)
		setKnobSize(UDim2.fromOffset(rbx.AbsoluteSize.X, rbx.AbsoluteSize.Y))
	end, {})

	local sliderThumbs = useSliderThumbs({
		thumbs = props.thumbs,
		range = props.range,
		step = props.step,
		onValueChanged = props.onValueChanged,
	})

	local capture = useSliderCapture({
		thumbs = props.thumbs,
		rootRef = ref,
		range = props.range,
		step = props.step,
		isVertical = isVertical,
		isDisabled = props.isDisabled,
		updateThumbValue = sliderThumbs.updateThumbValue,
		clampToNeighbors = sliderThumbs.clampToNeighbors,
	})

	local pointerDrag = useSliderPointerDrag({
		thumbs = props.thumbs,
		rootRef = ref,
		isVertical = isVertical,
		toFraction = sliderThumbs.toFraction,
		seekThumb = sliderThumbs.seekThumb,
		setActiveIndex = capture.setActiveIndex,
		onDragStarted = props.onDragStarted,
		onDragEnded = props.onDragEnded,
	})

	local isDirectionalInput = lastInputMode == InputMode.Directional and capture.isSelected
	-- The engine makes any parent of a UIDragDetector a selection target, so
	-- thumbs only carry one while the last input was not directional.
	local isThumbDragEnabled = lastInputMode ~= InputMode.Directional
	local isKnobVisible = getKnobVisibility({
		knobVisibility = props.knobVisibility,
		controlState = capture.controlState,
		isDisabled = props.isDisabled,
		isSelected = capture.isSelected,
		isDragging = pointerDrag.draggedIndex ~= nil,
	})

	local hitboxThickness = UDim.new(0, defaultKnobSize.X.Offset)
	local rootSize = if isVertical
		then UDim2.new(hitboxThickness, props.width)
		else UDim2.new(props.width, hitboxThickness)

	local children: { [string]: React.ReactNode } = {
		FocusTarget = React.createElement(
			View,
			{
				Size = UDim2.fromScale(1, 1),
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
				cursor = if capture.isCaptured then CursorType.Invisible else nil,
				onStateChanged = capture.onStateChanged,
				isDisabled = props.isDisabled,
				ref = capture.focusTargetRef,
				ZIndex = 0,
				testId = `{props.testId}--focus-target`,
			} :: View.ViewProps,
			{
				DragDetector = if isDirectionalInput
					then nil
					else React.createElement("UIDragDetector", {
						DragStyle = Enum.UIDragDetectorDragStyle.Scriptable,
						[React.Event.DragStart] = pointerDrag.onTrackDragStarted :: any,
						[React.Event.DragContinue] = pointerDrag.onTrackDrag :: any,
						[React.Event.DragEnd] = pointerDrag.onTrackDragEnded :: any,
						SelectionModeDragSpeed = UDim2.new(),
						Enabled = not props.isDisabled,
					}),
			}
		),
		Track = React.createElement(React.Fragment, nil, props.children),
		SelectionCursor = if capture.isCaptured
			then React.createElement(
				View,
				{
					Size = knobSize,
					AnchorPoint = if props.isContained
						then sliderThumbs.fractions[capture.activeThumbIndex]:map(function(fraction: number)
							return getContainedAnchorPoint(fraction, isVertical)
						end)
						else Vector2.new(0.5, 0.5),
					Position = sliderThumbs.fractions[capture.activeThumbIndex]:map(function(fraction: number)
						return getPosition(fraction, isVertical)
					end),
					ZIndex = 3,
					selection = { Selectable = true },
					-- The root group's Stop only blocks leaving the group, not
					-- moving within it, so the cursor is its own group to keep
					-- directional input from reaching the focus target.
					selectionGroup = CAPTURED_SELECTION_GROUP,
					cursor = CursorType.Invisible,
					onStateChanged = noop,
					ref = capture.captureTargetRef,
					testId = `{props.testId}--selection-cursor`,
				} :: View.ViewProps,
				{
					Cursor = React.createElement(CursorComponent, {
						isVisible = true,
						cornerRadius = UDim.new(0.5, 0),
						offset = tokens.Padding.XSmall,
						borderWidth = tokens.Stroke.Thicker,
						colorNamespace = presentationContext.colorNamespace,
					}),
				}
			)
			else nil,
	}

	for index, thumb in props.thumbs do
		children[`Thumb{index}`] = React.createElement(SliderThumb, {
			trackRef = ref,
			fraction = sliderThumbs.fractions[index],
			isVertical = isVertical,
			Visible = isKnobVisible,
			isDisabled = props.isDisabled,
			isDragEnabled = isThumbDragEnabled,
			isContained = props.isContained,
			knob = props.renderThumb(index, {
				isVisible = isKnobVisible,
				isDragging = pointerDrag.draggedIndex == index,
			}),
			onSeek = function(fraction: number)
				sliderThumbs.seekThumb(index, fraction)
			end,
			getBounds = function()
				return sliderThumbs.getThumbBounds(index)
			end,
			onDragStarted = function()
				pointerDrag.onThumbDragStarted(index)
			end,
			onDragEnded = pointerDrag.onThumbDragEnded,
			onAbsoluteSizeChanged = onThumbSizeChanged,
			testId = thumb.testId,
		})
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = rootSize,
			GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
			selectionGroup = if capture.isCaptured then CAPTURED_SELECTION_GROUP else FOCUSED_SELECTION_GROUP,
			ref = ref,
		}),
		children
	)
end

return React.forwardRef(InternalSlider)
