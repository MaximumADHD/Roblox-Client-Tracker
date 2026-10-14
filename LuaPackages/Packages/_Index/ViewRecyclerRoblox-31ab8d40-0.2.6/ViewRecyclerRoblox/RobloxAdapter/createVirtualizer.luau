local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local AutoScroll = Core.Adapter.ScrollPolicy.AutoScroll
local Axis = Core.Axis
local Layout = Core.Layout
local ScrollingFrameVirtualizer = require(Root.RobloxAdapter.ScrollingFrameVirtualizer)
local createRecyclingScope = require(Root.RobloxAdapter.createRecyclingScope)

export type ItemAssignment<T> = Core.ItemAssignment<T>
export type AutoScrollResult = AutoScroll.Result
export type AutoScrollCallback = AutoScroll.Callback

export type Options<ItemView, T, ItemViewType> = {
	scrollingFrame: ScrollingFrame,
	-- Optional non-scrolling sibling used for sticky and pinned ItemViews.
	viewportOverlay: GuiObject?,
	axis: Core.Axis,
	dataSource: Core.DataSource<T>,
	layout: Layout.Runtime,
	recyclingScope: createRecyclingScope.RecyclingScope<ItemView, T, ItemViewType>,
	getItemViewType: (item: T, index: number) -> ItemViewType,
	getInstance: ((itemView: ItemView) -> GuiObject)?,
	-- Non-negative integer layout units beyond each visible-range end.
	-- Linear layouts use items; grids use rows. Defaults to 1.
	overscan: number?,
	overscanPolicy: Core.OverscanPolicy?,
	dataPrefetch: Core.DataPrefetchOptions?,
	contentAlignment: Core.ScrollAlignment?,
	isItemStickyHeader: ((item: T, index: number) -> boolean)?,
	pinnedStartItem: Core.PinnedItem<T, ItemViewType>?,
	pinnedEndItem: Core.PinnedItem<T, ItemViewType>?,
	preserveScrollPositionOnChange: boolean?,
	initialScrollAlignment: Core.ScrollAlignment?,
	autoScrollOnChange: (Core.AutoScrollPolicy | AutoScrollCallback)?,
	onStartReached: (() -> ())?,
	onEndReached: (() -> ())?,
	startReachedThreshold: number?,
	endReachedThreshold: number?,
	onViewportChanged: ((size: Vector2) -> ())?,
	onScrollOffsetChanged: ((offset: number) -> ())?,
	onContentLengthChanged: ((contentLength: number) -> ())?,
	onVisibleRangeChanged: ((range: Core.IndexRange) -> ())?,
	onMountedRangeChanged: ((range: Core.IndexRange) -> ())?,
	onDataPrefetchRequested: ((request: Core.DataPrefetchRequest) -> ())?,
	diagnostics: Core.DiagnosticCallback?,
}

export type Virtualizer<T, ItemViewType> = {
	setScrollOffset: (offset: number) -> (),
	scrollToOffset: (offset: number) -> number,
	scrollBy: (delta: number) -> number,
	scrollToIndex: (index: number, options: { alignment: Core.ScrollAlignment? }?) -> (),
	setDataSource: (dataSource: Core.DataSource<T>) -> (),
	setLayout: (layout: Layout.Runtime) -> (),
	setDataSourceAndLayout: (dataSource: Core.DataSource<T>, layout: Layout.Runtime) -> (),
	setOverscan: (overscan: number?) -> (),
	setOverscanPolicy: (policy: Core.OverscanPolicy) -> (),
	setDataPrefetch: (options: Core.DataPrefetchOptions?) -> (),
	setContentAlignment: (alignment: Core.ScrollAlignment?) -> (),
	setPinnedItems: (
		options: {
			isItemStickyHeader: ((item: T, index: number) -> boolean)?,
			pinnedStartItem: Core.PinnedItem<T, ItemViewType>?,
			pinnedEndItem: Core.PinnedItem<T, ItemViewType>?,
		}
	) -> (),
	setMaxPoolSize: (maximum: number?) -> (),
	setPreserveScrollPositionOnChange: (enabled: boolean) -> (),
	refreshItemViews: () -> (),
	getVisibleRange: () -> Core.IndexRange,
	getMountedRange: () -> Core.IndexRange,
	getScrollState: () -> Core.ScrollState,
	captureScrollAnchorSnapshot: () -> Core.ScrollAnchorSnapshot,
	restoreScrollAnchorSnapshot: (snapshot: Core.ScrollAnchorSnapshot) -> number,
	destroy: () -> (),
}

local function createVirtualizer<ItemView, T, ItemViewType>(options: Options<ItemView, T, ItemViewType>): Virtualizer<T, ItemViewType>
	assert(options.axis == Axis.X or options.axis == Axis.Y, "createVirtualizer: invalid axis")

	local scrollingFrame = options.scrollingFrame
	local axis = options.axis
	local dataSource = options.dataSource
	local recyclingScope = options.recyclingScope
	local destroyed = false

	local function getInstance(itemView: ItemView): GuiObject
		local instance = if options.getInstance ~= nil then options.getInstance(itemView) else itemView :: any
		assert(
			typeof(instance) == "Instance" and instance:IsA("GuiObject"),
			"createVirtualizer: ItemView host must be a GuiObject"
		)
		return instance
	end

	local layout = options.layout
	local coreVirtualizer: Core.Virtualizer<ItemView, T, ItemViewType>
	local scrollingFrameVirtualizer: ScrollingFrameVirtualizer.ScrollingFrameVirtualizer<T>

	local function scrollToOffset(offset: number): number
		return coreVirtualizer.dispatch({ type = Core.VirtualizerCommandType.ScrollToOffset, offset = offset }).result
	end

	local function scrollBy(delta: number): number
		return coreVirtualizer.dispatch({ type = Core.VirtualizerCommandType.ScrollBy, delta = delta }).result
	end

	local function restoreScrollAnchorSnapshot(snapshot: Core.ScrollAnchorSnapshot): number
		return coreVirtualizer.dispatch({
			type = Core.VirtualizerCommandType.RestoreScrollAnchorSnapshot,
			snapshot = snapshot,
		}).result
	end

	local getItemViewType = options.getItemViewType
	local corePolicy: ScrollingFrameVirtualizer.CorePolicy<T> = {
		overscan = options.overscan,
		overscanPolicy = options.overscanPolicy,
		dataPrefetch = options.dataPrefetch,
		contentAlignment = options.contentAlignment,
		endThreshold = options.endReachedThreshold,
		pinnedItems = {
			isItemStickyHeader = options.isItemStickyHeader,
			pinnedStartItem = options.pinnedStartItem,
			pinnedEndItem = options.pinnedEndItem,
		},
		preserveScrollPositionOnChange = options.preserveScrollPositionOnChange ~= false,
	}

	local function getListHostConfiguration(): ScrollingFrameVirtualizer.ListHostConfiguration<T>
		return {
			axis = axis,
			dataSource = dataSource,
			layout = layout,
			initialScrollAlignment = options.initialScrollAlignment,
			autoScrollOnChange = options.autoScrollOnChange,
			startReachedThreshold = options.startReachedThreshold,
			onStartReached = options.onStartReached,
			onEndReached = options.onEndReached,
			onViewportChanged = options.onViewportChanged,
			onScrollOffsetChanged = options.onScrollOffsetChanged,
			onContentLengthChanged = options.onContentLengthChanged,
			onVisibleRangeChanged = options.onVisibleRangeChanged,
			onMountedRangeChanged = options.onMountedRangeChanged,
			onDataPrefetchRequested = options.onDataPrefetchRequested,
		}
	end

	local function commitConfiguration()
		scrollingFrameVirtualizer.update({
			hostConfiguration = getListHostConfiguration(),
			hostTarget = {
				scrollingFrame = scrollingFrame,
				viewportOverlay = options.viewportOverlay,
			},
			corePolicy = corePolicy,
		})
	end

	local function updateCorePolicy(update: (ScrollingFrameVirtualizer.CorePolicy<T>) -> ())
		local nextPolicy = table.clone(corePolicy)
		update(nextPolicy)
		corePolicy = nextPolicy
		commitConfiguration()
	end

	scrollingFrameVirtualizer = ScrollingFrameVirtualizer.newForGuiObjects({
		initialHostConfiguration = getListHostConfiguration(),
		initialHostTarget = {
			scrollingFrame = scrollingFrame,
			viewportOverlay = options.viewportOverlay,
		},
		initialCorePolicy = corePolicy,
		getGuiObject = getInstance,
		core = {
			recyclingScope = recyclingScope,
			getItemViewType = getItemViewType,
			diagnostics = options.diagnostics,
		},
		prepareAssignment = nil,
		onItemViewAssignmentChanged = recyclingScope.updateItemView,
		onItemViewPresentationChanged = nil,
	})
	coreVirtualizer = scrollingFrameVirtualizer
	coreVirtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
	scrollingFrameVirtualizer.connect()

	local function setDataSource(newDataSource: Core.DataSource<T>)
		dataSource = newDataSource
		commitConfiguration()
	end

	local function setLayout(newLayout: Layout.Runtime)
		layout = newLayout
		commitConfiguration()
	end

	local function setDataSourceAndLayout(newDataSource: Core.DataSource<T>, newLayout: Layout.Runtime)
		dataSource = newDataSource
		layout = newLayout
		commitConfiguration()
	end

	local function destroy()
		if destroyed then
			return
		end
		destroyed = true
		scrollingFrameVirtualizer.destroy()
	end

	return {
		setScrollOffset = function(offset)
			coreVirtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = offset })
		end,
		scrollToOffset = scrollToOffset,
		scrollBy = scrollBy,
		scrollToIndex = function(index, scrollOptions)
			coreVirtualizer.dispatch({
				type = Core.VirtualizerCommandType.ScrollToIndex,
				index = index,
				alignment = scrollOptions and scrollOptions.alignment,
			})
		end,
		setDataSource = setDataSource,
		setLayout = setLayout,
		setDataSourceAndLayout = setDataSourceAndLayout,
		setOverscan = function(overscan)
			updateCorePolicy(function(policy)
				policy.overscan = overscan
				policy.overscanPolicy = nil
			end)
		end,
		setOverscanPolicy = function(overscanPolicy)
			updateCorePolicy(function(policy)
				policy.overscanPolicy = overscanPolicy
			end)
		end,
		setDataPrefetch = function(dataPrefetch)
			updateCorePolicy(function(policy)
				policy.dataPrefetch = dataPrefetch
			end)
		end,
		setContentAlignment = function(contentAlignment)
			updateCorePolicy(function(policy)
				policy.contentAlignment = contentAlignment
			end)
		end,
		setPinnedItems = function(pinnedItems)
			updateCorePolicy(function(policy)
				policy.pinnedItems = table.clone(pinnedItems)
			end)
		end,
		setMaxPoolSize = function(maximum)
			recyclingScope.setMaxPoolSize(maximum)
		end,
		setPreserveScrollPositionOnChange = function(enabled)
			updateCorePolicy(function(policy)
				policy.preserveScrollPositionOnChange = enabled
			end)
		end,
		refreshItemViews = function()
			coreVirtualizer.dispatch({ type = Core.VirtualizerCommandType.Refresh })
		end,
		getVisibleRange = function()
			return coreVirtualizer.getSnapshot().visibleRange
		end,
		getMountedRange = function()
			return coreVirtualizer.getSnapshot().mountedRange
		end,
		getScrollState = function()
			return coreVirtualizer.query({ type = Core.VirtualizerQueryType.GetScrollState })
		end,
		captureScrollAnchorSnapshot = function()
			return coreVirtualizer.query({ type = Core.VirtualizerQueryType.CaptureScrollAnchorSnapshot })
		end,
		restoreScrollAnchorSnapshot = restoreScrollAnchorSnapshot,
		destroy = destroy,
	}
end

return createVirtualizer
