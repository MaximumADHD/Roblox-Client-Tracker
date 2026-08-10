local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local SegmentedControlVariant = require(Foundation.Enums.SegmentedControlVariant)
type SegmentedControlVariant = SegmentedControlVariant.SegmentedControlVariant

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
	variant: SegmentedControlVariant?,
	fillBehavior: FillBehavior?,
	-- When true, the container and segments use a fully circular radius
	isCircular: boolean?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	variant = SegmentedControlVariant.Filled,
	fillBehavior = FillBehavior.Fit,
	testId = "--foundation-segmented-control",
	ZIndex = 1,
}

local function SegmentedControl(segmentedControlProps: SegmentedControlProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(segmentedControlProps, defaultProps)
	local variant: SegmentedControlVariant = if Flags.FoundationSegmentedControlBeta
		then props.variant
		else nil :: never
	local fillBehavior: FillBehavior = if Flags.FoundationSegmentedControlBeta then props.fillBehavior else nil :: never

	local tokens = useTokens()
	local variantProps = useSegmentedControlVariants(
		tokens,
		props.size,
		if Flags.FoundationSegmentedControlBeta then variant else nil :: never,
		if Flags.FoundationSegmentedControlBeta then fillBehavior else nil :: never,
		props.isCircular
	)
	local isFill = if Flags.FoundationSegmentedControlBeta then fillBehavior == FillBehavior.Fill else nil

	local containerRef
	local overlayData
	local overlayHeight, overlayPosition, overlayWidth
	local hiddenContainerSize, setHiddenContainerSize
	local onContainerSizeChange
	local computeSegmentYInset
	local onAbsoluteSizeChanged
	containerRef = React.useRef(nil :: Types.ItemId?)

	-- Create refs for each segment (use user-provided ref if available)
	local segmentRefs
	local segmentRefsCache = React.useRef({} :: { [Types.ItemId]: React.RefObject<GuiObject?> })
	segmentRefs = React.useMemo(function()
		local cache = segmentRefsCache.current
		for _, segment in props.segments do
			if segment.ref then
				cache[segment.id] = segment.ref
			elseif not cache[segment.id] then
				cache[segment.id] = React.createRef()
			end
		end
		return cache
	end, { props.segments })

	overlayData = useAnimatedHighlight(
		props.value,
		(ref or containerRef) :: { current: GuiObject? },
		segmentRefs,
		if Flags.FoundationSegmentedControlBeta then props.size else nil,
		if Flags.FoundationSegmentedControlBeta then fillBehavior else nil
	)
	overlayHeight, overlayPosition, overlayWidth =
		overlayData.activeItemHeight, overlayData.highlightPosition, overlayData.highlightWidth
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

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = if Flags.FoundationSegmentedControlBeta and isFill then "size-full-0 auto-y" else nil,
			Size = if Flags.FoundationSegmentedControlBeta
				then if not isFill
					then hiddenContainerSize:map(function(value: Vector2)
						return UDim2.fromOffset(value.X, value.Y)
					end)
					else nil
				else hiddenContainerSize:map(function(value: Vector2)
					return UDim2.fromOffset(value.X, value.Y)
				end),
		}),
		{
			SegmentsContainer = React.createElement(
				View,
				withDefaults({
					tag = variantProps.container.tag,
					stroke = if Flags.FoundationSegmentedControlBeta then variantProps.container.stroke else nil,
					ref = ref or containerRef,
					testId = `{props.testId}--segments-container`,
				}, {
					onAbsoluteSizeChanged = onAbsoluteSizeChanged,
				}),
				Dash.map(props.segments, function(segment: Segment, index: number)
					local segmentOrder = (index - 1) * 2 + 1
					return React.createElement(React.Fragment, {
						key = tostring(segment.id),
					}, {
						Segment = React.createElement(Segment, {
							id = segment.id,
							size = props.size,
							variant = if Flags.FoundationSegmentedControlBeta then variant else nil :: never,
							fillBehavior = if Flags.FoundationSegmentedControlBeta then fillBehavior else nil :: never,
							isCircular = props.isCircular,
							text = segment.text,
							icon = segment.icon,
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
				tag = variantProps.segment.tag,
				backgroundStyle = if Flags.FoundationSegmentedControlBeta
					then tokens.Color.Shift.Shift_300
					else tokens.Color.Shift.Shift_400,
				Size = React.joinBindings({ overlayWidth, overlayHeight }):map(function(size)
					return UDim2.fromOffset(size[1], size[2])
				end),
				Position = overlayPosition:map(function(value: number)
					local yInset = computeSegmentYInset((ref or containerRef) :: { current: GuiObject })
					return UDim2.fromOffset(value, yInset)
				end),
				ZIndex = props.ZIndex + 1,
				testId = `{props.testId}--animated-overlay`,
			}),
		}
	)
end

return React.memo(React.forwardRef(SegmentedControl))
