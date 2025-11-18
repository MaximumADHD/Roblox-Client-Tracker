local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local Dash = require(Packages.Dash)

local ScrollingFrame = require(script.Parent.ScrollingFrame)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withDefaults = require(Foundation.Utility.withDefaults)
local useDefaultTags = require(Foundation.Utility.useDefaultTags)
local useStyledDefaults = require(Foundation.Utility.useStyledDefaults)

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
	AutomaticSize: Bindable<Enum.AutomaticSize>?,
	AutomaticCanvasSize: Bindable<Enum.AutomaticSize>?,
	CanvasSize: Bindable<UDim2>?,
	ScrollingDirection: Bindable<Enum.ScrollingDirection>?,
	ScrollingEnabled: Bindable<boolean>?,
	VerticalScrollBarInset: Bindable<Enum.ScrollBarInset>?,
	HorizontalScrollBarInset: Bindable<Enum.ScrollBarInset>?,
	scrollBarVisibility: Bindable<Visibility>?,
}

export type ScrollViewProps = {
	scroll: Scroll?,
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
	onCanvasPositionChanged: ((instance: ScrollingFrame) -> ())?,
	onAbsoluteCanvasSizeChanged: ((instance: ScrollingFrame) -> ())?,
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
	ClipsDescendants = if Flags.FoundationScrollViewMoveClipOutside then true else nil,
	isDisabled = false,
	testId = "--foundation-scroll-view",
}

-- TODO: Remove when FoundationFixScrollViewTags is removed
local defaultTags = "gui-object-defaults"

local function ScrollView(scrollViewProps: ScrollViewProps, ref: React.Ref<GuiObject>?)
	-- Separate layout tags from other tags

	local defaultPropsWithStyles = if not Flags.FoundationDisableStylingPolyfill
		then useStyledDefaults("View", scrollViewProps.tag, defaultTags, defaultProps)
		else nil
	local props = withDefaults(
		scrollViewProps,
		(
				if not Flags.FoundationDisableStylingPolyfill then defaultPropsWithStyles else defaultProps
			) :: typeof(defaultProps)
	)

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

	local viewComponentProps = {
		onStateChanged = onStateChanged,
		-- Special check on props.onStateChanged since we don't want state layer on all scrolling frames
		stateLayer = if props.onStateChanged or props.onActivated then props.stateLayer else { affordance = "None" },
		selection = {
			-- We don't want to show selection cursor on ScrollView because ScrollingFrame already has it
			Selectable = false,
		},

		ref = ref,
		[React.Tag] = tag,
	}
	local viewProps = (
		if Flags.FoundationMigrateCryoToDash
			then Dash.union(props, viewComponentProps)
			else Cryo.Dictionary.union(props, viewComponentProps)
	)

	-- getting around stylua inconsistencies
	do
		(viewProps :: any).scroll = nil
	end
	do
		(viewProps :: any).layout = nil
	end

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

	return React.createElement(View, viewProps, {
		ScrollingFrame = React.createElement(
			ScrollingFrame,
			{
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
				ClipsDescendants = if Flags.FoundationScrollViewMoveClipOutside then false else nil,
				ScrollingDirection = props.scroll.ScrollingDirection,
				ScrollingEnabled = props.scroll.ScrollingEnabled,
				VerticalScrollBarInset = props.scroll.VerticalScrollBarInset,
				HorizontalScrollBarInset = props.scroll.HorizontalScrollBarInset,
				ref = props.scrollingFrameRef,
			},
			if props.children
					and typeof(props.children) == "table"
					and props.layout ~= nil
					and props.layout.FillDirection ~= nil
				then if Flags.FoundationMigrateCryoToDash
					then Dash.union(listChildren, props.children)
					else Cryo.Dictionary.union(listChildren, props.children)
				else props.children
		),
	})
end

return React.memo(React.forwardRef(ScrollView))
