-- One virtualized list on a ScrollingFrame. Core settles each transaction;
-- this module presents the record's changed ItemViews through Host placement
-- and hands the Canvas to the ScrollHost.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local HostPlacement = require(Root.RobloxAdapter.HostPlacement)
local HostPresentationPhase = require(Root.RobloxAdapter.HostPresentationPhase)
local ScrollHost = require(Root.RobloxAdapter.ScrollHost)
local createRecyclingScope = require(Root.RobloxAdapter.createRecyclingScope)

local Axis = Core.Axis
local Layout = Core.Layout
local ShallowTable = Core.Adapter._Private.ShallowTable

export type ItemAssignment<T> = Core.Assignment<T>
export type AutoScrollResult = false | Core.AutoScrollTarget
export type AutoScrollCallback = (Core.DataSourceChangeBatch, Core.ScrollState) -> AutoScrollResult
export type HostPlacementState<T> = HostPlacement.PhysicalState<T>
export type MeasurementDependencies = HostPlacement.MeasurementDependencies

-- Applies Host placement for ItemViews of this list.
export type HostPlacementSink<ItemView, T> = {
	apply: (itemView: ItemView, state: HostPlacementState<T>?) -> (),
	setMeasurementDependencies: (itemView: ItemView, dependencies: MeasurementDependencies?) -> (),
}

-- Presents one ItemView's current View state, or clears it when `state` is
-- nil. `assignmentChanged` is true when the Assignment reference changed.
export type PresentItemView<ItemView, T> = (
	itemView: ItemView,
	state: Core.ViewState<T>?,
	assignmentChanged: boolean,
	sink: HostPlacementSink<ItemView, T>
) -> ()

-- Everything `update` replaces. A nil field is unset.
export type Configuration<T, ItemViewType> = {
	scrollingFrame: ScrollingFrame?,
	-- Optional non-scrolling sibling used for sticky and pinned ItemViews.
	viewportOverlay: GuiObject?,
	axis: Core.Axis,
	dataSource: Core.DataSource<T>,
	layout: Layout.Runtime,
	-- Non-negative integer layout units beyond each visible-range end.
	-- Linear layouts use items; grids use rows. Defaults to 1.
	overscan: number?,
	dataPrefetch: Core.DataPrefetchOptions?,
	contentAlignment: Core.ScrollAlignment?,
	isItemStickyHeader: ((key: string) -> boolean)?,
	pinnedStartItem: Core.PinnedItem<T, ItemViewType>?,
	pinnedEndItem: Core.PinnedItem<T, ItemViewType>?,
	preserveScrollPositionOnChange: boolean?,
	initialScrollAlignment: Core.ScrollAlignment?,
	autoScrollOnChange: (Core.AutoScrollPolicy | AutoScrollCallback)?,
	-- Distance from the followed edge, in pixels or a viewport fraction,
	-- within which the list follows it. Defaults to 1.
	autoScrollThreshold: Core.ReachedThreshold?,
	onStartReached: (() -> ())?,
	onEndReached: (() -> ())?,
	startReachedThreshold: Core.ReachedThreshold?,
	endReachedThreshold: Core.ReachedThreshold?,
	onViewportChanged: ((size: Vector2) -> ())?,
	onScrollOffsetChanged: ((offset: number) -> ())?,
	onContentLengthChanged: ((contentLength: number) -> ())?,
	onVisibleRangeChanged: ((range: Core.IndexRange) -> ())?,
	onMountedRangeChanged: ((range: Core.IndexRange) -> ())?,
	onDataPrefetchRequested: ((request: Core.DataPrefetchRequest) -> ())?,
}

export type Options<ItemView, T, ItemViewType> = Configuration<T, ItemViewType> & {
	recyclingScope: createRecyclingScope.RecyclingScope<ItemView, ItemViewType>,
	getItemViewType: (item: T, index: number) -> ItemViewType,
	-- Called when an ItemView's Assignment changes, between its hidden and
	-- presented placement. Used only by the default presentation.
	transition: ((itemView: ItemView, assignment: Core.Assignment<T>?) -> ())?,
	getInstance: ((itemView: ItemView) -> GuiObject)?,
	-- Replaces the default GuiObject presentation.
	presentItemView: PresentItemView<ItemView, T>?,
	onItemViewPresentationChanged: ((itemView: ItemView, assignment: Core.Assignment<T>?) -> ())?,
	-- Starts inactive when false. Defaults to true.
	active: boolean?,
	diagnostics: Core.DiagnosticCallback?,
}

export type Virtualizer<T, ItemViewType> = {
	update: (configuration: Configuration<T, ItemViewType>) -> (),
	setActive: (active: boolean) -> (),
	setScrollOffset: (offset: number) -> (),
	scrollToOffset: (offset: number) -> number,
	scrollToStart: () -> (),
	scrollToEnd: () -> (),
	scrollBy: (delta: number) -> number,
	scrollToIndex: (index: number, options: { alignment: Core.ScrollAlignment? }?) -> (),
	setDataSource: (dataSource: Core.DataSource<T>) -> (),
	setLayout: (layout: Layout.Runtime) -> (),
	setDataSourceAndLayout: (dataSource: Core.DataSource<T>, layout: Layout.Runtime) -> (),
	setOverscan: (overscan: number?) -> (),
	setDataPrefetch: (options: Core.DataPrefetchOptions?) -> (),
	setContentAlignment: (alignment: Core.ScrollAlignment?) -> (),
	setPinnedItems: (
		options: {
			isItemStickyHeader: ((key: string) -> boolean)?,
			pinnedStartItem: Core.PinnedItem<T, ItemViewType>?,
			pinnedEndItem: Core.PinnedItem<T, ItemViewType>?,
		}
	) -> (),
	setPreserveScrollPositionOnChange: (enabled: boolean) -> (),
	refreshItemViews: () -> (),
	isReady: () -> boolean,
	getVisibleRange: () -> Core.IndexRange,
	getMountedRange: () -> Core.IndexRange,
	getScrollState: () -> Core.ScrollState,
	captureScrollAnchorSnapshot: () -> Core.ScrollAnchorSnapshot,
	restoreScrollAnchorSnapshot: (snapshot: Core.ScrollAnchorSnapshot) -> number,
	destroy: () -> (),
}

local CONFIGURATION_KEYS = table.freeze({
	"scrollingFrame",
	"viewportOverlay",
	"axis",
	"dataSource",
	"layout",
	"overscan",
	"dataPrefetch",
	"contentAlignment",
	"isItemStickyHeader",
	"pinnedStartItem",
	"pinnedEndItem",
	"preserveScrollPositionOnChange",
	"initialScrollAlignment",
	"autoScrollOnChange",
	"autoScrollThreshold",
	"onStartReached",
	"onEndReached",
	"startReachedThreshold",
	"endReachedThreshold",
	"onViewportChanged",
	"onScrollOffsetChanged",
	"onContentLengthChanged",
	"onVisibleRangeChanged",
	"onMountedRangeChanged",
	"onDataPrefetchRequested",
})

local SCROLL_HOST_KEYS = table.freeze({
	"axis",
	"onStartReached",
	"onEndReached",
	"onViewportChanged",
	"onScrollOffsetChanged",
	"onContentLengthChanged",
})

local POLICY_KEYS = table.freeze({
	"overscan",
	"dataPrefetch",
	"contentAlignment",
	"endReachedThreshold",
	"initialScrollAlignment",
	"autoScrollOnChange",
	"autoScrollThreshold",
	"startReachedThreshold",
	"preserveScrollPositionOnChange",
	"isItemStickyHeader",
})

local function pick<T>(source: any): Configuration<T, any>
	local configuration = {}
	for _, key in CONFIGURATION_KEYS do
		configuration[key] = source[key]
	end
	return configuration :: any
end

local function samePinnedItem(left: Core.PinnedItem<any, any>?, right: Core.PinnedItem<any, any>?): boolean
	return ShallowTable.equal(left or {}, right or {})
end

local function samePolicy(before: Configuration<any, any>, after: Configuration<any, any>): boolean
	return ShallowTable.containsEqual(before, after, POLICY_KEYS)
		and (before.onStartReached == nil) == (after.onStartReached == nil)
		and (before.onEndReached == nil) == (after.onEndReached == nil)
		and samePinnedItem(before.pinnedStartItem, after.pinnedStartItem)
		and samePinnedItem(before.pinnedEndItem, after.pinnedEndItem)
end

local function stackedSpacing(configuration: Configuration<any, any>): number?
	local getSpacing = configuration.layout.stackedSpacing
	return if getSpacing == nil then nil else getSpacing()
end

-- Measured Items paint at their own lengths only when stacked; placed
-- absolutely, they would paint at estimated offsets until measured.
local function assertPlaceable(layout: Layout.Runtime)
	assert(
		not layout.requiresItemMeasurement() or layout.stackedSpacing ~= nil,
		"createVirtualizer: a Layout that requires Item measurement must be a Stacked layout"
	)
end

local function corePolicy(configuration: Configuration<any, any>): any
	return {
		overscan = configuration.overscan,
		dataPrefetch = configuration.dataPrefetch,
		contentAlignment = configuration.contentAlignment,
		endThreshold = configuration.endReachedThreshold,
		initialScrollAlignment = configuration.initialScrollAlignment,
		autoScrollOnChange = configuration.autoScrollOnChange,
		autoScrollThreshold = configuration.autoScrollThreshold,
		startReachedThreshold = configuration.startReachedThreshold,
		startReachedEnabled = configuration.onStartReached ~= nil,
		endReachedEnabled = configuration.onEndReached ~= nil,
		pinnedItems = {
			isItemStickyHeader = configuration.isItemStickyHeader,
			pinnedStartItem = configuration.pinnedStartItem,
			pinnedEndItem = configuration.pinnedEndItem,
		},
		preserveScrollPositionOnChange = configuration.preserveScrollPositionOnChange ~= false,
	}
end

local function createVirtualizer<ItemView, T, ItemViewType>(options: Options<ItemView, T, ItemViewType>): Virtualizer<T, ItemViewType>
	assert(options.axis == Axis.X or options.axis == Axis.Y, "createVirtualizer: invalid axis")
	assertPlaceable(options.layout)

	local configuration = pick(options)
	local destroyed = false
	local callbacksActive = false
	local starting = false
	local startVisibleRangeReported = false
	local startMountedRangeReported = false
	local coreVirtualizer: Core.Virtualizer<ItemView, T, ItemViewType>
	local scrollHost: ScrollHost.ScrollHost

	local hostPlacement = HostPlacement.new({
		container = configuration.scrollingFrame,
		viewportContainer = configuration.viewportOverlay,
		axis = configuration.axis,
		selfSizing = configuration.layout.requiresItemMeasurement(),
		stackedSpacing = stackedSpacing(configuration),
		onItemMeasurements = function(measurements)
			coreVirtualizer.submitMeasurements(measurements)
		end,
		onItemViewPresentationChanged = options.onItemViewPresentationChanged,
		getCanvasOriginOffset = function()
			return if scrollHost == nil then 0 else scrollHost.getCanvasOriginOffset()
		end,
	})
	local sink: HostPlacementSink<ItemView, T> = table.freeze({
		apply = hostPlacement.apply,
		setMeasurementDependencies = hostPlacement.setMeasurementDependencies,
	})

	local presentItemView: PresentItemView<ItemView, T> = options.presentItemView
		or function(itemView, state, assignmentChanged, placement)
			local transition = options.transition
			if state == nil then
				placement.apply(itemView, nil)
				if assignmentChanged and transition ~= nil then
					transition(itemView, nil)
				end
				return
			end
			local instance = if options.getInstance ~= nil then options.getInstance(itemView) else itemView :: any
			assert(
				typeof(instance) == "Instance" and instance:IsA("GuiObject"),
				"createVirtualizer: ItemView host must be a GuiObject"
			)
			if assignmentChanged then
				placement.apply(itemView, {
					host = instance,
					phase = HostPresentationPhase.Hidden,
					state = state,
				})
				if transition ~= nil then
					transition(itemView, state.assignment)
				end
			end
			placement.apply(itemView, {
				host = instance,
				phase = HostPresentationPhase.Presented,
				state = state,
			})
		end

	local assignmentByItemView: { [ItemView]: Core.Assignment<T> } = setmetatable({}, { __mode = "k" }) :: any

	local function present(itemView: ItemView, state: Core.ViewState<T>?)
		local assignment = if state == nil then nil else state.assignment
		local assignmentChanged = assignmentByItemView[itemView] ~= assignment
		if assignmentChanged then
			assignmentByItemView[itemView] = assignment
		end
		presentItemView(itemView, state, assignmentChanged, sink)
	end

	local presentingRecord: Core.VirtualizerRecord<ItemView, T>? = nil

	local function presentChanges()
		local record = presentingRecord :: Core.VirtualizerRecord<ItemView, T>
		presentingRecord = nil
		hostPlacement.setMountedWindow(record, function()
			for _, itemView in record.departed do
				present(itemView, nil)
			end
			for _, mounted in record.entered do
				present(mounted.itemView, mounted.state)
			end
			for _, mounted in record.updated do
				present(mounted.itemView, mounted.state)
			end
		end)
	end

	local function applyRecord(
		previous: Core.VirtualizerRecord<ItemView, T>,
		current: Core.VirtualizerRecord<ItemView, T>
	)
		presentingRecord = current
		scrollHost.applyRecord(current, presentChanges)
		if not callbacksActive then
			return
		end
		if previous.visibleRange ~= current.visibleRange then
			if starting then
				startVisibleRangeReported = true
			end
			if configuration.onVisibleRangeChanged ~= nil then
				configuration.onVisibleRangeChanged(current.visibleRange)
			end
		end
		if previous.mountedRange ~= current.mountedRange then
			if starting then
				startMountedRangeReported = true
			end
			if configuration.onMountedRangeChanged ~= nil then
				configuration.onMountedRangeChanged(current.mountedRange)
			end
		end
		if configuration.onDataPrefetchRequested ~= nil then
			for _, request in current.dataPrefetchRequests do
				configuration.onDataPrefetchRequested(request)
			end
		end
	end

	local policy = corePolicy(configuration)
	coreVirtualizer = Core.Adapter.createVirtualizer({
		dataSource = configuration.dataSource,
		layout = configuration.layout,
		recyclingScope = options.recyclingScope,
		getItemViewType = options.getItemViewType,
		overscan = policy.overscan,
		dataPrefetch = policy.dataPrefetch,
		contentAlignment = policy.contentAlignment,
		endThreshold = policy.endThreshold,
		initialScrollAlignment = policy.initialScrollAlignment,
		autoScrollOnChange = policy.autoScrollOnChange,
		autoScrollThreshold = policy.autoScrollThreshold,
		startReachedThreshold = policy.startReachedThreshold,
		startReachedEnabled = policy.startReachedEnabled,
		endReachedEnabled = policy.endReachedEnabled,
		isItemStickyHeader = policy.pinnedItems.isItemStickyHeader,
		pinnedStartItem = policy.pinnedItems.pinnedStartItem,
		pinnedEndItem = policy.pinnedItems.pinnedEndItem,
		preserveScrollPositionOnChange = policy.preserveScrollPositionOnChange,
		diagnostics = options.diagnostics,
		onTransaction = applyRecord,
	})

	scrollHost = ScrollHost.new({
		observeScrollOffset = coreVirtualizer.observeScrollOffset,
		setViewportSize = coreVirtualizer.setViewportSize,
		getCurrent = coreVirtualizer.getCurrent,
		getInstance = function()
			return if destroyed then nil else configuration.scrollingFrame
		end,
		getConfiguration = function()
			return configuration
		end,
		onCanvasOriginMoved = hostPlacement.reposition,
	})

	local function update(nextConfiguration: Configuration<T, ItemViewType>)
		if destroyed then
			return
		end
		local previous = configuration
		local after = pick(nextConfiguration)
		assert(after.axis == Axis.X or after.axis == Axis.Y, "createVirtualizer: invalid axis")
		assertPlaceable(after.layout)
		local dataSourceChanged = after.dataSource ~= previous.dataSource
		local layoutChanged = after.layout ~= previous.layout
		local scrollingFrameChanged = after.scrollingFrame ~= previous.scrollingFrame
		local canvasChanged = scrollingFrameChanged
			or after.viewportOverlay ~= previous.viewportOverlay
			or after.axis ~= previous.axis
			or layoutChanged
			or (after.isItemStickyHeader == nil) ~= (previous.isItemStickyHeader == nil)
		configuration = after

		if dataSourceChanged or layoutChanged then
			hostPlacement.cancelPendingMeasurements()
			if dataSourceChanged and layoutChanged then
				coreVirtualizer.setDataSourceAndLayout(after.dataSource, after.layout)
			elseif dataSourceChanged then
				coreVirtualizer.setDataSource(after.dataSource)
			else
				coreVirtualizer.setLayout(after.layout)
			end
		end
		if canvasChanged then
			hostPlacement.setConfiguration({
				container = after.scrollingFrame,
				viewportContainer = after.viewportOverlay,
				axis = after.axis,
				selfSizing = after.layout.requiresItemMeasurement(),
				stackedSpacing = stackedSpacing(after),
			})
		end
		if not samePolicy(previous, after) then
			coreVirtualizer.setPolicy(corePolicy(after))
		end
		if not ShallowTable.containsEqual(previous, after, SCROLL_HOST_KEYS) then
			scrollHost.configurationChanged()
		end
		if scrollingFrameChanged then
			scrollHost.scrollingFrameChanged()
		end
	end

	local function updateWith(change: (Configuration<T, ItemViewType>) -> ())
		local nextConfiguration = table.clone(configuration)
		change(nextConfiguration)
		update(nextConfiguration)
	end

	local disconnectScrollHost: (() -> ())? = nil

	local function destroy()
		if destroyed then
			return
		end
		destroyed = true
		if disconnectScrollHost ~= nil then
			disconnectScrollHost()
			disconnectScrollHost = nil
		end
		coreVirtualizer.destroy()
		hostPlacement.destroy()
	end

	if options.active == false then
		coreVirtualizer.setActive(false)
	end
	disconnectScrollHost = scrollHost.connect()
	callbacksActive = true
	starting = true
	local started, failure = pcall(coreVirtualizer.activate)
	starting = false
	if not started then
		destroy()
		error(failure, 0)
	end
	local initial = coreVirtualizer.getCurrent()
	if not startVisibleRangeReported and configuration.onVisibleRangeChanged ~= nil then
		configuration.onVisibleRangeChanged(initial.visibleRange)
	end
	if not startMountedRangeReported and configuration.onMountedRangeChanged ~= nil then
		configuration.onMountedRangeChanged(initial.mountedRange)
	end

	return {
		update = update,
		setActive = function(active)
			if not destroyed then
				coreVirtualizer.setActive(active)
			end
		end,
		setScrollOffset = function(offset)
			coreVirtualizer.setScrollOffset(offset)
		end,
		scrollToOffset = function(offset)
			return coreVirtualizer.scrollToOffset(offset).scrollState.scrollOffset
		end,
		scrollToStart = function()
			coreVirtualizer.scrollToStart()
		end,
		scrollToEnd = function()
			coreVirtualizer.scrollToEnd()
		end,
		scrollBy = function(delta)
			return coreVirtualizer.scrollBy(delta).scrollState.scrollOffset
		end,
		scrollToIndex = function(index, scrollOptions)
			if scrollHost.isReady() then
				coreVirtualizer.scrollToIndex(index, scrollOptions and scrollOptions.alignment)
			end
		end,
		setDataSource = function(dataSource)
			updateWith(function(nextConfiguration)
				nextConfiguration.dataSource = dataSource
			end)
		end,
		setLayout = function(layout)
			updateWith(function(nextConfiguration)
				nextConfiguration.layout = layout
			end)
		end,
		setDataSourceAndLayout = function(dataSource, layout)
			updateWith(function(nextConfiguration)
				nextConfiguration.dataSource = dataSource
				nextConfiguration.layout = layout
			end)
		end,
		setOverscan = function(overscan)
			updateWith(function(nextConfiguration)
				nextConfiguration.overscan = overscan
			end)
		end,
		setDataPrefetch = function(dataPrefetch)
			updateWith(function(nextConfiguration)
				nextConfiguration.dataPrefetch = dataPrefetch
			end)
		end,
		setContentAlignment = function(contentAlignment)
			updateWith(function(nextConfiguration)
				nextConfiguration.contentAlignment = contentAlignment
			end)
		end,
		setPinnedItems = function(pinnedItems)
			updateWith(function(nextConfiguration)
				nextConfiguration.isItemStickyHeader = pinnedItems.isItemStickyHeader
				nextConfiguration.pinnedStartItem = pinnedItems.pinnedStartItem
				nextConfiguration.pinnedEndItem = pinnedItems.pinnedEndItem
			end)
		end,
		setPreserveScrollPositionOnChange = function(enabled)
			updateWith(function(nextConfiguration)
				nextConfiguration.preserveScrollPositionOnChange = enabled
			end)
		end,
		refreshItemViews = function()
			coreVirtualizer.refresh()
		end,
		isReady = scrollHost.isReady,
		getVisibleRange = function()
			return coreVirtualizer.getCurrent().visibleRange
		end,
		getMountedRange = function()
			return coreVirtualizer.getCurrent().mountedRange
		end,
		getScrollState = function()
			return coreVirtualizer.getCurrent().scrollState
		end,
		captureScrollAnchorSnapshot = function()
			return coreVirtualizer.captureScrollAnchorSnapshot()
		end,
		restoreScrollAnchorSnapshot = function(snapshot)
			return coreVirtualizer.restoreScrollAnchorSnapshot(snapshot).scrollState.scrollOffset
		end,
		destroy = destroy,
	}
end

return createVirtualizer
