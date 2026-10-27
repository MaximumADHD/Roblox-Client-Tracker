local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ScrollingFrame = require(script.Parent.ScrollingFrame)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useDefaultTags = require(Foundation.Utility.useDefaultTags)
local withDefaults = require(Foundation.Utility.withDefaults)

local useStyleTags = require(Foundation.Providers.Style.useStyleTags)

local Visibility = require(Foundation.Enums.Visibility)
type Visibility = Visibility.Visibility

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>
type ListLayout = Types.ListLayout
type GuiObjectProps = Types.GuiObjectProps
type CommonProps = Types.CommonProps

export type Scroll = {
	-- **Engine**: Which axes of the scrolling frame size to content.
	AutomaticSize: Bindable<Enum.AutomaticSize>?,
	-- **Engine**: Which axes the canvas sizes to its content.
	AutomaticCanvasSize: Bindable<Enum.AutomaticSize>?,
	-- **Engine**: Size of the scrollable canvas.
	CanvasSize: Bindable<UDim2>?,
	-- **Engine**: Axes that can be scrolled.
	ScrollingDirection: Bindable<Enum.ScrollingDirection>?,
	-- **Engine**: Whether scrolling accepts input.
	ScrollingEnabled: Bindable<boolean>?,
	-- **Engine**: How the vertical scrollbar affects canvas insets.
	VerticalScrollBarInset: Bindable<Enum.ScrollBarInset>?,
	-- **Engine**: How the horizontal scrollbar affects canvas insets.
	HorizontalScrollBarInset: Bindable<Enum.ScrollBarInset>?,
	-- Scrollbar visibility. `None` hides it, `Always` keeps it shown, and `Auto` shows it while hovered or scrolling. Defaults to `Auto`.
	scrollBarVisibility: Bindable<Visibility>?,
}

export type ScrollViewProps = {
	-- ScrollingFrame configuration such as canvas size and scrollbar visibility.
	scroll: Scroll?,
	-- Ref forwarded to the inner ScrollingFrame.
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
	-- Called when the canvas position changes.
	onCanvasPositionChanged: ((instance: ScrollingFrame) -> ())?,
	-- Called when the absolute canvas size changes.
	onAbsoluteCanvasSizeChanged: ((instance: ScrollingFrame) -> ())?,
	-- Called when the absolute window size changes.
	onAbsoluteWindowSizeChanged: ((instance: ScrollingFrame) -> ())?,
} & GuiObjectProps & CommonProps

local defaultProps = {
	layout = {
		SortOrder = Enum.SortOrder.LayoutOrder,
	} :: ListLayout,
	scroll = {
		scrollBarVisibility = Visibility.Auto,
	} :: Scroll,
	AutoLocalize = false,
	BorderSizePixel = 0,
	ClipsDescendants = true,
	isDisabled = false,
	testId = "--foundation-scroll-view",
}

-- TODO: Remove when FoundationFixScrollViewTags is removed
local defaultTags = "gui-object-defaults"

local function ScrollView(scrollViewProps: ScrollViewProps, ref: React.Ref<GuiObject>?)
	-- Separate layout tags from other tags

	local props = withDefaults(scrollViewProps, defaultProps)

	-- TODO: Remove when FoundationFixScrollViewTags is removed
	local tagsWithDefaults = useDefaultTags(props.tag, defaultTags)
	local tag = useStyleTags(tagsWithDefaults)
	-- end of code for removal

	local controlState, setControlState = React.useState(ControlState.Initialize :: ControlState)

	local function onStateChanged(state: ControlState)
		setControlState(state)
		if props.onStateChanged ~= nil then
			props.onStateChanged(state)
		end
	end

	local viewProps: any = table.clone(props)
	viewProps.onStateChanged = onStateChanged
	viewProps.stateLayer = if props.onStateChanged or props.onActivated
		then props.stateLayer
		else { affordance = "None" }
	viewProps.selection = {
		Selectable = false,
	}
	viewProps.ref = ref
	viewProps[React.Tag] = tag
	viewProps.scroll = nil
	viewProps.layout = nil

	local listChildren = {
		ListLayout = React.createElement("UIListLayout", {
			FillDirection = props.layout.FillDirection,
			ItemLineAlignment = props.layout.ItemLineAlignment,
			HorizontalAlignment = props.layout.HorizontalAlignment,
			HorizontalFlex = props.layout.HorizontalFlex,
			VerticalAlignment = props.layout.VerticalAlignment,
			VerticalFlex = props.layout.VerticalFlex,
			Padding = props.layout.Padding,
			SortOrder = props.layout.SortOrder,
			Wraps = props.layout.Wraps,
		}),
	}

	local scrollingFrameChildren: any
	if
		props.children
		and typeof(props.children) == "table"
		and props.layout ~= nil
		and props.layout.FillDirection ~= nil
	then
		scrollingFrameChildren = listChildren
		for key, value in props.children :: any do
			scrollingFrameChildren[key] = value
		end
	else
		scrollingFrameChildren = props.children
	end

	return React.createElement(View, viewProps, {
		ScrollingFrame = React.createElement(ScrollingFrame, {
			controlState = controlState,
			selection = props.selection,
			scrollBarVisibility = props.scroll.scrollBarVisibility,
			onCanvasPositionChanged = props.onCanvasPositionChanged,
			onAbsoluteCanvasSizeChanged = props.onAbsoluteCanvasSizeChanged,
			onAbsoluteWindowSizeChanged = props.onAbsoluteWindowSizeChanged,

			-- Scrolling props
			AutomaticSize = props.scroll.AutomaticSize,
			AutomaticCanvasSize = props.scroll.AutomaticCanvasSize,
			CanvasSize = props.scroll.CanvasSize,
			ClipsDescendants = false,
			ScrollingDirection = props.scroll.ScrollingDirection,
			ScrollingEnabled = props.scroll.ScrollingEnabled,
			VerticalScrollBarInset = props.scroll.VerticalScrollBarInset,
			HorizontalScrollBarInset = props.scroll.HorizontalScrollBarInset,
			ref = props.scrollingFrameRef,
		}, scrollingFrameChildren),
	})
end

return React.memo(React.forwardRef(ScrollView))
