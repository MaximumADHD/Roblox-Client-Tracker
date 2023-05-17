-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Lists/VirtualizedList.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow
 * @format
 ]]
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local console = LuauPolyfill.console
type Array<T> = LuauPolyfill.Array<T>
type Map<T, U> = LuauPolyfill.Map<T, U>
type Object = LuauPolyfill.Object
type Set<T> = LuauPolyfill.Set<T>

-- ROBLOX deviation: UIListLayout limit
local BIG_INT = 999999999

-- ROBLOX deviation: unavailable types
type ReadOnly<T> = T

-- ROBLOX deviation: helper method. indexes start at 1, toJSBoolean will fail to assert truthiness
local function isIndexTruthy(index: number?)
	return index ~= nil and index ~= 1
end

local Batchinator = require(srcWorkspace.Interaction.Batchinator)
type Batchinator = Batchinator.Batchinator
local FillRateHelper = require(script.Parent.FillRateHelper)
type FillRateHelper = FillRateHelper.FillRateHelper

-- local ReactNative = require("../Renderer/shims/ReactNative")
local ReactNative = {
	findNodeHandle = function(componentOrHandle)
		warn("ReactNative.findNodeHandle is not implemented")
	end,
}
-- ROBLOX FIXME: RefreshControl not implemented
-- local RefreshControl = require("../Components/RefreshControl/RefreshControl")
local RefreshControl

local ScrollView = require(srcWorkspace.Components.ScrollView.ScrollView)
local StyleSheet = require(srcWorkspace.StyleSheet.StyleSheet)

local View = require(srcWorkspace.Components.View.View)

local ViewabilityHelper = require(script.Parent.ViewabilityHelper)
type ViewabilityHelper = ViewabilityHelper.ViewabilityHelper

-- ROBLOX deviation: not implemented
-- local flattenStyle = require("../StyleSheet/flattenStyle")
local flattenStyle = function(...)
	-- ROBLOX comment: "flattenStyle is not implemented"
	return {} :: Object
end
local infoLog = require(srcWorkspace.Utilities.infoLog)
local invariant = require(srcWorkspace.jsUtils.invariant)

local VirtualizeUtilsModule = require(script.Parent.VirtualizeUtils)
local defaultKeyExtractor = VirtualizeUtilsModule.keyExtractor
local computeWindowedRenderLimits = VirtualizeUtilsModule.computeWindowedRenderLimits

local React = require(Packages.React)
type React_ComponentType<P> = React.ComponentType<P>
-- ROBLOX deviation: using typescript type for React Element
type React_Element<P = Object, T = any> = React.ReactElement<P, T>
type React_ElementConfig<T> = React.ElementConfig<T>
type React_ElementRef<C> = React.ElementRef<C>
type React_Node = React.Node

local ScrollViewModule = require(srcWorkspace.Components.ScrollView.ScrollView)
type ScrollResponderType = ScrollViewModule.ScrollResponderType
-- ROBLOX deviation START: type not available
-- local StyleSheetModule = require(script.Parent.Parent.StyleSheet.StyleSheet)
-- type ViewStyleProp = StyleSheetModule.ViewStyleProp
type ViewStyleProp = Object
-- ROBLOX deviation END
type ViewabilityConfig = ViewabilityHelper.ViewabilityConfig
type ViewToken = ViewabilityHelper.ViewToken
type ViewabilityConfigCallbackPair = ViewabilityHelper.ViewabilityConfigCallbackPair
local VirtualizedListContextModule = require(script.Parent.VirtualizedListContext)
local VirtualizedListCellContextProvider = VirtualizedListContextModule.VirtualizedListCellContextProvider
local VirtualizedListContext = VirtualizedListContextModule.VirtualizedListContext
local VirtualizedListContextProvider = VirtualizedListContextModule.VirtualizedListContextProvider
type ChildListState = VirtualizedListContextModule.ChildListState
type ListDebugInfo = VirtualizedListContextModule.ListDebugInfo

-- ROBLOX deviation: Predefine Variables
local describeNestedLists, styles, CellRenderer

-- ROBLOX deviation START: mock implementation
function RefreshControl(props)
	return React.createElement("Frame", { Name = "RCTRefreshControl" }, props.children)
end
-- ROBLOX deviation END

type Item = any

export type Separators = {
	highlight: () -> (),
	unhighlight: () -> (),
	updateProps: (select: "leading" | "trailing", newProps: Object) -> (),
}

export type RenderItemProps<ItemT> = {
	item: ItemT,
	index: number,
	separators: Separators,
}

export type RenderItemType<ItemT> = (info: RenderItemProps<ItemT>) -> React_Node

type ViewabilityHelperCallbackTuple = {
	viewabilityHelper: ViewabilityHelper,
	onViewableItemsChanged: (info: {
		viewableItems: Array<ViewToken>,
		changed: Array<ViewToken>,
	}) -> (),
} -- ROBLOX deviation: narrow type

type RequiredProps = {
	--[[*
   * The default accessor functions assume this is an Array<{key: string} | {id: string}> but you can override
   * getItem, getItemCount, and keyExtractor to handle any type of index-based data.
   ]]
	data: any?,
	--[[*
   * A generic accessor for extracting an item from any sort of data blob.
   ]]
	getItem: (data: any, index: number) -> Item?,
	--[[*
   * Determines how many items are in the data blob.
   ]]
	getItemCount: (data: any) -> number,
}

type OptionalProps = {
	renderItem: RenderItemType<Item>?,
	--[[*
   * `debug` will turn on extra logging and visual overlays to aid with debugging both usage and
   * implementation, but with a significant perf hit.
   ]]
	debug: boolean?,
	--[[*
   * DEPRECATED: Virtualization provides significant performance and memory optimizations, but fully
   * unmounts react instances that are outside of the render window. You should only need to disable
   * this for debugging purposes. Defaults to false.
   ]]
	disableVirtualization: boolean?,
	--[[*
   * A marker property for telling the list to re-render (since it implements `PureComponent`). If
   * any of your `renderItem`, Header, Footer, etc. functions depend on anything outside of the
   * `data` prop, stick it here and treat it immutably.
   ]]
	extraData: any?,
	-- e.g. height, y
	getItemLayout: ((data: any, index: number) -> {
		length: number,
		offset: number,
		index: number,
	})?,
	horizontal: boolean?,
	--[[*
   * How many items to render in the initial batch. This should be enough to fill the screen but not
   * much more. Note these items will never be unmounted as part of the windowed rendering in order
   * to improve perceived performance of scroll-to-top actions.
   ]]
	initialNumToRender: number?,
	--[[*
   * Instead of starting at the top with the first item, start at `initialScrollIndex`. This
   * disables the "scroll to top" optimization that keeps the first `initialNumToRender` items
   * always rendered and immediately renders the items starting at this initial index. Requires
   * `getItemLayout` to be implemented.
   ]]
	initialScrollIndex: number?,
	--[[*
   * Reverses the direction of scroll. Uses scale transforms of -1.
   ]]
	inverted: boolean?,
	keyExtractor: ((item: Item, index: number) -> string)?,
	--[[*
   * Each cell is rendered using this element. Can be a React Component Class,
   * or a render function. Defaults to using View.
   ]]
	CellRendererComponent: React_ComponentType<any>?,
	--[[*
   * Rendered in between each item, but not at the top or bottom. By default, `highlighted` and
   * `leadingItem` props are provided. `renderItem` provides `separators.highlight`/`unhighlight`
   * which will update the `highlighted` prop, but you can also add custom props with
   * `separators.updateProps`.
   ]]
	ItemSeparatorComponent: React_ComponentType<any>?,
	--[[*
   * Takes an item from `data` and renders it into the list. Example usage:
   *
   *     <FlatList
   *       ItemSeparatorComponent={Platform.OS !== 'android' && ({highlighted}) => (
   *         <View style={[style.separator, highlighted && {marginLeft: 0}]} />
   *       )}
   *       data={[{title: 'Title Text', key: 'item1'}]}
   *       ListItemComponent={({item, separators}) => (
   *         <TouchableHighlight
   *           onPress={() => this._onPress(item)}
   *           onShowUnderlay={separators.highlight}
   *           onHideUnderlay={separators.unhighlight}>
   *           <View style={{backgroundColor: 'white'}}>
   *             <Text>{item.title}</Text>
   *           </View>
   *         </TouchableHighlight>
   *       )}
   *     />
   *
   * Provides additional metadata like `index` if you need it, as well as a more generic
   * `separators.updateProps` function which let's you set whatever props you want to change the
   * rendering of either the leading separator or trailing separator in case the more common
   * `highlight` and `unhighlight` (which set the `highlighted: boolean` prop) are insufficient for
   * your use-case.
   ]]
	ListItemComponent: (React_ComponentType<any> | React_Element)?,
	--[[*
   * Rendered when the list is empty. Can be a React Component Class, a render function, or
   * a rendered element.
   ]]
	ListEmptyComponent: (React_ComponentType<any> | React_Element)?,
	--[[*
   * Rendered at the bottom of all the items. Can be a React Component Class, a render function, or
   * a rendered element.
   ]]
	ListFooterComponent: (React_ComponentType<any> | React_Element)?,
	--[[*
   * Styling for internal View for ListFooterComponent
   ]]
	ListFooterComponentStyle: ViewStyleProp?,
	--[[*
   * Rendered at the top of all the items. Can be a React Component Class, a render function, or
   * a rendered element.
   ]]
	ListHeaderComponent: (React_ComponentType<any> | React_Element)?,
	--[[*
   * Styling for internal View for ListHeaderComponent
   ]]
	ListHeaderComponentStyle: ViewStyleProp?,
	--[[*
   * A unique identifier for this list. If there are multiple VirtualizedLists at the same level of
   * nesting within another VirtualizedList, this key is necessary for virtualization to
   * work properly.
   ]]
	listKey: string?,
	--[[*
   * The maximum number of items to render in each incremental render batch. The more rendered at
   * once, the better the fill rate, but responsiveness may suffer because rendering content may
   * interfere with responding to button taps or other interactions.
   ]]
	maxToRenderPerBatch: number?,
	--[[*
   * Called once when the scroll position gets within `onEndReachedThreshold` of the rendered
   * content.
   ]]
	onEndReached: ((info: {
		distanceFromEnd: number,
	}) -> ())?,
	--[[*
   * How far from the end (in units of visible length of the list) the bottom edge of the
   * list must be from the end of the content to trigger the `onEndReached` callback.
   * Thus a value of 0.5 will trigger `onEndReached` when the end of the content is
   * within half the visible length of the list.
   ]]
	onEndReachedThreshold: number?,
	--[[*
   * If provided, a standard RefreshControl will be added for "Pull to Refresh" functionality. Make
   * sure to also set the `refreshing` prop correctly.
   ]]
	onRefresh: (() -> ())?,
	--[[*
   * Used to handle failures when scrolling to an index that has not been measured yet. Recommended
   * action is to either compute your own offset and `scrollTo` it, or scroll as far as possible and
   * then try again after more items have been rendered.
   ]]
	onScrollToIndexFailed: ((
		info: {
			index: number,
			highestMeasuredFrameIndex: number,
			averageItemLength: number,
		}
	) -> ())?,
	--[[*
   * Called when the viewability of rows changes, as defined by the
   * `viewabilityConfig` prop.
   ]]
	onViewableItemsChanged: ((info: {
		viewableItems: Array<ViewToken>,
		changed: Array<ViewToken>,
	}) -> ())?,
	persistentScrollbar: boolean?,
	--[[*
   * Set this when offset is needed for the loading indicator to show correctly.
   ]]
	progressViewOffset: number?,
	--[[*
   * A custom refresh control element. When set, it overrides the default
   * <RefreshControl> component built internally. The onRefresh and refreshing
   * props are also ignored. Only works for vertical VirtualizedList.
   ]]
	refreshControl: React_Element?,
	--[[*
   * Set this true while waiting for new data from a refresh.
   ]]
	refreshing: boolean?,
	--[[*
   * Note: may have bugs (missing content) in some circumstances - use at your own risk.
   *
   * This may improve scroll performance for large lists.
   ]]
	removeClippedSubviews: boolean?,
	--[[*
   * Render a custom scroll component, e.g. with a differently styled `RefreshControl`.
   ]]
	renderScrollComponent: ((props: Object) -> React_Element)?,
	--[[*
   * Amount of time between low-pri item render batches, e.g. for rendering items quite a ways off
   * screen. Similar fill rate/responsiveness tradeoff as `maxToRenderPerBatch`.
   ]]
	updateCellsBatchingPeriod: number?,
	--[[*
   * See `ViewabilityHelper` for flow type and further documentation.
   ]]
	viewabilityConfig: ViewabilityConfig?,
	--[[*
   * List of ViewabilityConfig/onViewableItemsChanged pairs. A specific onViewableItemsChanged
   * will be called when its corresponding ViewabilityConfig's conditions are met.
   ]]
	viewabilityConfigCallbackPairs: Array<ViewabilityConfigCallbackPair>?,
	--[[*
   * Determines the maximum number of items rendered outside of the visible area, in units of
   * visible lengths. So if your list fills the screen, then `windowSize={21}` (the default) will
   * render the visible screen area plus up to 10 screens above and 10 below the viewport. Reducing
   * this number will reduce memory consumption and may improve performance, but will increase the
   * chance that fast scrolling may reveal momentary blank areas of unrendered content.
   ]]
	windowSize: number?,
	--[[*
   * The legacy implementation is no longer supported.
   ]]
	-- ROBLOX comment: comment out unsupported prop
	-- legacyImplementation: nil,
	--[[
		ROBLOX DEVIATION: For maintainVisibleContentPosition, we need to be able to compare items
		to see how much we need to adjust the canvas by when adding new items. This is used in
		the BidirectionalFlatList wrapper to allow infinite scrolling when adding items to the front
		of the list.
	]]
	compareItemData: ((any, any) -> boolean)?,
	--[[
		ROBLOX DEVIATION: By default with inverted scrolling, the canvas will resize and shift
		downwards every time a new item is loaded at the end of the list. When this prop is set
		to true, the canvas will instead only resize when the list content is larger than the
		ScrollView Canvas. The length of the resize will be proportional to the windowSize prop.
		It is recommended to set this value to false if scrollbars are enabled, as the resize
		optimization causes the scrollbar positioning and size to be inaccurate relative to the
		loaded content.
	]]
	optimizeInvertedCanvasResize: boolean?,
	--[[
		ROBLOX DEVIATION: onLayout works differently in React Native than it does in ReactRoblox.
		In React Native, the onLayout callback will fire when the size of an instance changes or
		the position of an instance relative to its parent chagnes. In ReactRoblox, it is
		inefficient to check if relative position changes, so we need to force updates to layout
		when a sibling with a lower LayoutOrder changes size, which would push other items down.
	]]
	UNSTABLE_forceSiblingLayoutUpdate: boolean?,
}

type Props = React_ElementConfig<typeof(ScrollView)> & RequiredProps & OptionalProps

local _usedIndexForKey = false
local _keylessItemComponentName: string = ""

type State = {
	first: number,
	last: number,
	firstItemTracked: Object?,
	scrollPositionDelta: number,
}

--[[*
 * Default Props Helper Functions
 * Use the following helper functions for default values
 ]]
-- horizontalOrDefault(this.props.horizontal)
local function horizontalOrDefault(horizontal: boolean?)
	return if horizontal == nil then false else horizontal
end

-- initialNumToRenderOrDefault(this.props.initialNumToRenderOrDefault)
local function initialNumToRenderOrDefault(initialNumToRender: number?)
	return if initialNumToRender == nil then 10 else initialNumToRender
end

-- maxToRenderPerBatchOrDefault(this.props.maxToRenderPerBatch)
local function maxToRenderPerBatchOrDefault(maxToRenderPerBatch: number?)
	return if maxToRenderPerBatch == nil then 10 else maxToRenderPerBatch
end

-- onEndReachedThresholdOrDefault(this.props.onEndReachedThreshold)
local function onEndReachedThresholdOrDefault(onEndReachedThreshold: number?)
	return if onEndReachedThreshold == nil then 2 else onEndReachedThreshold
end

-- scrollEventThrottleOrDefault(this.props.scrollEventThrottle)
local function scrollEventThrottleOrDefault(scrollEventThrottle: number?)
	return if scrollEventThrottle == nil then 50 else scrollEventThrottle
end

-- windowSizeOrDefault(this.props.windowSize)
local function windowSizeOrDefault(windowSize: number?)
	return if windowSize == nil then 21 else windowSize
end

--[[
	ROBLOX DEVIATION: the compareItemData prop is used to check for equality between two
	items in the data prop. This is used by maintainVisibleContentPosition to resest the
	CanvasPosition to the correct item. If no prop is passed for compareItemData, this
	functionality will default to a simple equality check between two data items.
]]

local function compareItemDataOrDefault(compareItemData: ((any, any) -> boolean)?)
	return if compareItemData == nil
		then function(first, second)
			return first == second
		end
		else compareItemData
end

type VirtualizedList = {
	props: Props,
	scrollToEnd: (self: VirtualizedList, params: {
		animated: boolean?,
	}?) -> (),
	scrollToIndex: (
		self: VirtualizedList,
		params: {
			animated: boolean?,
			index: number,
			viewOffset: number?,
			viewPosition: number?,
		}
	) -> (),
	scrollToItem: (
		self: VirtualizedList,
		params: {
			animated: boolean?,
			item: Item,
			viewPosition: number?,
		}
	) -> (),
	scrollToOffset: (self: VirtualizedList, params: {
		animated: boolean?,
		offset: number,
	}) -> (),
	recordInteraction: (self: VirtualizedList) -> (),
	flashScrollIndicators: (self: VirtualizedList) -> (),
	getScrollResponder: (self: VirtualizedList) -> ScrollResponderType?,
	getScrollableNode: (self: VirtualizedList) -> number?,
	getScrollRef: (
		self: VirtualizedList
	) -> (React_ElementRef<typeof(ScrollView)> | React_ElementRef<typeof(View)> | nil),
	setNativeProps: (self: VirtualizedList, props: Object) -> (),
	_getCellKey: (self: VirtualizedList) -> string,
	_getListKey: (self: VirtualizedList) -> string,
	_getDebugInfo: (self: VirtualizedList) -> ListDebugInfo,
	_getScrollMetrics: (
	) -> {
		contentLength: number,
		dOffset: number,
		dt: number,
		offset: number,
		timestamp: number,
		velocity: number,
		visibleLength: number,
	},
	hasMore: (self: VirtualizedList) -> boolean,
	_getOutermostParentListRef: () -> any,
	_getNestedChildState: (key: string) -> ChildListState?,
	_registerAsNestedChild: (
		childList: {
			cellKey: string,
			key: string,
			ref: VirtualizedList,
			parentDebugInfo: ListDebugInfo,
		}
	) -> ChildListState?,
	_unregisterAsNestedChild: (childList: {
		key: string,
		state: ChildListState,
	}) -> (),
	state: State,
	_pushCells: (
		self: VirtualizedList,
		cells: Array<Object>,
		stickyHeaderIndices: Array<number>,
		stickyIndicesFromProps: Set<number>,
		first: number,
		last: number,
		inversionStyle: ViewStyleProp
	) -> (),
	_onUpdateSeparators: (keys: Array<string?>, newProps: Object) -> (),
	_isVirtualizationDisabled: (self: VirtualizedList) -> boolean,
	_isNestedWithSameOrientation: (self: VirtualizedList) -> boolean,
	_getSpacerKey: (isVertical: boolean) -> string,
	_keyExtractor: (self: VirtualizedList, item: Item, index: number) -> string,
	_averageCellLength: number,
	_cellKeysToChildListKeys: Map<string, Set<string>>,
	_cellRefs: Object,
	_fillRateHelper: FillRateHelper,
	_frames: Object,
	_footerLength: number,
	_hasDoneInitialScroll: boolean,
	_hasInteracted: boolean,
	_hasMore: boolean,
	_hasWarned: Object,
	_headerLength: number,
	_hiPriInProgress: boolean,
	_highestMeasuredFrameIndex: number,
	_indicesToKeys: Map<number, string>,
	_nestedChildLists: Map<string, {
		ref: VirtualizedList?,
		state: ChildListState?,
	}>,
	_offsetFromParentVirtualizedList: number,
	_prevParentOffset: number,
	_scrollMetrics: {
		contentLength: number,
		dOffset: number,
		dt: number,
		offset: number,
		timestamp: number,
		velocity: number,
		visibleLength: number,
	},
	_scrollRef: React_ElementRef<any>?,
	_sentEndForContentLength: number,
	_totalCellLength: number,
	_totalCellsMeasured: number,
	_updateCellsToRenderBatcher: Batchinator,
	_viewabilityTuples: Array<ViewabilityHelperCallbackTuple>,
	_captureScrollRef: (ref: React_ElementRef<any>?) -> (),
	_computeBlankness: (self: VirtualizedList) -> (),
	_defaultRenderScrollComponent: (props: Object) -> React_Element,
	_onCellLayout: (self: VirtualizedList, rbx: any, cellKey: string, index: number) -> (),
	_onCellUnmount: (cellKey: string) -> (),
	_triggerRemeasureForChildListsInCell: (self: VirtualizedList, cellKey: string) -> (),
	measureLayoutRelativeToContainingList: (self: VirtualizedList) -> (),
	_onLayout: (rbx: any) -> (),
	_onLayoutEmpty: (rbx: any) -> (),
	_getFooterCellKey: (self: VirtualizedList) -> string,
	_onLayoutFooter: (rbx: any) -> (),
	_onLayoutHeader: (rbx: any) -> (),
	_renderDebugOverlay: (self: VirtualizedList) -> React_Element,
	_selectLength: (
		self: VirtualizedList,
		metrics: ReadOnly<{
			height: number,
			width: number,
		}>
	) -> number,
	_selectOffset: (self: VirtualizedList, metrics: ReadOnly<{
		x: number,
		y: number,
	}>) -> number,
	_maybeCallOnEndReached: (self: VirtualizedList) -> (),
	_onContentSizeChange: (width: number, height: number) -> (),
	_convertParentScrollMetrics: (
		metrics: {
			visibleLength: number,
			offset: number,
		}
	) -> {
		contentLength: number,
		dOffset: number,
		offset: number,
		visibleLength: number,
	},
	_onScroll: (rbx: any) -> (),
	_scheduleCellsToRenderUpdate: (self: VirtualizedList) -> (),
	_onScrollBeginDrag: (rbx: any) -> (),
	_onScrollEndDrag: (rbx: any) -> (),
	_onMomentumScrollBegin: (rbx: any) -> (),
	_onMomentumScrollEnd: (rbx: any) -> (),
	_updateCellsToRender: () -> (),
	_createViewToken: (
		index: number,
		isViewable: boolean
	) -> {
		index: number?,
		isViewable: boolean,
		item: any,
		key: string,
		section: any?,
	},
	_getFrameMetricsApprox: (index: number) -> {
		length: number,
		offset: number,
		inLayout: boolean?,
	},
	_getFrameMetrics: (
		index: number
	) -> {
		length: number,
		offset: number,
		index: number,
		inLayout: boolean?,
	}?,
	_updateViewableItems: (self: VirtualizedList, data: any) -> (),
	_invertedCanvasLength: number,
}

--[[*
 * Base implementation for the more convenient [`<FlatList>`](https://reactnative.dev/docs/flatlist)
 * and [`<SectionList>`](https://reactnative.dev/docs/sectionlist) components, which are also better
 * documented. In general, this should only really be used if you need more flexibility than
 * `FlatList` provides, e.g. for use with immutable data instead of plain arrays.
 *
 * Virtualization massively improves memory consumption and performance of large lists by
 * maintaining a finite render window of active items and replacing all items outside of the render
 * window with appropriately sized blank space. The window adapts to scrolling behavior, and items
 * are rendered incrementally with low-pri (after any running interactions) if they are far from the
 * visible area, or with hi-pri otherwise to minimize the potential of seeing blank space.
 *
 * Some caveats:
 *
 * - Internal state is not preserved when content scrolls out of the render window. Make sure all
 *   your data is captured in the item data or external stores like Flux, Redux, or Relay.
 * - This is a `PureComponent` which means that it will not re-render if `props` remain shallow-
 *   equal. Make sure that everything your `renderItem` function depends on is passed as a prop
 *   (e.g. `extraData`) that is not `===` after updates, otherwise your UI may not update on
 *   changes. This includes the `data` prop and parent component state.
 * - In order to constrain memory and enable smooth scrolling, content is rendered asynchronously
 *   offscreen. This means it's possible to scroll faster than the fill rate ands momentarily see
 *   blank content. This is a tradeoff that can be adjusted to suit the needs of each application,
 *   and we are working on improving it behind the scenes.
 * - By default, the list looks for a `key` or `id` prop on each item and uses that for the React key.
 *   Alternatively, you can provide a custom `keyExtractor` prop.
 * - As an effort to remove defaultProps, use helper functions when referencing certain props
 *
 ]]
local VirtualizedList = React.PureComponent:extend("VirtualizedList")
VirtualizedList.contextType = VirtualizedListContext

function VirtualizedList:init(props: Props)
	self.props = props
	self._viewabilityTuples = {}
	self._averageCellLength = 0
	-- Maps a cell key to the set of keys for all outermost child lists within that cell
	self._cellKeysToChildListKeys = Map.new() :: Map<string, Set<string>>
	self._cellRefs = {}
	self._frames = {}
	self._footerLength = 0
	self._hasDoneInitialScroll = false
	self._hasInteracted = false
	self._hasMore = false
	self._hasWarned = {}
	self._headerLength = 0
	self._hiPriInProgress = false
	self._highestMeasuredFrameIndex = 1
	self._indicesToKeys = Map.new() :: Map<number, string>
	self._nestedChildLists = Map.new() :: Map<string, {
		ref: VirtualizedList?,
		state: ChildListState?,
	}>
	self._offsetFromParentVirtualizedList = 0
	self._prevParentOffset = 0
	self._scrollMetrics = {
		contentLength = 0,
		dOffset = 0,
		dt = 10,
		offset = 0,
		timestamp = 0,
		velocity = 0,
		visibleLength = 0,
	}
	self._scrollRef = nil :: React_ElementRef<any>?
	self._sentEndForContentLength = 0
	self._totalCellLength = 0
	self._totalCellsMeasured = 0

	self._canvasPosition = Vector2.new(0, 0)
	self._canvasSize = UDim2.new(0, 0, 0, 0)

	self._invertedCanvasLength = if self.props.getItemLayout then 0 else self.props.invertedCanvasLength or 1000

	self._getFrameMetrics = function(index: number): {
		length: number,
		offset: number,
		index: number,
		inLayout: boolean?,
	}?
		local data, getItem, getItemCount, getItemLayout =
			self.props.data, self.props.getItem, self.props.getItemCount, self.props.getItemLayout
		invariant(
			getItemCount(data) >= index, --[[ ROBLOX deviation: index starts at 1 ]]
			"Tried to get frame for out of range index " .. tostring(index)
		)
		local item = getItem(data, index)
		local frame = if item ~= nil then self._frames[self:_keyExtractor(item, index)] else item
		if not frame or frame.index ~= index then
			if getItemLayout then
				frame = getItemLayout(data, index)
			end
		end
		--[[ $FlowFixMe[prop-missing] (>=0.63.0 site=react_native_fb) This comment
	  * suppresses an error found when Flow v0.63 was deployed. To see the error
	  * delete this comment and run Flow. ]]
		return frame
	end

	-- ROBLOX deviation: onScroll method does not contain properties (__isNative) in Lua
	-- invariant(
	-- 	-- $FlowFixMe[prop-missing]
	-- 	not Boolean.toJSBoolean(props.onScroll) or not Boolean.toJSBoolean(props.onScroll.__isNative),
	-- 	"Components based on VirtualizedList must be wrapped with Animated.createAnimatedComponent "
	-- 		.. "to support native onScroll events with useNativeDriver"
	-- )
	invariant(
		windowSizeOrDefault(props.windowSize) > 0,
		"VirtualizedList: The windowSize prop must be present and set to a value greater than 0."
	)

	self._fillRateHelper = FillRateHelper.new(self._getFrameMetrics)
	self._updateCellsToRender = function()
		local data, getItemCount, _onEndReachedThreshold =
			self.props.data, self.props.getItemCount, self.props.onEndReachedThreshold
		local onEndReachedThreshold = onEndReachedThresholdOrDefault(_onEndReachedThreshold)
		local isVirtualizationDisabled = self:_isVirtualizationDisabled()
		self:_updateViewableItems(data)
		if not Boolean.toJSBoolean(data) then
			return
		end
		self:setState(function(state)
			local newState
			local contentLength, offset, visibleLength =
				self._scrollMetrics.contentLength, self._scrollMetrics.offset, self._scrollMetrics.visibleLength
			if not isVirtualizationDisabled then
				-- If we run this with bogus data, we'll force-render window {first: 0, last: 0},
				-- and wipe out the initialNumToRender rendered elements.
				-- So let's wait until the scroll view metrics have been set up. And until then,
				-- we will trust the initialNumToRender suggestion
				if visibleLength > 0 and contentLength > 0 then
					-- If we have a non-zero initialScrollIndex and run this before we've scrolled,
					-- we'll wipe out the initialNumToRender rendered elements starting at initialScrollIndex.
					-- So let's wait until we've scrolled the view to the right place. And until then,
					-- we will trust the initialScrollIndex suggestion.
					if
						not isIndexTruthy(self.props.initialScrollIndex)
						or Boolean.toJSBoolean(self._scrollMetrics.offset)
					then
						newState = computeWindowedRenderLimits(
							self.props.data,
							self.props.getItemCount,
							maxToRenderPerBatchOrDefault(self.props.maxToRenderPerBatch),
							windowSizeOrDefault(self.props.windowSize),
							state,
							self._getFrameMetricsApprox,
							self._scrollMetrics
						)
					end
				end
			else
				local distanceFromEnd = contentLength - visibleLength - offset
				local renderAhead = if distanceFromEnd < onEndReachedThreshold * visibleLength
					then maxToRenderPerBatchOrDefault(self.props.maxToRenderPerBatch)
					else 0
				newState = {
					first = 1, --[[ ROBLOX deviation: index start at 1 ]]
					last = math.min(state.last + renderAhead, getItemCount(data)), --[[ ROBLOX deviation: index start at 1 ]]
				}
			end
			if newState ~= nil and self._nestedChildLists.size > 0 then
				local newFirst = newState.first :: number
				local newLast = newState.last :: number
				-- If some cell in the new state has a child list in it, we should only render
				-- up through that item, so that we give that list a chance to render.
				-- Otherwise there's churn from multiple child lists mounting and un-mounting
				-- their items.
				local ii = newFirst
				while ii <= newLast do
					local cellKeyForIndex = self._indicesToKeys:get(ii)
					local childListKeys = if Boolean.toJSBoolean(cellKeyForIndex)
						then self._cellKeysToChildListKeys:get(cellKeyForIndex)
						else cellKeyForIndex
					if not Boolean.toJSBoolean(childListKeys) then
						continue
					end
					local someChildHasMore = false
					-- For each cell, need to check whether any child list in it has more elements to render
					for _, childKey in ipairs(childListKeys) do
						local childList = self._nestedChildLists:get(childKey)
						if childList and childList.ref and childList.ref:hasMore() then
							someChildHasMore = true
							break
						end
					end
					if someChildHasMore then
						newState.last = ii
						break
					end
					ii += 1
				end
			end
			if newState ~= nil and newState.first == state.first and newState.last == state.last then
				newState = nil :: any
			end
			return newState
		end)
	end
	self._updateCellsToRenderBatcher = Batchinator.new(
		self._updateCellsToRender,
		if self.props.updateCellsBatchingPeriod == nil then 50 else self.props.updateCellsBatchingPeriod
	)

	if self.props.viewabilityConfigCallbackPairs then
		self._viewabilityTuples = Array.map(self.props.viewabilityConfigCallbackPairs, function(pair)
			return {
				viewabilityHelper = ViewabilityHelper.new(pair.viewabilityConfig),
				onViewableItemsChanged = pair.onViewableItemsChanged,
			}
		end)
	else
		local onViewableItemsChanged, viewabilityConfig =
			self.props.onViewableItemsChanged, self.props.viewabilityConfig
		if onViewableItemsChanged then
			table.insert(self._viewabilityTuples, {
				viewabilityHelper = ViewabilityHelper.new(viewabilityConfig),
				onViewableItemsChanged = onViewableItemsChanged,
			})
		end
	end

	local initialState = {
		first = if isIndexTruthy(self.props.initialScrollIndex) then self.props.initialScrollIndex else 1, --[[ROBLOX deviation: added 1 to index]]
		last = math.min(
			self.props.getItemCount(self.props.data) + 1,
			(if isIndexTruthy(self.props.initialScrollIndex) then self.props.initialScrollIndex else 1)
				+ initialNumToRenderOrDefault(self.props.initialNumToRender)
		) - 1,
		firstItemTracked = if self.props.data and self.props.getItemCount(self.props.data) > 0
			then self.props.getItem(self.props.data, 1)
			else Object.None,
		scrollPositionDelta = 0,
	}

	if self:_isNestedWithSameOrientation() then
		local storedState = self.context.getNestedChildState(self:_getListKey())
		if Boolean.toJSBoolean(storedState) then
			initialState = storedState
			self.state = storedState
			self._frames = storedState.frames
		end
	end

	self.state = initialState

	self._getScrollMetrics = function()
		return self._scrollMetrics
	end

	self._getOutermostParentListRef = function()
		if self:_isNestedWithSameOrientation() then
			return self.context.getOutermostParentListRef()
		else
			return self
		end
	end

	self._getNestedChildState = function(key: string): ChildListState?
		local existingChildData = self._nestedChildLists:get(key)
		return if existingChildData then existingChildData.state else existingChildData
	end

	self._registerAsNestedChild = function(
		childList: {
			cellKey: string,
			key: string,
			ref: VirtualizedList,
			parentDebugInfo: ListDebugInfo,
		}
	): ChildListState? -- ROBLOX comment: this method seem to be returning void
		-- Register the mapping between this child key and the cellKey for its cell
		local childListsInCell = self._cellKeysToChildListKeys:get(childList.cellKey) or Set.new()
		childListsInCell:add(childList.key)
		self._cellKeysToChildListKeys:set(childList.cellKey, childListsInCell)
		local existingChildData = self._nestedChildLists:get(childList.key)
		if existingChildData and existingChildData.ref ~= nil then
			console.error(
				"A VirtualizedList contains a cell which itself contains "
					.. "more than one VirtualizedList of the same orientation as the parent "
					.. "list. You must pass a unique listKey prop to each sibling list.\n\n"
					.. describeNestedLists(Object.assign({}, childList, {
						-- We're called from the child's componentDidMount, so it's safe to
						-- read the child's props here (albeit weird).
						horizontal = Boolean.toJSBoolean(childList.ref.props.horizontal),
					}))
			)
		end
		self._nestedChildLists:set(childList.key, { ref = childList.ref, state = nil })
		if self._hasInteracted then
			childList.ref:recordInteraction()
		end
		return nil
	end

	self._unregisterAsNestedChild = function(childList: {
		key: string,
		state: ChildListState,
	}): ()
		self._nestedChildLists:set(childList.key, { ref = nil, state = childList.state })
	end

	self._onUpdateSeparators = function(keys: Array<string?>, newProps: Object): ()
		Array.forEach(keys, function(key)
			local ref = key ~= nil and self._cellRefs[tostring(key)]
			if Boolean.toJSBoolean(ref) then
				return ref:updateSeparatorProps(newProps)
			end
		end)
	end

	self._getSpacerKey = function(isVertical: boolean): string
		return if isVertical then "height" else "width"
	end

	self._captureScrollRef = function(ref)
		self._scrollRef = ref
	end

	self._defaultRenderScrollComponent = function(props): React_Element
		local onRefresh = props.onRefresh
		if self:_isNestedWithSameOrientation() then
			-- $FlowFixMe[prop-missing] - Typing ReactNativeComponent revealed errors
			return React.createElement(View, props)
		elseif onRefresh then
			invariant(
				typeof(props.refreshing) == "boolean",
				"`refreshing` prop must be set as a boolean in order to use `onRefresh`, but got `"
					.. if props.refreshing == nil then "undefined" else tostring(props.refreshing) .. "`"
			)
			-- $FlowFixMe[prop-missing] Invalid prop usage
			return React.createElement(
				ScrollView,
				Object.assign(table.clone(props), {
					refreshControl = if props.refreshControl == nil
						then React.createElement(RefreshControl, {
							refreshing = props.refreshing,
							onRefresh = onRefresh,
							progressViewOffset = props.progressViewOffset,
						})
						else props.refreshControl,
				})
			)
		else
			-- $FlowFixMe[prop-missing] Invalid prop usage
			return React.createElement(ScrollView, props)
		end
	end

	self._onCellUnmount = function(cellKey: string): ()
		local curr = self._frames[cellKey]
		if curr ~= nil then
			self._frames[cellKey] = Object.assign({}, curr, { inLayout = false })
		end
	end

	self._onLayout = function(rbx): ()
		if self:_isNestedWithSameOrientation() then
			-- Need to adjust our scroll metrics to be relative to our containing
			-- VirtualizedList before we can make claims about list item viewability
			self:measureLayoutRelativeToContainingList()
		else
			self._scrollMetrics.visibleLength = self:_selectLength({
				width = rbx.AbsoluteSize.X,
				height = rbx.AbsoluteSize.Y,
			})
		end
		if self.props.onLayout then
			self.props.onLayout(rbx)
		end
		self:_scheduleCellsToRenderUpdate()
		self:_maybeCallOnEndReached()
	end

	self._onLayoutEmpty = function(rbx): ()
		if self.props.onLayout then
			self.props.onLayout(rbx)
		end
	end

	self._onLayoutFooter = function(rbx): ()
		self:_triggerRemeasureForChildListsInCell(self:_getFooterCellKey())
		self._footerLength = self:_selectLength({
			height = rbx.AbsoluteSize.Y,
			width = rbx.AbsoluteSize.X,
		})
	end

	self._onLayoutHeader = function(rbx)
		self._headerLength = self:_selectLength({
			height = rbx.AbsoluteSize.Y,
			width = rbx.AbsoluteSize.X,
		})
	end

	self._onContentSizeChange = function(width: number, height: number): ()
		if
			width > 0
			and height > 0
			and self.props.initialScrollIndex ~= nil
			and self.props.initialScrollIndex > 1
			and not self._hasDoneInitialScroll
		then
			if self.props.contentOffset == nil then
				self:scrollToIndex({ animated = false, index = self.props.initialScrollIndex })
			end
			self._hasDoneInitialScroll = true
		elseif self.props.inverted and width > 0 and height > 0 and not self._hasDoneInitialScroll then
			-- ROBLOX DEVIATION: scroll to the bottom of the frame if scrolling is inverted
			self._hasDoneInitialScroll = true
			task.defer(function()
				while self:getScrollRef() == nil do
					task.wait()
				end
				if self.props.contentOffset == nil then
					local scrollInstance = self:getScrollRef()._nativeRef.current
					if self.props.horizontal then
						scrollInstance.CanvasPosition = Vector2.new(
							scrollInstance.AbsoluteCanvasSize.X,
							scrollInstance.CanvasPosition.Y
						)
					else
						scrollInstance.CanvasPosition = Vector2.new(
							scrollInstance.CanvasPosition.X,
							scrollInstance.AbsoluteCanvasSize.Y
						)
					end
				end
			end)
		end

		if self.props.onContentSizeChange then
			self.props.onContentSizeChange(width, height)
		end
		self._scrollMetrics.contentLength = self:_selectLength({ height = height, width = width })
		self:_scheduleCellsToRenderUpdate()
		self:_maybeCallOnEndReached()
	end

	--[[ Translates metrics from a scroll event in a parent VirtualizedList into
	   * coordinates relative to the child list.
	]]
	self._convertParentScrollMetrics = function(
		metrics: {
			visibleLength: number,
			offset: number,
		}
	): {
		contentLength: number,
		dOffset: number,
		offset: number,
		visibleLength: number,
	}
		-- Offset of the top of the nested list relative to the top of its parent's viewport
		local offset = metrics.offset - self._offsetFromParentVirtualizedList
		-- Child's visible length is the same as its parent's
		local visibleLength = metrics.visibleLength
		local dOffset = offset - self._scrollMetrics.offset
		local contentLength = self._scrollMetrics.contentLength

		return { visibleLength = visibleLength, contentLength = contentLength, offset = offset, dOffset = dOffset }
	end

	self._onScroll = function(rbx): ()
		self._nestedChildLists:forEach(function(childList)
			if childList.ref then
				childList.ref._onScroll(rbx)
			end
		end)
		if self.props.onScroll then
			self.props.onScroll(rbx)
		end
		local timestamp = os.clock()
		local content = rbx:GetChildren()[1]
		local visibleLength = self:_selectLength({ height = rbx.AbsoluteSize.Y, width = rbx.AbsoluteSize.X })
		local contentLength = self:_selectLength({
			height = content.AbsoluteSize.Y,
			width = content.AbsoluteSize.X,
		})
		local offset = if self.props.inverted
			then self:_selectOffset({
				x = rbx.AbsoluteCanvasSize.X - rbx.CanvasPosition.X - visibleLength,
				y = rbx.AbsoluteCanvasSize.Y - rbx.CanvasPosition.Y - visibleLength,
			})
			else self:_selectOffset({ x = rbx.CanvasPosition.X, y = rbx.CanvasPosition.Y })
		local dOffset = offset - self._scrollMetrics.offset
		if self:_isNestedWithSameOrientation() then
			if self._scrollMetrics.contentLength == 0 then
				-- Ignore scroll events until onLayout has been called and we
				-- know our offset from our offset from our parent
				return
			end

			local ref = self._convertParentScrollMetrics({
				visibleLength,
				offset,
			})
			visibleLength, contentLength, offset, dOffset =
				ref.visibleLength, ref.contentLength, ref.offset, ref.dOffset
		end

		local dt = if Boolean.toJSBoolean(self._scrollMetrics.timestamp)
			then math.max(1, (timestamp - self._scrollMetrics.timestamp) * 1000)
			else 1
		local velocity = dOffset / dt

		if
			dt > 500
			and self._scrollMetrics.dt > 500
			and contentLength > 5 * visibleLength
			and not self._hasWarned.perf
		then
			infoLog(
				"VirtualizedList: You have a large list that is slow to update - make sure your "
					.. "renderItem function renders components that follow React performance best practices "
					.. "like PureComponent, shouldComponentUpdate, etc.",
				{ dt = dt, prevDt = self._scrollMetrics.dt, contentLength = contentLength }
			)
			self._hasWarned.perf = true
		end
		self._scrollMetrics = {
			contentLength = contentLength,
			dt = dt,
			dOffset = dOffset,
			offset = offset,
			timestamp = timestamp,
			velocity = velocity,
			visibleLength = visibleLength,
		}

		local scrollPositionDelta = self.state.scrollPositionDelta
		if scrollPositionDelta > 0 then
			self:setState(function(state: State)
				return {
					scrollPositionDelta = 0,
					first = state.first + scrollPositionDelta,
					last = state.last + scrollPositionDelta,
				}
			end)
		end
		self:_updateViewableItems(self.props.data)
		if not self.props then
			return
		end
		self:_maybeCallOnEndReached()
		if velocity ~= 0 then
			self._fillRateHelper:activate()
		end
		self:_computeBlankness()
		self:_scheduleCellsToRenderUpdate()
	end

	self._onScrollBeginDrag = function(rbx): ()
		self._nestedChildLists:forEach(function(childList)
			if childList.ref then
				childList.ref._onScrollBeginDrag(rbx)
			end
		end)
		Array.forEach(self._viewabilityTuples, function(tuple)
			tuple.viewabilityHelper:recordInteraction()
		end)
		self._hasInteracted = true
		if self.props.onScrollBeginDrag then
			self.props.onScrollBeginDrag(rbx)
		end
	end

	self._onScrollEndDrag = function(rbx): ()
		self._nestedChildLists:forEach(function(childList)
			if childList.ref then
				childList.ref._onScrollEndDrag(rbx)
			end
		end)
		--ROBLOX FIXME: velocity not available
		-- local velocity = e.nativeEvent.velocity
		local velocity = nil

		if Boolean.toJSBoolean(velocity) then
			self._scrollMetrics.velocity = self:_selectOffset(velocity)
		end
		self:_computeBlankness()
		if self.props.onScrollEndDrag then
			self.props.onScrollEndDrag(rbx)
		end
	end

	self._onMomentumScrollBegin = function(rbx): ()
		self._nestedChildLists:forEach(function(childList)
			if childList.ref then
				childList.ref._onMomentumScrollBegin(rbx)
			end
		end)
		if self.props.onMomentumScrollBegin then
			self.props.onMomentumScrollBegin(rbx)
		end
	end

	self._onMomentumScrollEnd = function(rbx): ()
		self._nestedChildLists:forEach(function(childList)
			if childList.ref then
				childList.ref._onMomentumScrollEnd(rbx)
			end
		end)
		self._scrollMetrics.velocity = 0
		self:_computeBlankness()
		if self.props.onMomentumScrollEnd then
			self.props.onMomentumScrollEnd(rbx)
		end
	end

	self._createViewToken = function(
		index: number,
		isViewable: boolean
	): {
		index: number?,
		isViewable: boolean,
		item: any,
		key: string,
		section: any?,
	}
		local data, getItem = self.props.data, self.props.getItem
		local item = getItem(data, index)
		return { index = index, item = item, key = self:_keyExtractor(item, index), isViewable = isViewable }
	end

	self._getFrameMetricsApprox = function(index: number): {
		length: number,
		offset: number,
		inLayout: boolean?,
	}
		local frame = self._getFrameMetrics(index)
		if frame ~= nil and frame.index == index then
			-- check for invalid frames due to row re-ordering
			return frame
		else
			local getItemLayout = self.props.getItemLayout

			invariant(
				not getItemLayout,
				"Should not have to estimate frames when a measurement metrics function is provided"
			)
			return { length = self._averageCellLength, offset = self._averageCellLength * (index - 1) } -- ROBLOX deviation: index starts at 1
		end
	end
end

function VirtualizedList:scrollToEnd(params: {
	animated: boolean?,
}?)
	local animated = if params ~= nil then params.animated else true
	local veryLast = self.props.getItemCount(self.props.data) -- ROBLOX deviation: index starts at 1
	local frame = self._getFrameMetricsApprox(veryLast)
	local offset = if self.props.inverted
		then 0
		else math.max(0, frame.offset + frame.length + self._footerLength - self._scrollMetrics.visibleLength)
	if self._scrollRef == nil then
		return
	end

	if self._scrollRef.scrollTo == nil then
		console.warn(
			"No scrollTo method provided. This may be because you have two nested "
				.. "VirtualizedLists with the same orientation, or because you are "
				.. "using a custom component that does not implement scrollTo."
		)
		return
	end

	self._scrollRef.scrollTo(
		if horizontalOrDefault(self.props.horizontal)
			then { x = offset, animated = animated }
			else { y = offset, animated = animated }
	)
end

-- scrollToIndex may be janky without getItemLayout prop
function VirtualizedList:scrollToIndex(
	params: {
		animated: boolean?,
		index: number,
		viewOffset: number?,
		viewPosition: number?,
	}
)
	local data, horizontal, getItemCount, getItemLayout, onScrollToIndexFailed =
		self.props.data,
		self.props.horizontal,
		self.props.getItemCount,
		self.props.getItemLayout,
		self.props.onScrollToIndexFailed
	local animated, index, viewOffset, viewPosition =
		params.animated, params.index, params.viewOffset, params.viewPosition
	invariant(
		index >= 1, --[[ ROBLOX deviation: added 1 to index ]]
		("scrollToIndex out of range: requested index %d but minimum is 1"):format(index)
	)
	invariant(
		getItemCount(data) >= 1,
		("scrollToIndex out of range: item length %d but minimum is 1"):format(getItemCount(data))
	)
	invariant(
		index <= getItemCount(data), -- ROBLOX deviation: index starts at 1
		("scrollToIndex out of range: requested index %d is out of 1 to %d"):format(index, getItemCount(data)) -- ROBLOX deviation: index start at 1
	)
	if not getItemLayout and index > self._highestMeasuredFrameIndex then
		invariant(
			Boolean.toJSBoolean(onScrollToIndexFailed),
			"scrollToIndex should be used in conjunction with getItemLayout or onScrollToIndexFailed, "
				.. "otherwise there is no way to know the location of offscreen indices or handle failures."
		)
		onScrollToIndexFailed({
			averageItemLength = self._averageCellLength,
			highestMeasuredFrameIndex = self._highestMeasuredFrameIndex,
			index = index,
		})
		return
	end

	-- ROBLOX deviation START: required for inverted
	local scrollViewRef = if self:getScrollRef() then self:getScrollRef()._nativeRef.current else nil
	if scrollViewRef == nil then
		return
	end
	local canvasSize = scrollViewRef.AbsoluteCanvasSize
	local windowSize_ = scrollViewRef.AbsoluteSize
	-- ROBLOX deviation END

	local frame = self._getFrameMetricsApprox(index)
	local offset = math.max(
		0,
		if self.props.inverted
			then
				(
					(if horizontal then canvasSize.X else canvasSize.Y)
					- (if horizontal then windowSize_.X else windowSize_.Y)
					- frame.offset
					- (Boolean.toJSBoolean(viewPosition) and viewPosition or 0)
						* (self._scrollMetrics.visibleLength - frame.length)
				)
			else
				(
					frame.offset
					- (Boolean.toJSBoolean(viewPosition) and viewPosition or 0)
						* (self._scrollMetrics.visibleLength - frame.length)
				)
	) - (Boolean.toJSBoolean(viewOffset) and viewOffset or 0)

	if self._scrollRef == nil then
		return
	end

	if self._scrollRef.scrollTo == nil then
		console.warn(
			"No scrollTo method provided. This may be because you have two nested "
				.. "VirtualizedLists with the same orientation, or because you are "
				.. "using a custom component that does not implement scrollTo."
		)
		return
	end

	self._scrollRef.scrollTo(
		if horizontal then { x = offset, animated = animated } else { y = offset, animated = animated }
	)
end

-- scrollToItem may be janky without getItemLayout prop. Required linear scan through items -
-- use scrollToIndex instead if possible.
function VirtualizedList:scrollToItem(params: {
	animated: boolean?,
	item: Item,
	viewPosition: number?,
})
	local item = params.item
	local data, getItem, getItemCount = self.props.data, self.props.getItem, self.props.getItemCount
	local itemCount = getItemCount(data)
	local index = 1

	while index <= itemCount do
		if getItem(data, index) == item then
			self:scrollToIndex(Object.assign({}, params, { index = index }))
			break
		end
		index += 1
	end
end

--[[*
  * Scroll to a specific content pixel offset in the list.
  *
  * Param `offset` expects the offset to scroll to.
  * In case of `horizontal` is true, the offset is the x-value
  * in any other case the offset is the y-value.
  *
  * Param `animated` (`true` by default) defines whether the list
  * should do an animation while scrolling.
]]
function VirtualizedList:scrollToOffset(params: {
	animated: boolean?,
	offset: number,
})
	---------
	local scrollViewRef = if self:getScrollRef() then self:getScrollRef()._nativeRef.current else nil
	if scrollViewRef == nil then
		--[[
			ROBLOX DEVIATION: This might get called before the ScrollRef gets set, exit gracefully.
			It's okay if we don't measure the first few frames, since they are always rendered.
		]]
		return
	end

	local animated, offset = params.animated, params.offset
	if self._scrollRef == nil then
		return
	end

	--------
	if self.props.inverted then
		-- ROBLOX DEVIATION: calculate offset from screen-space coordinates
		local canvasSize = scrollViewRef.AbsoluteCanvasSize
		local windowSize = scrollViewRef.AbsoluteSize
		offset = (if self.props.horizontal then canvasSize.X else canvasSize.Y)
			- offset
			- (if self.props.horizontal then windowSize.X else windowSize.Y)
	end
	---------

	if self._scrollRef.scrollTo == nil then
		console.warn(
			"No scrollTo method provided. This may be because you have two nested "
				.. "VirtualizedLists with the same orientation, or because you are "
				.. "using a custom component that does not implement scrollTo."
		)
		return
	end

	self._scrollRef.scrollTo(
		if horizontalOrDefault(self.props.horizontal)
			then { x = offset, animated = animated }
			else { y = offset, animated = animated }
	)
end

function VirtualizedList:recordInteraction()
	self._nestedChildLists:forEach(function(childList)
		if childList.ref then
			childList.ref:recordInteraction()
		end
	end)
	Array.forEach(self._viewabilityTuples, function(t)
		t.viewabilityHelper:recordInteraction()
	end)
	self:_updateViewableItems(self.props.data)
end

function VirtualizedList:flashScrollIndicators()
	if self._scrollRef == nil then
		return
	end

	self._scrollRef:flashScrollIndicators()
end

--[[
  * Provides a handle to the underlying scroll responder.
  * Note that `this._scrollRef` might not be a `ScrollView`, so we
  * need to check that it responds to `getScrollResponder` before calling it.
]]
function VirtualizedList:getScrollResponder(): ScrollResponderType?
	if self._scrollRef and self._scrollRef.getScrollResponder then
		return self._scrollRef:getScrollResponder()
	end
	-- ROBLOX deviation: explicit return
	return nil
end

function VirtualizedList:getScrollableNode(): number?
	if self._scrollRef and self._scrollRef.getScrollableNode then
		return self._scrollRef:getScrollableNode()
	else
		return ReactNative.findNodeHandle(self._scrollRef)
	end
end

function VirtualizedList:getScrollRef(): React_ElementRef<typeof(ScrollView)> | React_ElementRef<typeof(View)> | nil
	if self._scrollRef and self._scrollRef.getScrollRef then
		return self._scrollRef:getScrollRef()
	else
		return self._scrollRef
	end
end

function VirtualizedList:setNativeProps(props: Object): ()
	if self._scrollRef then
		self._scrollRef:setNativeProps(props)
	end
end

function VirtualizedList:_getCellKey(): string
	return if self.context and self.context.cellKey then self.context.cellKey else "rootList"
end

function VirtualizedList:_getListKey(): string
	return if Boolean.toJSBoolean(self.props.listKey) then self.props.listKey else self:_getCellKey()
end

function VirtualizedList:_getDebugInfo()
	return {
		listKey = self:_getListKey(),
		cellKey = self:_getCellKey(),
		horizontal = horizontalOrDefault(self.props.horizontal),
		parent = if self.context then self.context.debugInfo else nil,
	}
end

function VirtualizedList:hasMore(): boolean
	return self._hasMore
end

function VirtualizedList:componentDidMount()
	if self:_isNestedWithSameOrientation() then
		self.context.registerAsNestedChild({
			cellKey = self:_getCellKey(),
			key = self:_getListKey(),
			ref = self,
			-- NOTE: When the child mounts (here) it's not necessarily safe to read
			-- the parent's props. This is why we explicitly propagate debugInfo
			-- "down" via context and "up" again via this method call on the
			-- parent.
			parentDebugInfo = self.context.debugInfo,
		})
	end
end

function VirtualizedList:componentWillUnmount()
	if self:_isNestedWithSameOrientation() then
		self.context.unregisterAsNestedChild({
			key = self:_getListKey(),
			state = { first = self.state.first, last = self.state.last, frames = self._frames },
		})
	end
	self:_updateViewableItems(nil)
	self._updateCellsToRenderBatcher:dispose({ abort = true })
	Array.forEach(self._viewabilityTuples, function(tuple)
		tuple.viewabilityHelper:dispose()
	end)
	self._fillRateHelper:deactivateAndFlush()
end

VirtualizedList.getDerivedStateFromProps = function(newProps: Props, prevState: State): State
	local data, getItemCount, maintainVisibleContentPosition =
		newProps.data, newProps.getItemCount, newProps.maintainVisibleContentPosition
	local prevFirstItemTracked = prevState.firstItemTracked
	local scrollPositionDelta = prevState.scrollPositionDelta
	local compare = compareItemDataOrDefault(newProps.compareItemData) :: (any, any) -> boolean
	local newFirstItem = (if data and getItemCount(data) > 0 then newProps.getItem(data, 1) else nil) :: any?
	local function findItem(data, item)
		local val
		for i = 1, #data do
			if compare(data[i], item) then
				val = i
				break
			end
		end
		if val == nil then
			-- ROBLOX comment: item deletion is not officially supported, but this will prevent
			-- a hard error if an item gets deleted.
			return 1
		end
		return val
	end
	if
		maintainVisibleContentPosition
		and scrollPositionDelta == 0
		and prevFirstItemTracked ~= nil
		and newFirstItem ~= nil
	then
		scrollPositionDelta = if compare(prevFirstItemTracked, newFirstItem)
			then 0
			else findItem(data, prevFirstItemTracked) - 1
	end

	local itemCount = getItemCount(data)
	local maxToRenderPerBatch = maxToRenderPerBatchOrDefault(newProps.maxToRenderPerBatch)
	local first = math.max(1, math.min(prevState.first, itemCount - maxToRenderPerBatch))

	if itemCount > 0 and first + scrollPositionDelta > itemCount then
		scrollPositionDelta = 0
		console.warn(
			"WARNING: maintainVisibleContentPosition failed because scrollPositionDelta was out of bounds. "
				.. "This could indicate that items in `data` are getting removed, items are getting added "
				.. "to the middle of `data`, or a different `data` array is getting passed in. Consider "
				.. "changing the `key` prop of the List if the `data` prop is significantly altered."
		)
	end

	if scrollPositionDelta > 0 then
		for i = 1, math.min(scrollPositionDelta, itemCount) do
			newProps.getItem(data, i).shouldResizeOnMount = true
		end
	end

	-- first and last could be stale (e.g. if a new, shorter items props is passed in), so we make
	-- sure we're rendering a reasonable range here.
	return {
		first = first, -- ROBLOX deviation: index starts at 1
		last = math.max(1, math.min(prevState.last, itemCount)), -- ROBLOX deviation: index starts at 1,
		firstItemTracked = newFirstItem or Object.None,
		scrollPositionDelta = scrollPositionDelta,
	}
end

function VirtualizedList:_pushCells(
	cells: Array<Object>,
	stickyHeaderIndices: Array<number>,
	stickyIndicesFromProps: Set<number>,
	first: number,
	last: number,
	inversionStyle: ViewStyleProp
)
	local CellRendererComponent, ItemSeparatorComponent, data, getItem, getItemCount, horizontal =
		self.props.CellRendererComponent,
		self.props.ItemSeparatorComponent,
		self.props.data,
		self.props.getItem,
		self.props.getItemCount,
		self.props.horizontal
	local stickyOffset = if self.props.ListHeaderComponent then 1 else 0
	local end_ = getItemCount(data) -- [[ROBLOX deviation: index starts at 1]]
	local prevCellKey
	last = math.min(end_, last)
	local ii = first

	while ii <= last do
		local item = getItem(data, ii)
		-- ROBLOX TODO PERFORMANCE: memoize keyExtractor?
		local key = self:_keyExtractor(item, ii)
		self._indicesToKeys:set(ii, key)
		if stickyIndicesFromProps:has(ii + stickyOffset) then
			table.insert(stickyHeaderIndices, #cells)
		end
		--[[
			ROBLOX DEVIATION: Store ii as a local variable in while loop to ensure that the onLayout callback
			is called with the correct index value
		]]
		local ii_ = ii
		table.insert(
			cells,
			React.createElement(CellRenderer, {
				CellRendererComponent = CellRendererComponent,
				ItemSeparatorComponent = if ii < end_ then ItemSeparatorComponent else nil,
				cellKey = key,
				fillRateHelper = self._fillRateHelper,
				horizontal = horizontal,
				index = ii,
				inversionStyle = inversionStyle,
				item = item,
				key = key,
				prevCellKey = prevCellKey,
				onUpdateSeparators = self._onUpdateSeparators,
				onLayout = function(rbx)
					return self:_onCellLayout(rbx, key, ii_)
				end,
				onUnmount = self._onCellUnmount,
				parentProps = self.props,
				ref = function(ref)
					self._cellRefs[tostring(key)] = ref
				end,
			})
		)
		prevCellKey = key
		ii += 1
	end
end

function VirtualizedList:_isVirtualizationDisabled(): boolean
	return if self.props.disableVirtualization ~= nil then self.props.disableVirtualization else false
end

function VirtualizedList:_isNestedWithSameOrientation(): boolean
	local nestedContext = self.context
	return nestedContext ~= nil
		and Boolean.toJSBoolean(nestedContext.horizontal) == horizontalOrDefault(self.props.horizontal)
end

function VirtualizedList:_keyExtractor(item: Item, index: number): string
	if self.props.keyExtractor ~= nil then
		return self.props.keyExtractor(item, index)
	end

	local key = defaultKeyExtractor(item, index)
	if key == tostring(index) then
		_usedIndexForKey = true
		if item.type ~= nil and Boolean.toJSBoolean(item.type.displayName) then
			_keylessItemComponentName = item.type.displayName
		end
	end
	return key
end

function VirtualizedList:render(): React_Node
	if _G.__DEV__ then
		local flatStyles = flattenStyle(self.props.contentContainerStyle)
		if flatStyles ~= nil and flatStyles.flexWrap == "wrap" then
			console.warn(
				"`flexWrap: `wrap`` is not supported with the `VirtualizedList` components."
					.. "Consider using `numColumns` with `FlatList` instead."
			)
		end
	end
	local ListEmptyComponent, ListFooterComponent, ListHeaderComponent =
		self.props.ListEmptyComponent, self.props.ListFooterComponent, self.props.ListHeaderComponent
	local data, horizontal = self.props.data, self.props.horizontal

	local isVirtualizationDisabled = self:_isVirtualizationDisabled()
	local inversionStyle = if self.props.inverted
		then if horizontalOrDefault(self.props.horizontal) then styles.horizontallyInverted else styles.verticallyInverted
		else nil
	local cells = {}
	local stickyIndicesFromProps = Set.new(self.props.stickyHeaderIndices)
	local stickyHeaderIndices = {}
	if ListHeaderComponent then
		if stickyIndicesFromProps:has(0) then
			table.insert(stickyHeaderIndices, 0)
		end
		local element = if React.isValidElement(ListHeaderComponent)
			then ListHeaderComponent
			else
				-- $FlowFixMe[not-a-component]
				-- $FlowFixMe[incompatible-type-arg]
				React.createElement(ListHeaderComponent, nil)
		table.insert(
			cells,
			React.createElement(
				VirtualizedListCellContextProvider,
				{ cellKey = self:_getCellKey() .. "-header", key = "$header", Name = "$header" },
				React.createElement(
					View,
					{
						Name = "ListHeaderComponent",
						onLayout = self._onLayoutHeader,
						style = StyleSheet.compose(inversionStyle, self.props.ListHeaderComponentStyle),
						LayoutOrder = if self.props.inverted then (BIG_INT - 1) else -(BIG_INT - 1),
						AutomaticSize = if horizontal then Enum.AutomaticSize.X else Enum.AutomaticSize.Y,
						Size = if horizontal then UDim2.new(0, 0, 1, 0) else UDim2.new(1, 0, 0, 0),
					},
					-- $FlowFixMe[incompatible-type] - Typing ReactNativeComponent revealed errors
					element
				)
			)
		)
	end
	local itemCount = self.props.getItemCount(data)
	if itemCount > 0 then
		_usedIndexForKey = false
		_keylessItemComponentName = ""
		local spacerKey = self._getSpacerKey(not horizontal)
		local lastInitialIndex = (
				if isIndexTruthy(self.props.initialScrollIndex)
					then -1
					else initialNumToRenderOrDefault(self.props.initialNumToRender) - 1
			) + 1 --[[ ROBLOX deviation: index starts at 1]]
		local first, last, scrollPositionDelta = self.state.first, self.state.last, self.state.scrollPositionDelta
		if scrollPositionDelta > 0 then
			first += scrollPositionDelta
			last += scrollPositionDelta
		end
		self:_pushCells(cells, stickyHeaderIndices, stickyIndicesFromProps, 1, lastInitialIndex, inversionStyle) --[[ ROBLOX deviation: index starts at 1]]
		local firstAfterInitial = math.max(lastInitialIndex + 1, first)

		if not isVirtualizationDisabled and first > lastInitialIndex + 1 then
			local insertedStickySpacer = false
			if stickyIndicesFromProps.size > 0 then
				local stickyOffset = if ListHeaderComponent then 1 else 0
				-- See if there are any sticky headers in the virtualized space that we need to render.
				local ii = firstAfterInitial - 1
				while ii > lastInitialIndex do
					if stickyIndicesFromProps:has(ii + stickyOffset) then
						local initBlock = self._getFrameMetricsApprox(lastInitialIndex)
						local stickyBlock = self._getFrameMetricsApprox(ii)
						local leadSpace = stickyBlock.offset
							- initBlock.offset
							- if isIndexTruthy(self.props.initialScrollIndex) then 0 else initBlock.length
						table.insert(
							cells,
							React.createElement(View, {
								key = "$sticky_lead",
								Name = "$sticky_lead",
								style = {
									Size = if spacerKey == "height"
										then UDim2.new(1, 0, 0, leadSpace)
										else UDim2.new(0, leadSpace, 1, 0),
								},
							})
						)
						self:_pushCells(cells, stickyHeaderIndices, stickyIndicesFromProps, ii, ii, inversionStyle)
						local trailSpace = self._getFrameMetricsApprox(first).offset
							- stickyBlock.offset
							+ stickyBlock.length
						table.insert(
							cells,
							React.createElement(View, {
								key = "$sticky_trail",
								Name = "$sticky_trail",
								style = {
									Size = if spacerKey == "height"
										then UDim2.new(1, 0, 0, trailSpace)
										else UDim2.new(0, trailSpace, 1, 0),
								},
							})
						)
						insertedStickySpacer = true
						break
					end
					ii -= 1
				end
			end
			if not insertedStickySpacer then
				local initBlock = self._getFrameMetricsApprox(lastInitialIndex)
				local firstSpace = self._getFrameMetricsApprox(first).offset - (initBlock.offset + initBlock.length)
				table.insert(
					cells,
					React.createElement(View, {
						key = "$lead_spacer",
						Name = "$lead_spacer",
						style = {
							Size = if spacerKey == "height"
								then UDim2.new(1, 0, 0, firstSpace)
								else UDim2.new(0, firstSpace, 1, 0),
						},
						LayoutOrder = if self.props.inverted then BIG_INT else -BIG_INT,
					})
				)
			end
		end
		self:_pushCells(cells, stickyHeaderIndices, stickyIndicesFromProps, firstAfterInitial, last, inversionStyle)
		if not self._hasWarned.keys and _usedIndexForKey then
			console.warn(
				"VirtualizedList: missing keys for items, make sure to specify a key or id property on each "
					.. "item or provide a custom keyExtractor.",
				_keylessItemComponentName
			)
			self._hasWarned.keys = true
		end
		if
			not isVirtualizationDisabled and last < itemCount --[[ ROBLOX deviation: index starts at 1]]
		then
			local lastFrame = self._getFrameMetricsApprox(last)
			-- Without getItemLayout, we limit our tail spacer to the _highestMeasuredFrameIndex to
			-- prevent the user for hyperscrolling into un-measured area because otherwise content will
			-- likely jump around as it renders in above the viewport.
			local end_ = if self.props.getItemLayout
				then itemCount --[[ ROBLOX deviation: index starts at 1 ]]
				else math.min(itemCount, self._highestMeasuredFrameIndex) --[[ ROBLOX deviation: index starts at 1]]
			local endFrame = self._getFrameMetricsApprox(end_)

			local tailSpacerLength = endFrame.offset + endFrame.length - (lastFrame.offset + lastFrame.length)
			table.insert(
				cells,
				React.createElement(View, {
					key = "$tail_spacer",
					Name = "$tail_spacer",
					style = {
						Size = if spacerKey == "height"
							then UDim2.new(1, 0, 0, tailSpacerLength)
							else UDim2.new(0, tailSpacerLength, 1, 0),
					},
					LayoutOrder = if self.props.inverted then -BIG_INT else BIG_INT,
				})
			)
		end
	elseif ListEmptyComponent then
		local element: React_Element = (
				if React.isValidElement(ListEmptyComponent)
					then ListEmptyComponent
					else
						-- $FlowFixMe[not-a-component]
						-- $FlowFixMe[incompatible-type-arg]
						React.createElement(ListEmptyComponent, nil)
			) :: any

		table.insert(
			cells,
			React.cloneElement(element, {
				key = "$empty",
				Name = "$empty",
				-- ROBLOX deviation START: props is defined as optional. Requires to cast props
				onLayout = function(rbx)
					self._onLayoutEmpty(rbx)
					if element.props.onLayout then
						element.props.onLayout(rbx)
					end
				end,
				style = StyleSheet.compose(inversionStyle, element.props.style),
				-- ROBLOX devitaion END
			})
		)
	end
	if ListFooterComponent then
		local element = if React.isValidElement(ListFooterComponent)
			then ListFooterComponent
			else
				-- $FlowFixMe[not-a-component]
				-- $FlowFixMe[incompatible-type-arg]
				React.createElement(ListFooterComponent, nil)
		table.insert(
			cells,
			React.createElement(
				VirtualizedListCellContextProvider,
				{ cellKey = self:_getFooterCellKey(), key = "$footer", Name = "$footer" },
				React.createElement(
					View,
					{
						Name = "ListFooterComponent",
						onLayout = self._onLayoutFooter,
						style = StyleSheet.compose(inversionStyle, self.props.ListFooterComponentStyle),
						LayoutOrder = if self.props.inverted then -(BIG_INT - 1) else BIG_INT - 1,
						AutomaticSize = if horizontal then Enum.AutomaticSize.X else Enum.AutomaticSize.Y,
						Size = if horizontal then UDim2.new(0, 0, 1, 0) else UDim2.new(1, 0, 0, 0),
					},
					-- $FlowFixMe[incompatible-type] - Typing ReactNativeComponent revealed errors
					element
				)
			)
		)
	end

	-- ROBLOX DEVIATION: Start Inverted Deviation
	--[[
		ROBLOX NOTE: Pass in CanvasPosition and CanvasSize as props for inverted scrolling without item layout.
		If nothing changes, we pass in the previous CanvasPosition/Size value. Even if the actual value changes
		due to scrolling or resizing, the prop only updates if the value changes, so the old value will not get
		applied to the host instance.
	]]
	if
		self.props.inverted
		-- ROBLOX NOTE: if getItemLayout is defined, the CanvasSize is precalculated
		and not self.props.getItemLayout
	then
		if self:getScrollRef() ~= nil and self:getScrollRef()._nativeRef.current ~= nil then
			local scrollingFrame = self:getScrollRef()._nativeRef.current
			local currentCanvasPosition = scrollingFrame.CanvasPosition
			local endFrame = self._getFrameMetricsApprox(math.min(self._highestMeasuredFrameIndex, itemCount))
			local listEndOffset = endFrame.offset + endFrame.length
			local shouldResize = if self.props.optimizeInvertedCanvasResize
				then listEndOffset > (self._invertedCanvasLength - self._footerLength)
				else listEndOffset ~= (self._invertedCanvasLength - self._footerLength)

			if
				self._highestMeasuredFrameIndex >= itemCount
				and listEndOffset ~= (self._invertedCanvasLength - self._footerLength)
			then
				-- ROBLOX NOTE: If we've measured all the frames, remove the additional padding and include footerSize
				local invertedCanvasLengthDelta = listEndOffset + self._footerLength - self._invertedCanvasLength
				self._invertedCanvasLength = listEndOffset + self._footerLength

				local newCanvasSize = if self.props.horizontal
					then UDim2.new(0, self._invertedCanvasLength, 1, 0)
					else UDim2.new(1, 0, 0, self._invertedCanvasLength)
				-- ROBLOX FIXME: make sure size is set before position
				scrollingFrame.CanvasSize = newCanvasSize
				-- ROBLOX NOTE: When we change the canvas size, push down the CanvasPosition by that delta
				self._canvasPosition = if self.props.horizontal
					then Vector2.new(currentCanvasPosition.X + invertedCanvasLengthDelta, currentCanvasPosition.Y)
					else Vector2.new(currentCanvasPosition.X, currentCanvasPosition.Y + invertedCanvasLengthDelta)
				-- ROBLOX NOTE: update Canvas Size
				self._canvasSize = newCanvasSize
			elseif shouldResize and self.state.scrollPositionDelta == 0 then
				local prevInvertedCanvasLength = self._invertedCanvasLength
				local overscan = self._scrollMetrics.visibleLength * windowSizeOrDefault(self.props.windowSize) * 0.5
				local nextInvertedCanvasLength = endFrame.offset + self._scrollMetrics.visibleLength + overscan
				local invertedCanvasLengthDelta = nextInvertedCanvasLength - prevInvertedCanvasLength
				self._invertedCanvasLength = nextInvertedCanvasLength

				local newCanvasSize = if self.props.horizontal
					then UDim2.new(0, self._invertedCanvasLength, 1, 0)
					else UDim2.new(1, 0, 0, self._invertedCanvasLength)

				-- ROBLOX FIXME: make sure size is set before position
				scrollingFrame.CanvasSize = newCanvasSize
				scrollingFrame.CanvasPosition = if self.props.horizontal
					then Vector2.new(currentCanvasPosition.X + invertedCanvasLengthDelta, currentCanvasPosition.Y)
					else Vector2.new(currentCanvasPosition.X, currentCanvasPosition.Y + invertedCanvasLengthDelta)
				self._canvasPosition = scrollingFrame.CanvasPosition
				self._canvasSize = newCanvasSize
			end
		else
			-- ROBLOX NOTE: Try to initialize the CanvasPosition to the end of the list
			self._canvasPosition = if self.props.horizontal
				then Vector2.new(self._invertedCanvasLength, 0)
				else Vector2.new(0, self._invertedCanvasLength)

			-- ROBLOX NOTE: manually set CanvasSize, instead of AutomaticSizing
			self._canvasSize = if self.props.horizontal
				then UDim2.new(0, self._invertedCanvasLength, 1, 0)
				else UDim2.new(1, 0, 0, self._invertedCanvasLength)
		end
	elseif self.props.inverted and self.props.getItemLayout then
		local endFrame = self._getFrameMetricsApprox(itemCount)
		if self:getScrollRef() ~= nil and self:getScrollRef()._nativeRef.current ~= nil then
			local scrollingFrame = self:getScrollRef()._nativeRef.current
			local currentCanvasPosition = scrollingFrame.CanvasPosition
			local prevInvertedCanvasLength = self._invertedCanvasLength
			self._invertedCanvasLength = endFrame.offset + endFrame.length

			if prevInvertedCanvasLength ~= self._invertedCanvasLength then
				local canvasLengthDelta = self._invertedCanvasLength - prevInvertedCanvasLength

				scrollingFrame.CanvasPosition = if self.props.horizontal
					then currentCanvasPosition + Vector2.new(canvasLengthDelta, 0)
					else currentCanvasPosition + Vector2.new(0, canvasLengthDelta)
			end
		else
			self._invertedCanvasLength = endFrame.offset + endFrame.length
		end
	end
	-- ROBLOX DEVIATION END

	local scrollProps = Object.assign(table.clone(self.props), {
		onContentSizeChange = self._onContentSizeChange,
		onLayout = self._onLayout,
		onScroll = self._onScroll,
		onScrollBeginDrag = self._onScrollBeginDrag,
		onScrollEndDrag = self._onScrollEndDrag,
		onMomentumScrollBegin = self._onMomentumScrollBegin,
		onMomentumScrollEnd = self._onMomentumScrollEnd,
		scrollEventThrottle = scrollEventThrottleOrDefault(self.props.scrollEventThrottle), -- TODO: Android support
		invertStickyHeaders = if self.props.invertStickyHeaders ~= nil
			then self.props.invertStickyHeaders
			else self.props.inverted,
		stickyHeaderIndices = stickyHeaderIndices,
		-- ROBLOX deviation: inversionStyle passed to layoutStyle instead
		style = self.props.style,
		-- ROBLOX DEVIATION: pass a style to the UIListLayout in ScrollView to control Alignment
		layoutStyle = inversionStyle or nil,
		AutomaticCanvasSize = if self.props.inverted and not self.props.getItemLayout
			then Enum.AutomaticSize.None
			else nil,
		CanvasSize = if self.props.inverted then self._canvasSize else nil,
		CanvasPosition = if self.props.inverted then self._canvasPosition else nil,
	})

	self._hasMore = self.state.last < self.props.getItemCount(self.props.data)
	local innerRet = React.createElement(
		VirtualizedListContextProvider,
		{
			value = {
				cellKey = nil,
				getScrollMetrics = self._getScrollMetrics,
				horizontal = horizontalOrDefault(self.props.horizontal),
				getOutermostParentListRef = self._getOutermostParentListRef,
				getNestedChildState = self._getNestedChildState,
				registerAsNestedChild = self._registerAsNestedChild,
				unregisterAsNestedChild = self._unregisterAsNestedChild,
				debugInfo = self:_getDebugInfo(),
			},
		},
		React.cloneElement(
			(if self.props.renderScrollComponent
				then self.props.renderScrollComponent
				else self._defaultRenderScrollComponent)(scrollProps),
			{ ref = self._captureScrollRef },
			cells
		)
	)
	local ret = innerRet
	if _G.__DEV__ then
		ret = React.createElement(ScrollView.Context.Consumer, nil, function(scrollContext)
			if
				scrollContext ~= nil
				and not scrollContext.horizontal == not horizontalOrDefault(self.props.horizontal)
				and not self._hasWarned.nesting
				and self.context == nil
			then
				-- TODO (T46547044): use React.warn once 16.9 is sync'd: https://github.com/facebook/react/pull/15170
				console.error(
					"VirtualizedLists should never be nested inside plain ScrollViews with the same "
						.. "orientation because it can break windowing and other functionality - use another "
						.. "VirtualizedList-backed container instead."
				)
				self._hasWarned.nesting = true
			end
			return innerRet
		end)
	end

	if self.props.debug then
		return React.createElement(View, { style = styles.debug, Name = "debug" }, ret, self:_renderDebugOverlay())
	else
		return ret
	end
end

function VirtualizedList:componentDidUpdate(prevProps: Props)
	local data, extraData = self.props.data, self.props.extraData
	if data ~= prevProps.data or extraData ~= prevProps.extraData then
		-- clear the viewableIndices cache to also trigger
		-- the onViewableItemsChanged callback with the new data
		Array.forEach(self._viewabilityTuples, function(tuple)
			tuple.viewabilityHelper:resetViewableIndices()
		end)
	end
	-- The `this._hiPriInProgress` is guaranteeing a hiPri cell update will only happen
	-- once per fiber update. The `_scheduleCellsToRenderUpdate` will set it to true
	-- if a hiPri update needs to perform. If `componentDidUpdate` is triggered with
	-- `this._hiPriInProgress=true`, means it's triggered by the hiPri update. The
	-- `_scheduleCellsToRenderUpdate` will check this condition and not perform
	-- another hiPri update.
	local hiPriInProgress = self._hiPriInProgress
	self:_scheduleCellsToRenderUpdate()
	-- Make sure setting `this._hiPriInProgress` back to false after `componentDidUpdate`
	-- is triggered with `this._hiPriInProgress = true`
	if hiPriInProgress then
		self._hiPriInProgress = false
	end
end

function VirtualizedList:_computeBlankness()
	self._fillRateHelper:computeBlankness(self.props, self.state, self._scrollMetrics)
end

function VirtualizedList:_onCellLayout(rbx: Frame, cellKey: string, index: number): ()
	local maybeScrollViewRef = if self:getScrollRef() and self:getScrollRef()._nativeRef.current
		then self:getScrollRef()._nativeRef.current
		else rbx:FindFirstAncestorOfClass("ScrollingFrame")
	if maybeScrollViewRef == nil then
		--[[
			ROBLOX DEVIATION: if onCellLayout is skipped, layout errors may occur. Warn and exit gracefully.
		]]
		if _G.__DEV__ then
			console.warn("CellLayout failed for index " .. tostring(index) .. ". this may cause layout issues")
		end
		return
	end

	local scrollViewRef = maybeScrollViewRef :: ScrollingFrame

	-- ROBLOX DEVIATION: calculate offset from screen-space coordinates
	local windowPos = scrollViewRef.AbsolutePosition
	local canvasPosition = scrollViewRef.CanvasPosition
	local canvasSize = scrollViewRef.AbsoluteCanvasSize

	local cellSize = rbx.AbsoluteSize
	local cellPos = rbx.AbsolutePosition

	local xOffset = if self.props.inverted and self.props.horizontal
		then canvasSize.X - canvasPosition.X - cellPos.X - cellSize.X + windowPos.X
		else cellPos.X - windowPos.X + canvasPosition.X

	local yOffset = if self.props.inverted and not self.props.horizontal
		then canvasSize.Y - canvasPosition.Y - cellPos.Y - cellSize.Y + windowPos.Y
		else cellPos.Y - windowPos.Y + canvasPosition.Y

	local layout = {
		width = rbx.AbsoluteSize.X,
		height = rbx.AbsoluteSize.Y,
		x = xOffset,
		y = yOffset,
	}

	-- ROBLOX DEVIATION: "next" is a global function in luau, use "next_" instead
	local next_ = {
		offset = self:_selectOffset(layout),
		length = self:_selectLength(layout),
		index = index,
		inLayout = true,
	}
	local curr = self._frames[cellKey]
	if not curr or math.abs(next_.offset - curr.offset) > 1 or next_.length ~= curr.length or index ~= curr.index then
		local item = self.props.getItem(self.props.data, index)

		-- ROBLOX DEVIATION: BidirectionalFlatList deviation
		if not curr and not self.props.getItemLayout and typeof(item) == "table" and item.shouldResizeOnMount then
			self:recalculateFrames(self:_selectLength(layout), cellKey, index)
		end

		--[[
			ROBLOX DEVIATION: When an item resizes, recalculate the frames for the items above it.
			[React.Change.AbsoluteSize] does not handle all of the edge cases of onLayout, since
			some items are always rendered and we do not recalculate layout for these items. React
			Native will calculate the relative position change of these items based on AbsolutePosition
			changes, but this is too expensive to do in Roact via [React.Change.AbsolutePosition].
		]]
		if curr and not self.props.getItemLayout and math.abs(next_.length - curr.length) >= 1 then
			if self.props.UNSTABLE_forceSiblingLayoutUpdate then
				local contentView = rbx:FindFirstAncestorOfClass("Frame")
				local contentViewChildren = if contentView then contentView:GetChildren() else {}
				local itemCount = self.props.getItemCount(self.props.data)
				Array.forEach(contentViewChildren, function(sibling)
					if not sibling:IsA("GuiObject") then
						-- ROBLOX NOTE: Only GuiObjects have the "LayoutOrder" prop.
						return
					end

					local siblingIdx = math.abs(sibling.LayoutOrder)
					if siblingIdx <= index or siblingIdx > itemCount then
						return
					end

					local siblingItem = self.props.getItem(self.props.data, siblingIdx)
					if siblingItem == nil then
						return
					end
					local siblingKey = self:_keyExtractor(siblingItem, siblingIdx)

					self:_onCellLayout(sibling, siblingKey, siblingIdx)
				end)
			else
				Array.forEach(Object.keys(self._frames), function(key)
					if self._frames[key].index <= index then
						return
					else
						local cellRef = if self._cellRefs[key] then self._cellRefs[key]:getRef() else nil
						if cellRef and cellRef.current then
							self:_onCellLayout(cellRef.current, key, self._frames[key].index)
						end
					end
				end)
			end
		end

		self._totalCellLength += next_.length - (if Boolean.toJSBoolean(curr) then curr.length else 0)
		self._totalCellsMeasured += if Boolean.toJSBoolean(curr) then 0 else 1
		self._averageCellLength = self._totalCellLength / self._totalCellsMeasured
		self._frames[cellKey] = next_
		self._highestMeasuredFrameIndex = math.max(self._highestMeasuredFrameIndex, index)
		self:_scheduleCellsToRenderUpdate()

		-- ROBLOX deviation START: inverted
		--[[
			ROBLOX FIXME: hack
			Render may not be called when self._highestMeasuredFrame index is the last one,
			failing to resize the canvas to the proper length.
			This ensures that a rerender will happen when we know the last item offset/length
		]]
		if
			self.props.inverted
			and not self.props.getItemLayout
			and self.state.last == self.props.getItemCount(self.props.data)
			and self._highestMeasuredFrameIndex == self.state.last
		then
			self:forceUpdate()
		end
		-- ROBLOX deviation: END
	else
		self._frames[cellKey].inLayout = true
	end

	self:_triggerRemeasureForChildListsInCell(cellKey)

	self:_computeBlankness()
	self:_updateViewableItems(self.props.data)
end

function VirtualizedList:_triggerRemeasureForChildListsInCell(cellKey: string): ()
	local childListKeys = self._cellKeysToChildListKeys:get(cellKey)
	if childListKeys then
		childListKeys:forEach(function(childKey)
			local childList = self._nestedChildLists:get(childKey)
			if childList and childList.ref then
				childList.ref:measureLayoutRelativeToContainingList()
			end
		end)
	end
end

-- ROBLOX comment: recalculate frames already present. Works only for adding items.
-- ROBLOX TODO: add support for removing items
function VirtualizedList:recalculateFrames(offset: number, ignoreKey: string, index: number): ()
	Array.forEach(Object.keys(self._frames), function(key)
		if key == ignoreKey and self._frames[key].index >= index then
			return
		else
			self._frames[key].index += 1
			self._frames[key].offset += offset
		end
	end)
	self._highestMeasuredFrameIndex += 1
end

function VirtualizedList:measureLayoutRelativeToContainingList(): ()
	-- TODO (T35574538): findNodeHandle sometimes crashes with "Unable to find
	-- node on an unmounted component" during scrolling
	--[[ ROBLOX COMMENT: try-catch block conversion ]]
	local ok, result = pcall(function()
		if not Boolean.toJSBoolean(self._scrollRef) then
			return nil
		end
		-- We are assuming that getOutermostParentListRef().getScrollRef()
		-- is a non-null reference to a ScrollView
		self._scrollRef:measureLayout(
			self.context.getOutermostParentListRef():getScrollRef(),
			function(x, y, width, height)
				self._offsetFromParentVirtualizedList = self:_selectOffset({ x = x, y = y })
				self._scrollMetrics.contentLength = self:_selectLength({ width = width, height = height })
				local scrollMetrics = self._convertParentScrollMetrics(self.context.getScrollMetrics())

				local metricsChanged = self._scrollMetrics.visibleLength ~= scrollMetrics.visibleLength
					or self._scrollMetrics.offset ~= scrollMetrics.offset

				if metricsChanged then
					self._scrollMetrics.visibleLength = scrollMetrics.visibleLength
					self._scrollMetrics.offset = scrollMetrics.offset

					-- If metrics of the scrollView changed, then we triggered remeasure for child list
					-- to ensure VirtualizedList has the right information.
					self._cellKeysToChildListKeys:forEach(function(childListKeys)
						if childListKeys then
							childListKeys:forEach(function(childKey)
								local childList = self._nestedChildLists:get(childKey)
								if childList and childList.ref then
									childList.ref:measureLayoutRelativeToContainingList()
								end
							end)
						end
					end)
				end
			end,
			function(error_)
				console.warn(
					"VirtualizedList: Encountered an error while measuring a list's"
						.. " offset from its containing VirtualizedList."
				)
			end
		)
		return nil
	end)
	if not ok then
		console.warn("measureLayoutRelativeToContainingList threw an error", (result :: any).stack)
	end
end

function VirtualizedList:_getFooterCellKey(): string
	return self:_getCellKey() .. "-footer"
end

function VirtualizedList:_renderDebugOverlay(): React_Element
	local normalize = self._scrollMetrics.visibleLength
		/ if Boolean.toJSBoolean(self._scrollMetrics.contentLength) then self._scrollMetrics.contentLength else 1
	local framesInLayout = {}
	local itemCount = self.props.getItemCount(self.props.data)
	local ii = 1
	while ii <= itemCount do
		local frame = self._getFrameMetricsApprox(ii)
		--[[ $FlowFixMe[prop-missing] (>=0.68.0 site=react_native_fb) This comment
    * suppresses an error found when Flow v0.68 was deployed. To see the
    * error delete this comment and run Flow. ]]
		if Boolean.toJSBoolean(frame.inLayout) then
			table.insert(framesInLayout, frame)
		end
		ii += 1
	end
	local windowTop = self._getFrameMetricsApprox(self.state.first).offset
	local frameLast = self._getFrameMetricsApprox(self.state.last)
	local windowLen = frameLast.offset + frameLast.length - windowTop
	local visTop = self._scrollMetrics.offset
	local visLen = self._scrollMetrics.visibleLength

	return React.createElement(
		View,
		{ style = { styles.debugOverlayBase, styles.debugOverlay :: any } }, -- ROBLOX FIXME Luau: mixed types array
		Array.map(framesInLayout, function(f: any, ii: number)
			return React.createElement(View, {
				key = "f" .. tostring(ii),
				Name = "f" .. tostring(ii),
				style = {
					styles.debugOverlayBase,
					styles.debugOverlayFrame,
					{ top = (f.offset :: number) * normalize, height = (f.length :: number) * normalize } :: any, -- ROBLOX FIXME LUAU: offset number /length are kwnown to be of type number
				}, -- ROBLOX FIXME Luau: mixed types array
			})
		end) :: any,
		React.createElement(View, {
			Name = "DebugOverlayLast",
			style = {
				styles.debugOverlayBase,
				styles.debugOverlayFrameLast :: any,
				{ top = windowTop * normalize, height = windowLen * normalize } :: any,
			}, -- ROBLOX FIXME Luau: mixed types array
		}),
		React.createElement(View, {
			Name = "DebugOverlayVis",
			style = {
				styles.debugOverlayBase,
				styles.debugOverlayFrameVis :: any,
				{ top = visTop * normalize, height = visLen * normalize } :: any,
			}, -- ROBLOX FIXME Luau: mixed types array
		})
	)
end

function VirtualizedList:_selectLength(metrics: ReadOnly<{
	height: number,
	width: number,
}>): number
	return if not horizontalOrDefault(self.props.horizontal) then metrics.height else metrics.width
end

function VirtualizedList:_selectOffset(metrics: ReadOnly<{
	x: number,
	y: number,
}>): number
	return if not horizontalOrDefault(self.props.horizontal) then metrics.y else metrics.x
end

function VirtualizedList:_maybeCallOnEndReached()
	local data, getItemCount, onEndReached, onEndReachedThreshold =
		self.props.data, self.props.getItemCount, self.props.onEndReached, self.props.onEndReachedThreshold

	local contentLength, visibleLength, offset =
		self._scrollMetrics.contentLength, self._scrollMetrics.visibleLength, self._scrollMetrics.offset

	local distanceFromEnd = contentLength - visibleLength - offset
	local threshold = if onEndReachedThreshold ~= nil then onEndReachedThreshold * visibleLength else 2
	if
		onEndReached
		and self.state.last == getItemCount(data) -- ROBLOX deviation: index starts at 1
		and distanceFromEnd < threshold
		and self._scrollMetrics.contentLength ~= self._sentEndForContentLength
	then
		-- Only call onEndReached once for a given content length
		self._sentEndForContentLength = self._scrollMetrics.contentLength
		onEndReached({ distanceFromEnd = distanceFromEnd })
	elseif distanceFromEnd > threshold then
		-- If the user scrolls away from the end and back again cause
		-- an onEndReached to be triggered again
		self._sentEndForContentLength = 0
	end
end

function VirtualizedList:_scheduleCellsToRenderUpdate(): ()
	local first, last, scrollPositionDelta = self.state.first, self.state.last, self.state.scrollPositionDelta
	if scrollPositionDelta > 0 then
		return
	end
	local offset, visibleLength, velocity =
		self._scrollMetrics.offset, self._scrollMetrics.visibleLength, self._scrollMetrics.velocity
	local itemCount = self.props.getItemCount(self.props.data)
	local hiPri = false
	local onEndReachedThreshold = onEndReachedThresholdOrDefault(self.props.onEndReachedThreshold)
	local scrollingThreshold = onEndReachedThreshold * visibleLength / 2
	-- Mark as high priority if we're close to the start of the first item
	-- But only if there are items before the first rendered item

	if first > 1 then --[[ ROBLOX deviation: index starts at 1 ]]
		local distTop = offset - self._getFrameMetricsApprox(first).offset
		hiPri = hiPri or distTop < 0 or (velocity < -2 and distTop < scrollingThreshold)
	end
	-- Mark as high priority if we're close to the end of the last item
	-- But only if there are items after the last rendered item
	if last < itemCount then --[[ ROBLOX deviation: index starts at 1 ]]
		local distBottom = self._getFrameMetricsApprox(last).offset - (offset + visibleLength)
		hiPri = hiPri or distBottom < 0 or velocity > 2
	end
	-- Only trigger high-priority updates if we've actually rendered cells,
	-- and with that size estimate, accurately compute how many cells we should render.
	-- Otherwise, it would just render as many cells as it can (of zero dimension),
	-- each time through attempting to render more (limited by maxToRenderPerBatch),
	-- starving the renderer from actually laying out the objects and computing _averageCellLength.
	-- If this is triggered in an `componentDidUpdate` followed by a hiPri cellToRenderUpdate
	-- We shouldn't do another hipri cellToRenderUpdate
	if
		hiPri
		and (Boolean.toJSBoolean(self._averageCellLength) or self.props.getItemLayout)
		and not self._hiPriInProgress
	then
		self._hiPriInProgress = true
		-- Don't worry about interactions when scrolling quickly; focus on filling content as fast
		-- as possible.
		self._updateCellsToRenderBatcher:dispose({ abort = true })
		self._updateCellsToRender()
		return
	else
		self._updateCellsToRenderBatcher:schedule()
	end
end

function VirtualizedList:_updateViewableItems(data: any): ()
	local getItemCount = self.props.getItemCount
	Array.forEach(self._viewabilityTuples, function(tuple)
		tuple.viewabilityHelper:onUpdate(
			getItemCount(data),
			self._scrollMetrics.offset,
			self._scrollMetrics.visibleLength,
			self._getFrameMetrics,
			self._createViewToken,
			tuple.onViewableItemsChanged,
			self.state
		)
	end)
end

type CellRendererProps = {
	CellRendererComponent: React_ComponentType<any>?,
	ItemSeparatorComponent: React_ComponentType<any | {
		highlighted: boolean,
		leadingItem: Item?,
	}>?,
	cellKey: string,
	fillRateHelper: FillRateHelper,
	horizontal: boolean?,
	index: number,
	inversionStyle: ViewStyleProp,
	item: Item,
	-- This is extracted by ScrollViewStickyHeader
	onLayout: (event: Object) -> (),
	onUnmount: (cellKey: string) -> (),
	onUpdateSeparators: (cellKeys: Array<string?>, props: Object) -> (),
	parentProps: {
		-- e.g. height, y,
		getItemLayout: ((
			data: any,
			index: number
		) -> {
			length: number,
			offset: number,
			index: number,
		})?,
		renderItem: RenderItemType<Item>?,
		ListItemComponent: (React_ComponentType<any> | React.Element<any>)?,
	},
	prevCellKey: string?,
}

type CellRendererState = {
	separatorProps: ReadOnly<{
		highlighted: boolean,
		leadingItem: Item?,
	}>,
}

type CellRenderer = {
	state: CellRendererState,
	_separators: any,
	updateSeparatorProps: (self: CellRenderer, newProps: Object) -> (),
	_renderElement: (self: CellRenderer, renderItem: any, ListItemComponent: any, item: any, index: any) -> any,
}

CellRenderer = React.Component:extend("CellRenderer")

function CellRenderer:init(props)
	self.props = props

	self.state = {
		separatorProps = {
			highlighted = false,
			leadingItem = self.props.item,
		},
	}
	-- TODO: consider factoring separator stuff out of VirtualizedList into FlatList since it's not
	-- reused by SectionList and we can keep VirtualizedList simpler.
	self._separators = {
		highlight = function()
			local cellKey, prevCellKey = self.props.cellKey, self.props.prevCellKey
			self.props.onUpdateSeparators({ cellKey, prevCellKey }, { highlighted = true })
		end,
		unhighlight = function()
			local cellKey, prevCellKey = self.props.cellKey, self.props.prevCellKey
			self.props.onUpdateSeparators({ cellKey, prevCellKey }, { highlighted = false })
		end,
		updateProps = function(select: "leading" | "trailing", newProps: Object)
			local cellKey, prevCellKey = self.props.cellKey, self.props.prevCellKey
			self.props.onUpdateSeparators({
				if select == "leading" then prevCellKey else cellKey,
			}, newProps)
		end,
	}

	-- ROBLOX DEVIATION: pass a ref to the CellRendererComponent to handle item resizes
	self._nativeRef = React.createRef()
end

CellRenderer.getDerivedStateFromProps = function(props: CellRendererProps, prevState: CellRendererState)
	return { separatorProps = Object.assign({}, prevState.separatorProps, { leadingItem = props.item }) }
end

function CellRenderer:updateSeparatorProps(newProps: Object)
	self:setState(function(state)
		return { separatorProps = Object.assign({}, state.separatorProps, newProps) }
	end)
end

function CellRenderer:componentWillUnmount()
	self.props.onUnmount(self.props.cellKey)
end

function CellRenderer:_renderElement(renderItem, ListItemComponent, item, index): any?
	if Boolean.toJSBoolean(renderItem) and Boolean.toJSBoolean(ListItemComponent) then
		console.warn(
			"VirtualizedList: Both ListItemComponent and renderItem props are present. ListItemComponent will take"
				.. " precedence over renderItem."
		)
	end

	if Boolean.toJSBoolean(ListItemComponent) then
		--[[ $FlowFixMe[not-a-component] (>=0.108.0 site=react_native_fb) This
       * comment suppresses an error found when Flow v0.108 was deployed. To
       * see the error, delete this comment and run Flow. ]]
		--[[ $FlowFixMe[incompatible-type-arg] (>=0.108.0 site=react_native_fb)
       * This comment suppresses an error found when Flow v0.108 was deployed.
       * To see the error, delete this comment and run Flow. ]]
		return React.createElement(ListItemComponent, { item = item, index = index, separators = self._separators })
	end

	if Boolean.toJSBoolean(renderItem) then
		return renderItem({
			item = item,
			index = index,
			separators = self._separators,
		})
	end

	invariant(false, "VirtualizedList: Either ListItemComponent or renderItem props are required but none were found.")
	return nil -- ROBLOX deviation: explicit return
end

-- ROBLOX DEVIATION start: return the ref passed to the CellRendererComponent
function CellRenderer:getRef()
	return self._nativeRef
end
-- ROBLOX DEVIATION end

function CellRenderer:render()
	local CellRendererComponent, ItemSeparatorComponent, fillRateHelper, horizontal, item, index, inversionStyle, parentProps =
		self.props.CellRendererComponent,
		self.props.ItemSeparatorComponent,
		self.props.fillRateHelper,
		self.props.horizontal,
		self.props.item,
		self.props.index,
		self.props.inversionStyle,
		self.props.parentProps
	local renderItem, getItemLayout, ListItemComponent =
		parentProps.renderItem, parentProps.getItemLayout, parentProps.ListItemComponent
	local element = self:_renderElement(renderItem, ListItemComponent, item, index)

	local onLayout =
		--[[ $FlowFixMe[prop-missing] (>=0.68.0 site=react_native_fb) This comment
     * suppresses an error found when Flow v0.68 was deployed. To see the
     * error delete this comment and run Flow. ]]
		if getItemLayout and not parentProps.debug and not fillRateHelper:enabled() then nil else self.props.onLayout
	-- NOTE: that when this is a sticky header, `onLayout` will get automatically extracted and
	-- called explicitly by `ScrollViewStickyHeader`.
	local itemSeparator = if ItemSeparatorComponent
		then React.createElement(
			ItemSeparatorComponent,
			Object.assign(self.state.separatorProps, {
				LayoutOrder = if inversionStyle then -1 else 1,
			})
		)
		else ItemSeparatorComponent
	local cellStyle = if Boolean.toJSBoolean(inversionStyle)
		then if horizontal then { styles.rowReverse, inversionStyle } else { styles.columnReverse, inversionStyle }
		else if horizontal then { styles.row, inversionStyle } else inversionStyle
	local result = if not Boolean.toJSBoolean(CellRendererComponent)
		then --[[ $FlowFixMe[incompatible-type-arg] (>=0.89.0 site=react_native_fb) *
      This comment suppresses an error found when Flow v0.89 was deployed. *
      To see the error, delete this comment and run Flow. ]]
			React.createElement(
				View,
				{
					Name = "CellRendererView",
					style = cellStyle,
					onLayout = onLayout,
					LayoutOrder = if inversionStyle then -index else index,
					AutomaticSize = if horizontal then Enum.AutomaticSize.X else Enum.AutomaticSize.Y,
					nativeRef = self._nativeRef,
				},
				if itemSeparator
					then React.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = if horizontal
							then Enum.FillDirection.Horizontal
							else Enum.FillDirection.Vertical,
					})
					else nil,
				element,
				itemSeparator
			)
		else React.createElement(
			CellRendererComponent,
			Object.assign(
				table.clone(self.props),
				{ style = cellStyle, onLayout = onLayout, nativeRef = self._nativeRef }
			),
			if itemSeparator
				then React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = if horizontal then Enum.FillDirection.Horizontal else Enum.FillDirection.Vertical,
				})
				else nil,
			element,
			itemSeparator
		)

	return React.createElement(VirtualizedListCellContextProvider, { cellKey = self.props.cellKey }, result)
end

function describeNestedLists(
	childList: {
		cellKey: string,
		key: string,
		ref: VirtualizedList,
		parentDebugInfo: ListDebugInfo,
		horizontal: boolean,
	}
): string
	local trace = "VirtualizedList trace:\n"
		.. ("  Child (%s):\n"):format(if Boolean.toJSBoolean(childList.horizontal) then "horizontal" else "vertical")
		.. ("    listKey: %s\n"):format(childList.key)
		.. ("    cellKey: %s"):format(childList.cellKey)
	local debugInfo = childList.parentDebugInfo
	while debugInfo do
		-- debugInfo = debugInfo :: ListDebugInfo -- ROBLOX deviation cast as not nil
		trace ..= ("\n  Parent (%s):\n"):format(if debugInfo.horizontal then "horizontal" else "vertical") .. (
			"    listKey: %s\n"
		):format(debugInfo.listKey) .. ("    cellKey: %s"):format(debugInfo.cellKey)
		debugInfo = debugInfo.parent :: ListDebugInfo -- ROBLOX FIXME Luau: it's ListDebugInfo? but I think in this scope it's non optional
	end
	return trace
end

styles = StyleSheet.create({
	verticallyInverted = {
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
	},
	horizontallyInverted = {
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	},
	row = { AutomaticSize = Enum.AutomaticSize.X, Size = UDim2.new(0, 0, 1, 0) },
	column = { AutomaticSize = Enum.AutomaticSize.Y },
	rowReverse = { flexDirection = "row-reverse", AutomaticSize = Enum.AutomaticSize.X, Size = UDim2.new(0, 0, 1, 0) },
	columnReverse = { flexDirection = "column-reverse", AutomaticSize = Enum.AutomaticSize.Y },
	debug = { flex = 1 },
	debugOverlayBase = { position = "absolute", top = 0, right = 0 },
	debugOverlay = { bottom = 0, width = 20, borderColor = "blue", borderWidth = 1 },
	debugOverlayFrame = { left = 0, backgroundColor = "orange" },
	debugOverlayFrameLast = { left = 0, borderColor = "green", borderWidth = 2 },
	debugOverlayFrameVis = { left = 0, borderColor = "red", borderWidth = 2 },
})

return VirtualizedList
