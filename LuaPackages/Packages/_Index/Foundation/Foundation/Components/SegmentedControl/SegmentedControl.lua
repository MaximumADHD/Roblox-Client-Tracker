local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local useAnimatedHighlight = require(Foundation.Utility.useAnimatedHighlight)
local withDefaults = require(Foundation.Utility.withDefaults)

local Segment = require(script.Parent.Segment)
local useSegmentedControlVariants = require(script.Parent.useSegmentedControlVariants)
type Segment = Segment.Segment

export type SegmentedControlProps = {
	segments: { Segment },
	-- The current selected segment.
	value: Types.ItemId,
	onActivated: (id: Types.ItemId) -> (),
	size: InputSize?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	testId = "--foundation-segmented-control",
	ZIndex = 1,
}

local function SegmentedControl(segmentedControlProps: SegmentedControlProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(segmentedControlProps, defaultProps)

	local tokens = useTokens()
	local variantProps = useSegmentedControlVariants(tokens, props.size)

	local containerRef
	local overlayData
	local overlayHeight, segmentRefs, overlayPosition, overlayWidth
	local hiddenContainerSize, setHiddenContainerSize
	local onContainerSizeChange
	local computeSegmentYInset
	local onAbsoluteSizeChanged
	containerRef = React.useRef(nil :: Types.ItemId?)
	overlayData = useAnimatedHighlight(props.value, (ref or containerRef) :: { current: GuiObject? })
	overlayHeight, segmentRefs, overlayPosition, overlayWidth =
		overlayData.activeItemHeight, overlayData.itemRefs, overlayData.highlightPosition, overlayData.highlightWidth
	hiddenContainerSize, setHiddenContainerSize = React.useBinding(Vector2.new(0, 0))

	onContainerSizeChange = React.useCallback(function(frame: GuiObject)
		setHiddenContainerSize(frame.AbsoluteSize)
	end, { variantProps.container.tag })

	onAbsoluteSizeChanged = React.useCallback(function(frame: GuiObject)
		if props.onAbsoluteSizeChanged then
			props.onAbsoluteSizeChanged(frame)
		end
		onContainerSizeChange(frame)
	end, { props.onAbsoluteSizeChanged, onContainerSizeChange })

	computeSegmentYInset = React.useCallback(function(activeContainerRef: { current: GuiObject? })
		-- segments are slightly inset from the container; we need to compute this value to properly position
		-- the animated overlay
		local yInset = 0
		if activeContainerRef.current then
			local activeTab = segmentRefs[props.value].current :: GuiObject
			if activeTab then
				yInset = activeTab.AbsolutePosition.Y - activeContainerRef.current.AbsolutePosition.Y
			end
		end
		return yInset
	end, { props.value })

	return React.createElement(View, {
		Size = hiddenContainerSize:map(function(value: Vector2)
			return UDim2.fromOffset(value.X, value.Y)
		end),
		testId = "--foundation-segmented-control-container",
	}, {
		SegmentsContainer = React.createElement(
			View,
			withDefaults(
				withCommonProps(props, {
					tag = variantProps.container.tag,
					ref = ref or containerRef,
					testId = "--foundation-segmented-control",
				}),
				{
					onAbsoluteSizeChanged = onAbsoluteSizeChanged,
				}
			),
			Dash.map(props.segments, function(segment: Segment, index: number)
				local segmentOrder = (index - 1) * 2 + 1
				return React.createElement(React.Fragment, {
					key = tostring(segment.id),
				}, {
					Segment = React.createElement(Segment, {
						id = segment.id,
						size = props.size,
						text = segment.text,
						isActive = segment.id == props.value,
						onActivated = props.onActivated,
						LayoutOrder = segmentOrder,
						testId = `{props.testId}--segment-{segment.id}`,
						ref = segmentRefs[segment.id],
					}),
				})
			end)
		),
		Overlay = React.createElement(View, {
			backgroundStyle = tokens.Color.Shift.Shift_400,
			tag = variantProps.segment.tag,
			Size = React.joinBindings({ overlayWidth, overlayHeight }):map(function(size)
				return UDim2.fromOffset(size[1], size[2])
			end),
			Position = overlayPosition:map(function(value: number)
				local yInset = computeSegmentYInset((ref or containerRef) :: { current: GuiObject })
				return UDim2.fromOffset(value, yInset)
			end),
			ZIndex = props.ZIndex + 1,
			testId = "--foundation-segmented-control--animated-overlay",
		}),
	})
end

return React.memo(React.forwardRef(SegmentedControl))
