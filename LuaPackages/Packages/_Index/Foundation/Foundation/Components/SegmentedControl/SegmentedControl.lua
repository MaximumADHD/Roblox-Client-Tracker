local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local useSegmentedControlVariants = require(script.Parent.useSegmentedControlVariants)
local Segment = require(script.Parent.Segment)
type Segment = Segment.Segment

export type SegmentedControlProps = {
	segments: { Segment },
	value: Types.ItemId,
	onActivated: (id: Types.ItemId) -> (),
	size: InputSize?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
}

local function SegmentedControl(segmentedControlProps: SegmentedControlProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(segmentedControlProps, defaultProps)
	local hoveredSegmentId, setHoveredSegmentId = React.useBinding(nil :: Types.ItemId?)

	local tokens = useTokens()
	local lastHoveredRef = React.useRef(nil :: Types.ItemId?)
	local variantProps = useSegmentedControlVariants(tokens, props.size)

	local handleStateChanged = React.useCallback(function(state: ControlState, id: Types.ItemId)
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
					onStateChanged = function(state)
						handleStateChanged(state, segment.id)
					end,
					onActivated = props.onActivated,
					LayoutOrder = segmentOrder,
					testId = `--foundation-segmented-control-segment --foundation-segmented-control-segment-${segment.id}`,
				}),
				Divider = if isLast
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
