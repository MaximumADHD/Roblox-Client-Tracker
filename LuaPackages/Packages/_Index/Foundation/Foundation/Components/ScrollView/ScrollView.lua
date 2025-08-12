local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

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
	AutomaticSize: Enum.AutomaticSize?,
	AutomaticCanvasSize: Bindable<Enum.AutomaticSize>?,
	CanvasSize: Bindable<UDim2>?,
	ScrollingDirection: Bindable<Enum.ScrollingDirection>?,
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
	isDisabled = false,
}

-- TODO: Remove when FoundationFixScrollViewBackgroundForStylingV2 is removed
local defaultTags = "gui-object-defaults"

local function ScrollView(scrollViewProps: ScrollViewProps, ref: React.Ref<GuiObject>?)
	local defaultPropsWithStyles = if not Flags.FoundationDisableStylingPolyfill
			and not Flags.FoundationFixScrollViewBackgroundForStylingV2
		then useStyledDefaults("View", scrollViewProps.tag, defaultTags, defaultProps)
		else nil
	local props = withDefaults(
		scrollViewProps,
		(
				if not Flags.FoundationDisableStylingPolyfill
						and not Flags.FoundationFixScrollViewBackgroundForStylingV2
					then defaultPropsWithStyles
					else defaultProps
			) :: typeof(defaultProps)
	)

	-- TODO: Remove when FoundationFixScrollViewBackgroundForStylingV2 is removed
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

	local viewProps: any = Cryo.Dictionary.union(props, {
		onStateChanged = onStateChanged,
		-- Special check on props.onStateChanged since we don't want state layer on all scrolling frames
		stateLayer = if props.onStateChanged or props.onActivated then props.stateLayer else { affordance = "None" },
		selection = {
			-- We don't want to show selection cursor on ScrollView because ScrollingFrame already has it
			Selectable = false,
		},

		ref = ref,
		[React.Tag] = if Flags.FoundationFixScrollViewBackgroundForStylingV2 then nil else tag,
		tag = if Flags.FoundationFixScrollViewBackgroundForStylingV2 then props.tag else nil,
	})

	viewProps.scroll = nil
	viewProps.layout = nil

	return React.createElement(View, viewProps, {
		ScrollingFrame = React.createElement(
			ScrollingFrame,
			{
				controlState = controlState,
				scrollBarVisibility = props.scroll.scrollBarVisibility,
				onCanvasPositionChanged = props.onCanvasPositionChanged,
				onAbsoluteCanvasSizeChanged = props.onAbsoluteCanvasSizeChanged,
				onAbsoluteWindowSizeChanged = props.onAbsoluteWindowSizeChanged,

				-- Scrolling props
				AutomaticSize = props.scroll.AutomaticSize,
				AutomaticCanvasSize = props.scroll.AutomaticCanvasSize,
				CanvasSize = props.scroll.CanvasSize,
				ScrollingDirection = props.scroll.ScrollingDirection,
				VerticalScrollBarInset = props.scroll.VerticalScrollBarInset,
				HorizontalScrollBarInset = props.scroll.HorizontalScrollBarInset,
				ref = props.scrollingFrameRef,
			},
			if props.children
					and props.layout ~= nil
					and props.layout.FillDirection ~= nil
				then Cryo.Dictionary.union({
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
				}, props.children)
				else props.children
		),
	})
end

return React.memo(React.forwardRef(ScrollView))
