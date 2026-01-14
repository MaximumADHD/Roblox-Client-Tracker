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

local Flags = require(Foundation.Utility.Flags)

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
	local hoveredSegmentId, setHoveredSegmentId = React.useBinding(nil :: Types.ItemId?)

	local tokens = useTokens()
	local lastHoveredRef = React.useRef(nil :: Types.ItemId?)
	local variantProps = useSegmentedControlVariants(tokens, props.size)

	local containerRef
	local overlayData
	local overlayHeight, segmentRefs, overlayPosition, overlayWidth
	local hiddenContainerSize, setHiddenContainerSize
	local onContainerSizeChange
	local computeSegmentYInset
	local onAbsoluteSizeChanged
	if Flags.FoundationAnimateSegmentedControl then
		containerRef = React.useRef(nil :: Types.ItemId?)
		overlayData = useAnimatedHighlight(props.value, (ref or containerRef) :: { current: GuiObject? })
		overlayHeight, segmentRefs, overlayPosition, overlayWidth =
			overlayData.activeItemHeight,
			overlayData.itemRefs,
			overlayData.highlightPosition,
			overlayData.highlightWidth
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
	end

	local handleStateChanged = if Flags.FoundationRemoveDividerSegmentedControl
		then nil :: never
		else React.useCallback(function(state: ControlState, id: Types.ItemId)
			if state == ControlState.Hover then
				-- When hovering over a segment one after another onStateChanged is called Hover -> Default
				-- so React batches the state change and hoveredSegmentId ends up being set as nil
				if lastHoveredRef.current ~= id then
					lastHoveredRef.current = id
					setHoveredSegmentId(id)
				end
			elseif state == ControlState.Default then
				if lastHoveredRef.current == id then
					lastHoveredRef.current = nil
					setHoveredSegmentId(nil)
				end
			end
		end, { hoveredSegmentId })

	if Flags.FoundationAnimateSegmentedControl then
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
					local dividerOrder = segmentOrder + 1

					local isLast = index == #props.segments
					local nextSegment = props.segments[index + 1]

					local isActive = segment.id == props.value
					local isNextActive = nextSegment and nextSegment.id == props.value

					return React.createElement(React.Fragment, {
						key = tostring(segment.id),
					}, {
						Segment = React.createElement(Segment, {
							id = segment.id,
							size = props.size,
							text = segment.text,
							isActive = segment.id == props.value,
							onStateChanged = if Flags.FoundationRemoveDividerSegmentedControl
								then nil :: never
								else function(state)
									handleStateChanged(state, segment.id)
								end,
							onActivated = props.onActivated,
							LayoutOrder = segmentOrder,
							testId = `{props.testId}--segment-{segment.id}`,
							ref = segmentRefs[segment.id],
						}),
						Divider = if Flags.FoundationRemoveDividerSegmentedControl or isLast
							then nil
							else React.createElement(View, {
								tag = variantProps.divider.tag,
								backgroundStyle = hoveredSegmentId:map(function(id)
									local isHovered = id == segment.id
									local isNextHovered = nextSegment and id == nextSegment.id
									local showDivider = not (isActive or isHovered or isNextActive or isNextHovered)

									if showDivider then
										return tokens.Color.Stroke.Default
									else
										return tokens.Color.None
									end
								end),
								Size = variantProps.divider.Size,
								LayoutOrder = dividerOrder,
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

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
			testId = "--foundation-segmented-control",
		}),
		Dash.map(props.segments, function(segment: Segment, index: number)
			local segmentOrder = (index - 1) * 2 + 1
			local dividerOrder = segmentOrder + 1

			local isLast = index == #props.segments
			local nextSegment = props.segments[index + 1]

			local isActive = segment.id == props.value
			local isNextActive = nextSegment and nextSegment.id == props.value

			return React.createElement(React.Fragment, {
				key = tostring(segment.id),
			}, {
				Segment = React.createElement(Segment, {
					id = segment.id,
					size = props.size,
					text = segment.text,
					isActive = segment.id == props.value,
					onActivated = props.onActivated,
					onStateChanged = if Flags.FoundationRemoveDividerSegmentedControl
						then nil :: never
						else function(state)
							handleStateChanged(state, segment.id)
						end,
					LayoutOrder = segmentOrder,
					testId = `{props.testId}--segment-{segment.id}`,
				}),
				Divider = if Flags.FoundationRemoveDividerSegmentedControl or isLast
					then nil
					else React.createElement(View, {
						tag = variantProps.divider.tag,
						backgroundStyle = hoveredSegmentId:map(function(id)
							local isHovered = id == segment.id
							local isNextHovered = nextSegment and id == nextSegment.id
							local showDivider = not (isActive or isHovered or isNextActive or isNextHovered)

							if showDivider then
								return tokens.Color.Stroke.Default
							else
								return tokens.Color.None
							end
						end),
						Size = variantProps.divider.Size,
						LayoutOrder = dividerOrder,
					}),
			})
		end)
	)
end

return React.memo(React.forwardRef(SegmentedControl))
