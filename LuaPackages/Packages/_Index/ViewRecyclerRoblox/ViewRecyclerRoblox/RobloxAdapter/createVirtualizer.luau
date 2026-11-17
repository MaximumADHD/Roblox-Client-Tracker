-- One virtualized list on a ScrollingFrame. Core settles each transaction;
-- this module presents the record's changed ItemViews through Host placement
-- and hands the Canvas to the ScrollHost.
local FFlagViewRecyclerReact084 =
	require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact084
local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact08
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local AttachedViewportOverlay = require(Root.RobloxAdapter.AttachedViewportOverlay)
local HostPlacement = require(Root.RobloxAdapter.HostPlacement)
local HostPresentationPhase = require(Root.RobloxAdapter.HostPresentationPhase)

local ReducedMotion = require(Root.RobloxAdapter.ReducedMotion)
local ScrollHost = require(Root.RobloxAdapter.ScrollHost)

local VacantHosts = require(Root.RobloxAdapter.VacantHosts)
local VirtualizerConfigurationKeys = require(Root.RobloxAdapter.VirtualizerConfigurationKeys)
local VisibleItemsPresentation = require(Root.RobloxAdapter.VisibleItemsPresentation)
local createRecyclingScope = require(Root.RobloxAdapter.createRecyclingScope)

local Axis = Core.Axis

local ReachedThreshold = Core.Adapter._Private.ReachedThreshold
local ScrollMotion = Core.Adapter._Private.ScrollMotion
local ShallowTable = Core.Adapter._Private.ShallowTable

export type ItemAssignment<T> = Core.Assignment<T>
export type HostPlacementState<T> = HostPlacement.PhysicalState<T>
export type VisibleItemsPresentation = VisibleItemsPresentation.Presentation

-- Applies Host placement for ItemViews of this list.
export type HostPlacementSink<ItemView, T> = {
	apply: (itemView: ItemView, state: HostPlacementState<T>?) -> (),
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
	-- Without one, the list adds its own beside `scrollingFrame` while any
	-- Item is sticky or pinned.
	viewportOverlay: GuiObject?,
	axis: Core.Axis,
	dataSource: Core.DataSource<T>,
	layout: Core.LayoutRuntime,
	-- Non-negative integer layout units beyond each visible-range end.
	-- Linear layouts use items; grids use rows. Defaults to 1.
	overscan: number?,
	dataPrefetch: Core.DataPrefetchOptions?,
	contentAlignment: Core.ScrollAlignment?,
	isItemStickyHeader: ((key: string) -> boolean)?,
	pinnedStartItem: Core.PinnedItem<T, ItemViewType>?,
	pinnedEndItem: Core.PinnedItem<T, ItemViewType>?,
	preserveScrollPositionOnChange: boolean?,
	initialScrollAlignment: Core.InitialScrollAlignment?,
	autoScrollOnChange: Core.AutoScrollPolicy?,
	-- Distance from the followed edge, in pixels or a viewport fraction,
	-- within which the list follows it. Defaults to 1.
	autoScrollThreshold: Core.ReachedThreshold?,
	-- The motion of every Animated scroll, field by field, unless a scroll
	-- command sets the field itself.
	animatedScroll: Core.AnimatedScrollOptions?,
	onStartReached: (() -> ())?,
	onEndReached: (() -> ())?,
	startReachedThreshold: Core.ReachedThreshold?,
	endReachedThreshold: Core.ReachedThreshold?,
	onViewportChanged: ((size: Vector2) -> ())?,
	onScrollOffsetChanged: ((offset: number) -> ())?,
	onContentLengthChanged: ((contentLength: number) -> ())?,
	onVisibleRangeChanged: ((range: Core.IndexRange) -> ())?,
	onMountedRangeChanged: ((range: Core.IndexRange) -> ())?,
	-- Called once every Item in the Visible range is Presented, then again
	-- only after the DataSource is replaced or has no Items. Not called
	-- while the DataSource has no Items.
	onVisibleItemsPresented: ((presentation: VisibleItemsPresentation) -> ())?,
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
	-- Whether an ItemView would present a new Assignment in the frame it
	-- receives it. Omitted, every ItemView does.
	isReadyOnAssignment: ((itemView: ItemView) -> boolean)?,
	-- Starts inactive when false. Defaults to true.
	active: boolean?,
	diagnostics: Core.DiagnosticCallback?,
}

export type Virtualizer<T, ItemViewType> = {
	update: (configuration: Configuration<T, ItemViewType>) -> (),
	setActive: (active: boolean) -> (),
	-- Returns the offset the list lands at.
	scrollToOffset: (offset: number, options: Core.ScrollOptions?) -> number,
	scrollToStart: (options: Core.ScrollOptions?) -> (),
	scrollToEnd: (options: Core.ScrollOptions?) -> (),
	scrollBy: (delta: number) -> number,
	scrollToIndex: (index: number, options: (Core.ScrollOptions & { alignment: Core.ScrollAlignment? })?) -> (),
	setDataSource: (dataSource: Core.DataSource<T>) -> (),
	setLayout: (layout: Core.LayoutRuntime) -> (),
	setDataSourceAndLayout: (dataSource: Core.DataSource<T>, layout: Core.LayoutRuntime) -> (),
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

	setScrollOffset: ((offset: number) -> ())?,
}

local CONFIGURATION_KEYS
if not FFlagViewRecyclerReact084 then
	CONFIGURATION_KEYS = nil
	if not FFlagViewRecyclerReact08 then
		CONFIGURATION_KEYS = table.freeze({
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
			"onVisibleItemsPresented",
			"onDataPrefetchRequested",
		})
	end
end

local SCROLL_HOST_KEYS = table.freeze({
	"axis",
	"onStartReached",
	"onEndReached",
	"onViewportChanged",
	"onScrollOffsetChanged",
	"onContentLengthChanged",
})

local POLICY_KEYS = table.freeze((if FFlagViewRecyclerReact084
	then {
		"overscan",
		"contentAlignment",
		"initialScrollAlignment",
		"autoScrollOnChange",
		"preserveScrollPositionOnChange",
		"isItemStickyHeader",
	}
	else {
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
	}))

local THRESHOLD_KEYS, DATA_PREFETCH_KEYS, coreScrollOptions
if FFlagViewRecyclerReact084 then
	-- Compared by value: callers commonly write these tables inline.
	THRESHOLD_KEYS = table.freeze({
		"endReachedThreshold",
		"autoScrollThreshold",
		"startReachedThreshold",
	})
	DATA_PREFETCH_KEYS = table.freeze({ "startItems", "endItems" })
	-- With reduced motion, an animated command lands at once. Each motion field
	-- the command leaves unset comes from the list's `animatedScroll`.
	function coreScrollOptions(
		scrollOptions: Core.ScrollOptions?,
		default: Core.AnimatedScrollOptions?
	): Core.ScrollOptions?
		if scrollOptions == nil or scrollOptions.animated ~= true or ReducedMotion.isEnabled() then
			return nil
		end
		local fields: Core.AnimatedScrollOptions = default or {}
		return {
			animated = true,
			jumpDistance = scrollOptions.jumpDistance or fields.jumpDistance,
			frequency = scrollOptions.frequency or fields.frequency,
			cruiseSpeed = scrollOptions.cruiseSpeed or fields.cruiseSpeed,
			approachDistance = scrollOptions.approachDistance or fields.approachDistance,
			landingDistance = scrollOptions.landingDistance or fields.landingDistance,
		}
	end
end

local function pick<T>(source: any): Configuration<T, any>
	local configuration = {}
	for _, key in
		(if FFlagViewRecyclerReact084
			then VirtualizerConfigurationKeys
			else (if FFlagViewRecyclerReact08 then VirtualizerConfigurationKeys else CONFIGURATION_KEYS))
	do
		configuration[key] = source[key]
	end
	return configuration :: any
end

local function samePinnedItem(left: Core.PinnedItem<any, any>?, right: Core.PinnedItem<any, any>?): boolean
	return ShallowTable.equal(left or {}, right or {})
end

local sameThresholds
if FFlagViewRecyclerReact084 then
	function sameThresholds(before: Configuration<any, any>, after: Configuration<any, any>): boolean
		for _, key in THRESHOLD_KEYS do
			if not ReachedThreshold.equal((before :: any)[key], (after :: any)[key]) then
				return false
			end
		end
		return true
	end
end

local function samePolicy(before: Configuration<any, any>, after: Configuration<any, any>): boolean
	return (
		if FFlagViewRecyclerReact084
			then ShallowTable.containsEqual(before, after, POLICY_KEYS)
				and sameThresholds(before, after)
				and ShallowTable.optionalContainsEqual(before.dataPrefetch, after.dataPrefetch, DATA_PREFETCH_KEYS)
			else ShallowTable.containsEqual(before, after, POLICY_KEYS)
	)
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
local function assertPlaceable(layout: Core.LayoutRuntime)
	assert(
		not layout.requiresItemMeasurement() or layout.stackedSpacing ~= nil,
		"createVirtualizer: a Layout that requires Item measurement must be a Stacked layout"
	)
end

local needsOwnedOverlay
if FFlagViewRecyclerReact084 then
	-- Only sticky and pinned Items use the overlay, so a list without them adds
	-- nothing beside its ScrollingFrame.
	function needsOwnedOverlay(configuration: Configuration<any, any>): boolean
		return configuration.viewportOverlay == nil
			and configuration.scrollingFrame ~= nil
			and (
				configuration.isItemStickyHeader ~= nil
				or configuration.pinnedStartItem ~= nil
				or configuration.pinnedEndItem ~= nil
			)
	end
end

type OwnedOverlay = {
	scrollingFrame: ScrollingFrame,
	axis: Core.Axis,
	handle: AttachedViewportOverlay.AttachedViewportOverlay,
}

if not FFlagViewRecyclerReact084 then
	needsOwnedOverlay = nil
	if FFlagViewRecyclerReact08 then
		-- Only sticky and pinned Items use the overlay, so a list without them adds
		-- nothing beside its ScrollingFrame.
		function needsOwnedOverlay(configuration: Configuration<any, any>): boolean
			return configuration.viewportOverlay == nil
				and configuration.scrollingFrame ~= nil
				and (
					configuration.isItemStickyHeader ~= nil
					or configuration.pinnedStartItem ~= nil
					or configuration.pinnedEndItem ~= nil
				)
		end
	end
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

	local vacantHosts
	if FFlagViewRecyclerReact084 then
		ScrollMotion.validate(options.animatedScroll, "createVirtualizer: animatedScroll")
		vacantHosts = VacantHosts.forScope(options.recyclingScope)
	end

	local configuration = pick(options)
	local destroyed = false

	local active
	if FFlagViewRecyclerReact084 then
		active = options.active ~= false
	else
		active = nil
		if FFlagViewRecyclerReact08 then
			active = options.active ~= false
		end
	end
	local callbacksActive = false
	local starting = false
	local startVisibleRangeReported = false
	local startMountedRangeReported = false
	local coreVirtualizer: Core.Virtualizer<ItemView, T, ItemViewType>
	local scrollHost: ScrollHost.ScrollHost

	local visibleItems = VisibleItemsPresentation.new(function()
		return if destroyed then nil else configuration.onVisibleItemsPresented
	end)

	local ownedOverlay: OwnedOverlay?, syncOwnedOverlay, viewportContainer
	if FFlagViewRecyclerReact084 then
		ownedOverlay = nil
		-- Creates, replaces, or removes the owned overlay for `nextConfiguration`
		-- and returns the one it replaced. The caller destroys that only after Host
		-- placement has moved its Hosts.
		function syncOwnedOverlay(nextConfiguration: Configuration<T, ItemViewType>): OwnedOverlay?
			local previous = ownedOverlay
			if not needsOwnedOverlay(nextConfiguration) then
				ownedOverlay = nil
				return previous
			end
			local scrollingFrame = nextConfiguration.scrollingFrame :: ScrollingFrame
			if
				previous ~= nil
				and previous.scrollingFrame == scrollingFrame
				and previous.axis == nextConfiguration.axis
			then
				return nil
			end
			ownedOverlay = {
				scrollingFrame = scrollingFrame,
				axis = nextConfiguration.axis,
				handle = AttachedViewportOverlay.new(scrollingFrame, nextConfiguration.axis),
			}
			return previous
		end
		function viewportContainer(target: Configuration<T, ItemViewType>): GuiObject?
			local supplied = target.viewportOverlay
			if supplied ~= nil then
				return supplied
			end
			local owned = ownedOverlay
			return if owned == nil then nil else owned.handle.overlay
		end
		syncOwnedOverlay(configuration)
	else
		ownedOverlay, syncOwnedOverlay, viewportContainer = nil, nil, nil
		if FFlagViewRecyclerReact08 then
			ownedOverlay = nil
			-- Creates, replaces, or removes the owned overlay for `nextConfiguration`
			-- and returns the one it replaced. The caller destroys that only after Host
			-- placement has moved its Hosts.
			function syncOwnedOverlay(nextConfiguration: Configuration<T, ItemViewType>): OwnedOverlay?
				local previous = ownedOverlay
				if not needsOwnedOverlay(nextConfiguration) then
					ownedOverlay = nil
					return previous
				end
				local scrollingFrame = nextConfiguration.scrollingFrame :: ScrollingFrame
				if
					previous ~= nil
					and previous.scrollingFrame == scrollingFrame
					and previous.axis == nextConfiguration.axis
				then
					return nil
				end
				ownedOverlay = {
					scrollingFrame = scrollingFrame,
					axis = nextConfiguration.axis,
					handle = AttachedViewportOverlay.new(scrollingFrame, nextConfiguration.axis),
				}
				return previous
			end
			function viewportContainer(target: Configuration<T, ItemViewType>): GuiObject?
				local supplied = target.viewportOverlay
				if supplied ~= nil then
					return supplied
				end
				local owned = ownedOverlay
				return if owned == nil then nil else owned.handle.overlay
			end
			syncOwnedOverlay(configuration)
		end
	end

	local hostPlacement = HostPlacement.new({
		vacantHosts = (if FFlagViewRecyclerReact084 then vacantHosts else nil),
		container = configuration.scrollingFrame,
		viewportContainer = (if FFlagViewRecyclerReact084
			then viewportContainer(configuration)
			else (if FFlagViewRecyclerReact08
				then viewportContainer(configuration)
				else configuration.viewportOverlay)),
		axis = configuration.axis,
		selfSizing = configuration.layout.requiresItemMeasurement(),
		stackedSpacing = stackedSpacing(configuration),
		onItemMeasurements = function(measurements)
			coreVirtualizer.submitMeasurements(measurements)
		end,
		onItemViewPresentationChanged = function(itemView, assignment)
			local callback = options.onItemViewPresentationChanged
			if callback ~= nil then
				callback(itemView, assignment)
			end
			visibleItems.presentationChanged(itemView, assignment)
		end,
		getCanvasOriginOffset = function()
			return if scrollHost == nil then 0 else scrollHost.getCanvasOriginOffset()
		end,
	})
	local sink: HostPlacementSink<ItemView, T> = table.freeze({
		apply = hostPlacement.apply,
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
		visibleItems.present(record, configuration.dataSource.getItemCount(), function()
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
		isReadyOnAssignment = (if FFlagViewRecyclerReact084 then options.isReadyOnAssignment else nil),
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
		stepAnimatedScroll = (if FFlagViewRecyclerReact084 then coreVirtualizer.stepAnimatedScroll else nil),
		stopAnimatedScroll = (if FFlagViewRecyclerReact084 then coreVirtualizer.stopAnimatedScroll else nil),
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

		if FFlagViewRecyclerReact084 then
			ScrollMotion.validate(after.animatedScroll, "createVirtualizer: animatedScroll")
		end
		local dataSourceChanged = after.dataSource ~= previous.dataSource
		local layoutChanged = after.layout ~= previous.layout
		local scrollingFrameChanged = after.scrollingFrame ~= previous.scrollingFrame

		local previousViewportContainer, replacedOverlay, overlayChanged
		if FFlagViewRecyclerReact084 then
			previousViewportContainer = viewportContainer(previous)
			replacedOverlay = syncOwnedOverlay(after)
			overlayChanged = viewportContainer(after) ~= previousViewportContainer
		else
			previousViewportContainer, replacedOverlay, overlayChanged = nil, nil, nil
			if FFlagViewRecyclerReact08 then
				previousViewportContainer = viewportContainer(previous)
				replacedOverlay = syncOwnedOverlay(after)
				overlayChanged = viewportContainer(after) ~= previousViewportContainer
			end
		end
		local canvasChanged = scrollingFrameChanged
			or (if FFlagViewRecyclerReact084
				then overlayChanged
				else (if FFlagViewRecyclerReact08
					then overlayChanged
					else after.viewportOverlay ~= previous.viewportOverlay))
			or after.axis ~= previous.axis
			or layoutChanged
			or (after.isItemStickyHeader == nil) ~= (previous.isItemStickyHeader == nil)

		local replaceDestroyedHosts
		if FFlagViewRecyclerReact084 then -- Destroying the previous ScrollingFrame or overlay destroyed the Hosts
			-- inside it; releasing every ItemView lets the Recycling scope evict
			-- those and the new container receive fresh ones.
			replaceDestroyedHosts = active
				and (scrollingFrameChanged or overlayChanged)
				and hostPlacement.hasDestroyedHost()
		else
			replaceDestroyedHosts = nil
		end
		if if FFlagViewRecyclerReact084 then replaceDestroyedHosts else FFlagViewRecyclerReact08 then
			if FFlagViewRecyclerReact084 then
				coreVirtualizer.setActive(false)
			else -- inside it; releasing every ItemView lets the Recycling scope evict
				-- those and the new container receive fresh ones.
				replaceDestroyedHosts = active
					and (scrollingFrameChanged or overlayChanged)
					and hostPlacement.hasDestroyedHost()
				if replaceDestroyedHosts then
					coreVirtualizer.setActive(false)
				end
			end
		end
		configuration = after

		if dataSourceChanged then
			visibleItems.rearm()
		end
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
				viewportContainer = (if FFlagViewRecyclerReact084
					then viewportContainer(after)
					else (if FFlagViewRecyclerReact08 then viewportContainer(after) else after.viewportOverlay)),
				axis = after.axis,
				selfSizing = after.layout.requiresItemMeasurement(),
				stackedSpacing = stackedSpacing(after),
			})
		end
		if if FFlagViewRecyclerReact084 then replacedOverlay ~= nil else FFlagViewRecyclerReact08 then
			if FFlagViewRecyclerReact084 then
				replacedOverlay.handle.destroy()
			else
				if replacedOverlay ~= nil then
					replacedOverlay.handle.destroy()
				end
			end
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
		if if FFlagViewRecyclerReact084 then replaceDestroyedHosts else FFlagViewRecyclerReact08 then
			if FFlagViewRecyclerReact084 then
				coreVirtualizer.setActive(true)
			else
				if replaceDestroyedHosts then
					coreVirtualizer.setActive(true)
				end
			end
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

		local owned
		if FFlagViewRecyclerReact084 then
			owned = ownedOverlay
			ownedOverlay = nil
		else
			owned = nil
		end
		if if FFlagViewRecyclerReact084 then owned ~= nil else FFlagViewRecyclerReact08 then
			if FFlagViewRecyclerReact084 then
				owned.handle.destroy()
			else
				owned = ownedOverlay
				ownedOverlay = nil
				if owned ~= nil then
					owned.handle.destroy()
				end
			end
		end
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
		setActive = (if FFlagViewRecyclerReact084
			then function(nextActive)
				if not destroyed then
					active = nextActive
					coreVirtualizer.setActive(nextActive)
				end
			end
			else (if FFlagViewRecyclerReact08
				then function(nextActive)
					if not destroyed then
						active = nextActive
						coreVirtualizer.setActive(nextActive)
					end
				end
				else function(active)
					if not destroyed then
						coreVirtualizer.setActive(active)
					end
				end)),
		scrollToOffset = (if FFlagViewRecyclerReact084
			then function(offset, scrollOptions)
				local record = coreVirtualizer.scrollToOffset(
					offset,
					coreScrollOptions(scrollOptions, configuration.animatedScroll)
				)
				return record.animatedScrollTarget or record.scrollState.scrollOffset
			end
			else function(offset)
				return coreVirtualizer.scrollToOffset(offset).scrollState.scrollOffset
			end),
		scrollToStart = (if FFlagViewRecyclerReact084
			then function(scrollOptions)
				coreVirtualizer.scrollToStart(coreScrollOptions(scrollOptions, configuration.animatedScroll))
			end
			else function()
				coreVirtualizer.scrollToStart()
			end),
		scrollToEnd = (if FFlagViewRecyclerReact084
			then function(scrollOptions)
				coreVirtualizer.scrollToEnd(coreScrollOptions(scrollOptions, configuration.animatedScroll))
			end
			else function()
				coreVirtualizer.scrollToEnd()
			end),
		scrollBy = function(delta)
			return coreVirtualizer.scrollBy(delta).scrollState.scrollOffset
		end,
		scrollToIndex = function(index, scrollOptions)
			if scrollHost.isReady() then
				if FFlagViewRecyclerReact084 then
					coreVirtualizer.scrollToIndex(
						index,
						scrollOptions and scrollOptions.alignment,
						coreScrollOptions(scrollOptions, configuration.animatedScroll)
					)
				else
					coreVirtualizer.scrollToIndex(index, scrollOptions and scrollOptions.alignment)
				end
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

		setScrollOffset = if FFlagViewRecyclerReact084
			then nil
			else if FFlagViewRecyclerReact08
				then nil
				else function(offset)
					(coreVirtualizer :: any).setScrollOffset(offset)
				end,
	}
end

return createVirtualizer
