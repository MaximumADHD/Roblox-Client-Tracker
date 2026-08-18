local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ScrollView = require(Foundation.Components.ScrollView)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
type Bindable<T> = Types.Bindable<T>
type CommonProps = Types.CommonProps
type SizeConstraint = Types.SizeConstraint
type Tags = Types.Tags

type ScrollViewProps = {
	ref: React.Ref<GuiObject>?,
	sizeConstraint: SizeConstraint?,
	tag: Tags?,
	InputSink: Bindable<any>?,
	-- Forwarded to ScrollView so callers can scroll the open menu (e.g. to the selection).
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
}

export type ScrollContainerProps = ScrollViewProps & CommonProps

export type BaseMenuScrollContainerProps = {
	-- Resolved binding of the height after which the container starts scrolling.
	maxHeight: React.Binding<number?>,
	-- Whether the container auto-sizes its width. Defaults to true (content-sized width).
	autoSize: React.Binding<boolean>?,
	-- Fixed width used when `autoSize` is false.
	width: React.Binding<UDim?>?,
	-- Props forwarded to the underlying ScrollView.
	scrollViewProps: ScrollContainerProps,
	children: React.ReactNode,
}

local function computeAutomaticSize(values: { autoSize: boolean, isOverMaxHeight: boolean }): Enum.AutomaticSize
	return if values.autoSize
		then if values.isOverMaxHeight then Enum.AutomaticSize.X else Enum.AutomaticSize.XY
		else if values.isOverMaxHeight then Enum.AutomaticSize.None else Enum.AutomaticSize.Y
end

local function computeSize(values: {
	autoSize: boolean,
	isOverMaxHeight: boolean,
	maxHeight: number?,
	width: UDim?,
}): UDim2?
	local y = if values.isOverMaxHeight and values.maxHeight then UDim.new(0, values.maxHeight) else UDim.new()
	return if values.autoSize then UDim2.new(UDim.new(), y) else UDim2.new(values.width or UDim.new(), y)
end

--[[
	Wraps menu content in a ScrollView that grows to fit its content until it reaches `maxHeight`,
	after which it caps its height and scrolls vertically.

	A ScrollingFrame with `AutomaticSize.Y` grows to its full content height and therefore never
	scrolls, so the height is measured here and the frame is explicitly capped once content exceeds
	`maxHeight`. Shared by the root menu (`BaseMenu`) and submenus (`BaseMenuItem`).
]]
local function BaseMenuScrollContainer(props: BaseMenuScrollContainerProps): React.ReactNode
	local defaultAutoSize = React.useBinding(true)
	local defaultWidth = React.useBinding(nil :: UDim?)
	local autoSize = props.autoSize or defaultAutoSize
	local width = props.width or defaultWidth
	local maxHeight = props.maxHeight

	local canvasSize, setCanvasSize = React.useBinding(UDim2.fromScale(0, 1))

	local isOverMaxHeight = React.useMemo(function()
		return React.joinBindings({ canvasSize = canvasSize, maxHeight = maxHeight })
			:map(function(values: { canvasSize: UDim2, maxHeight: number? })
				return values.maxHeight ~= nil and values.canvasSize.Y.Offset > values.maxHeight
			end)
	end, { maxHeight })

	local onContentAbsoluteSizeChanged = React.useCallback(function(frame: GuiObject)
		return setCanvasSize(UDim2.fromOffset(frame.AbsoluteSize.X, frame.AbsoluteSize.Y))
	end, { setCanvasSize })

	local automaticSize = React.joinBindings({ autoSize = autoSize, isOverMaxHeight = isOverMaxHeight })
		:map(computeAutomaticSize)

	return React.createElement(
		ScrollView,
		withCommonProps(props.scrollViewProps, {
			ref = props.scrollViewProps.ref,
			sizeConstraint = props.scrollViewProps.sizeConstraint,
			tag = props.scrollViewProps.tag,
			InputSink = props.scrollViewProps.InputSink,
			scrollingFrameRef = props.scrollViewProps.scrollingFrameRef,
			scroll = {
				-- Setting XY works almost everywhere except the scroll itself, making the scroll container to be full content height.
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				AutomaticSize = automaticSize,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				CanvasSize = canvasSize,
			},
			AutomaticSize = automaticSize,
			Size = React.joinBindings({
				autoSize = autoSize,
				width = width,
				isOverMaxHeight = isOverMaxHeight,
				maxHeight = maxHeight,
			}):map(computeSize),
		}),
		React.createElement(View, {
			tag = "col size-full-0 auto-y",
			onAbsoluteSizeChanged = onContentAbsoluteSizeChanged,
		}, props.children)
	)
end

return BaseMenuScrollContainer
