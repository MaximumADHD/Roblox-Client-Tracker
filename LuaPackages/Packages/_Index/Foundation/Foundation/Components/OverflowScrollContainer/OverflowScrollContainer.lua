local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local ControlState = require(Foundation.Enums.ControlState)
local InputSize = require(Foundation.Enums.InputSize)
local Scrim = require(script.Parent.Scrim)
local ScrollView = require(Foundation.Components.ScrollView)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Visibility = require(Foundation.Enums.Visibility)
local useClippingRect = require(script.Parent.useClippingRect)
local usePreferredInput = require(Foundation.Utility.usePreferredInput)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type InputSize = InputSize.InputSize
type ControlState = ControlState.ControlState

export type OverflowScrollContainerProps = {
	size: InputSize?,
	-- Height at the bottom of the container that the scrims leave uncovered, for consumers that
	-- draw a rule there and need it to stay unbroken across the scrims.
	scrimBottomInset: number?,
	children: React.ReactNode?,
	-- Debug hooks for the story, which pins the scrims and the input treatment.
	forceHovered: boolean?,
	forceScrimsVisible: boolean?,
	forcePreferredInput: Enum.PreferredInput?,
} & Types.CommonProps

-- A scrim click advances by most of the viewport rather than all of it, leaving a sliver of the
-- previous content on screen to anchor against.
local SCROLL_OVERLAP_FACTOR = 0.8

local defaultProps = {
	size = InputSize.Medium,
	scrimBottomInset = 0,
	testId = "--foundation-overflow-scroll-container",
}

local function OverflowScrollContainer(
	overflowScrollContainerProps: OverflowScrollContainerProps,
	ref: React.Ref<GuiObject>?
): React.ReactNode
	local props = withDefaults(overflowScrollContainerProps, defaultProps)
	local tokens = useTokens()
	local isEndVisible, setIsEndVisible = React.useState(false)
	local isStartVisible, setIsStartVisible = React.useState(false)
	local isContentHovered, setIsContentHovered = React.useState(false)
	local isStartHovered, setIsStartHovered = React.useState(false)
	local isEndHovered, setIsEndHovered = React.useState(false)
	local isHovered = props.forceHovered or isContentHovered or isStartHovered or isEndHovered
	local resolvedPreferredInput = usePreferredInput()
	local preferredInput = props.forcePreferredInput or resolvedPreferredInput
	local scrollingFrameRef = React.useRef<<ScrollingFrame?>>(nil)
	local clippingRect = useClippingRect(scrollingFrameRef)
	-- A binding rather than state so a resize flows to the scrims without re-rendering the container.
	local rowHeight: React.Binding<number>, setRowHeight = React.useBinding(0)

	local setGoal = ReactOtter.useMotor(0, function(value)
		local scrollingFrame = scrollingFrameRef.current
		if not scrollingFrame then
			return
		end
		scrollingFrame.CanvasPosition = Vector2.new(value, 0)
	end)

	local updateOverflow = React.useCallback(function(scrollingFrame: ScrollingFrame)
		setRowHeight(scrollingFrame.AbsoluteWindowSize.Y)

		if scrollingFrame.AbsoluteWindowSize.X == 0 then
			return
		end

		setIsStartVisible(scrollingFrame.CanvasPosition.X > 0)
		setIsEndVisible(
			(scrollingFrame.AbsoluteWindowSize.X + scrollingFrame.CanvasPosition.X)
				< (scrollingFrame.AbsoluteCanvasSize.X - 1)
		)
	end, {})

	local moveScrollInDirection = React.useCallback(function(direction: number)
		local scrollingFrame = scrollingFrameRef.current
		if not scrollingFrame then
			return
		end

		local maxCanvasPosition = math.max(scrollingFrame.AbsoluteCanvasSize.X - scrollingFrame.AbsoluteWindowSize.X, 0)
		local scrollStep = scrollingFrame.AbsoluteWindowSize.X * SCROLL_OVERLAP_FACTOR
		local snapThreshold = scrollingFrame.AbsoluteWindowSize.X * (1 - SCROLL_OVERLAP_FACTOR)
		local nextCanvasPosition = scrollingFrame.CanvasPosition.X + direction * scrollStep

		if direction > 0 and maxCanvasPosition - nextCanvasPosition <= snapThreshold then
			nextCanvasPosition = maxCanvasPosition
		elseif direction < 0 and nextCanvasPosition <= snapThreshold then
			nextCanvasPosition = 0
		end

		nextCanvasPosition = math.clamp(nextCanvasPosition, 0, maxCanvasPosition)
		setGoal(Otter.ease(nextCanvasPosition, {
			duration = tokens.Time.Time_200,
			easingStyle = Enum.EasingStyle.Quad,
			startingValue = scrollingFrame.CanvasPosition.X,
		}))
	end, { tokens })

	local onOverflowStartActivated = React.useCallback(function()
		moveScrollInDirection(-1)
	end, { moveScrollInDirection })

	local onOverflowEndActivated = React.useCallback(function()
		moveScrollInDirection(1)
	end, { moveScrollInDirection })

	local onContentStateChanged = React.useCallback(function(state: ControlState)
		setIsContentHovered(state == ControlState.Hover or state == ControlState.Pressed)
	end, {})

	local onStartStateChanged = React.useCallback(function(state: ControlState)
		setIsStartHovered(state == ControlState.Hover or state == ControlState.Pressed)
	end, {})

	local onEndStateChanged = React.useCallback(function(state: ControlState)
		setIsEndHovered(state == ControlState.Hover or state == ControlState.Pressed)
	end, {})

	React.useEffect(function()
		if scrollingFrameRef.current then
			updateOverflow(scrollingFrameRef.current)
		end
	end, {})

	return React.createElement(
		View,
		withCommonProps(props, {
			ref = ref,
			tag = "size-full-0 auto-y",
		}),
		{
			Scroll = React.createElement(ScrollView, {
				tag = "size-full-0 auto-y",
				ClipsDescendants = false,
				onStateChanged = onContentStateChanged,
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
				onCanvasPositionChanged = updateOverflow,
				onAbsoluteCanvasSizeChanged = updateOverflow,
				onAbsoluteWindowSizeChanged = updateOverflow,
				scrollingFrameRef = scrollingFrameRef,
				selection = {
					Selectable = false,
				},
				layout = {
					FillDirection = Enum.FillDirection.Horizontal,
				},
				scroll = {
					AutomaticSize = Enum.AutomaticSize.Y,
					AutomaticCanvasSize = Enum.AutomaticSize.X,
					CanvasSize = UDim2.fromScale(0, 1),
					ScrollingDirection = Enum.ScrollingDirection.X,
					scrollBarVisibility = Visibility.None,
				},
				testId = `{props.testId}--scroll`,
			}, props.children),

			ScrimLayer = React.createElement(View, {
				tag = "row flex-between",
				Position = clippingRect:map(function(rect: Rect)
					return UDim2.fromOffset(rect.Min.X, 0)
				end),
				-- Scale height keeps the layer out of the root's automatic sizing, which would
				-- otherwise measure this layer to decide the height it is measured against.
				Size = clippingRect:map(function(rect: Rect)
					return UDim2.new(0, rect.Max.X - rect.Min.X, 1, -props.scrimBottomInset)
				end),
				ZIndex = 2,
				testId = `{props.testId}--scrim-layer`,
			}, {
				ScrimStart = React.createElement(Scrim, {
					LayoutOrder = 1,
					size = props.size :: InputSize,
					rowHeight = rowHeight,
					alignment = Enum.HorizontalAlignment.Left,
					isHovered = isHovered,
					preferredInput = preferredInput,
					isVisible = props.forceScrimsVisible or isStartVisible,
					onActivated = onOverflowStartActivated,
					onStateChanged = onStartStateChanged,
					testId = `{props.testId}--scrim-start`,
				}),

				ScrimEnd = React.createElement(Scrim, {
					LayoutOrder = 2,
					size = props.size :: InputSize,
					rowHeight = rowHeight,
					alignment = Enum.HorizontalAlignment.Right,
					isHovered = isHovered,
					preferredInput = preferredInput,
					isVisible = props.forceScrimsVisible or isEndVisible,
					onActivated = onOverflowEndActivated,
					onStateChanged = onEndStateChanged,
					testId = `{props.testId}--scrim-end`,
				}),
			}),
		}
	)
end

return React.memo(React.forwardRef(OverflowScrollContainer))
