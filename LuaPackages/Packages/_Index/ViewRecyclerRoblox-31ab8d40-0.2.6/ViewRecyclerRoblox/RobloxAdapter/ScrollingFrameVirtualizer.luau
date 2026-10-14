local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local HostPlacement = require(Root.RobloxAdapter.HostPlacement)
local HostPresentationPhase = require(Root.RobloxAdapter.HostPresentationPhase)
local Layout = Core.Layout
local ScrollingFrameSync = require(Root.RobloxAdapter.ScrollingFrameSync)
local createCoreVirtualizer = Core.Adapter.createVirtualizer
local ShallowTable = Core.Adapter._Private.ShallowTable

export type ListHostConfiguration<T> = {
	axis: Core.Axis,
	dataSource: Core.DataSource<T>,
	layout: Layout.Runtime,
	initialScrollAlignment: Core.ScrollAlignment?,
	autoScrollOnChange: any,
	startReachedThreshold: number?,
	onStartReached: (() -> ())?,
	onEndReached: (() -> ())?,
	onViewportChanged: ((size: Vector2) -> ())?,
	onScrollOffsetChanged: ((offset: number) -> ())?,
	onContentLengthChanged: ((contentLength: number) -> ())?,
	onVisibleRangeChanged: ((Core.IndexRange) -> ())?,
	onMountedRangeChanged: ((Core.IndexRange) -> ())?,
	onDataPrefetchRequested: ((Core.DataPrefetchRequest) -> ())?,
}

export type CorePolicy<T> = {
	overscan: number?,
	overscanPolicy: Core.OverscanPolicy?,
	dataPrefetch: Core.DataPrefetchOptions?,
	contentAlignment: Core.ScrollAlignment?,
	endThreshold: number?,
	pinnedItems: {
		isItemStickyHeader: ((item: T, index: number) -> boolean)?,
		pinnedStartItem: Core.PinnedItem<T, any>?,
		pinnedEndItem: Core.PinnedItem<T, any>?,
	},
	preserveScrollPositionOnChange: boolean,
}

export type HostTarget = {
	scrollingFrame: ScrollingFrame?,
	viewportOverlay: GuiObject?,
}

export type CommittedUpdate<T> = {
	hostConfiguration: ListHostConfiguration<T>,
	hostTarget: HostTarget,
	corePolicy: CorePolicy<T>,
}

export type AssignmentAdapter<ItemView, T> = {
	prepare: (itemView: ItemView, assignment: Core.ItemAssignment<T>?) -> (),
	postCommit: (itemView: ItemView, assignment: Core.ItemAssignment<T>?) -> (),
	present: ((itemView: ItemView, assignment: Core.ItemAssignment<T>) -> ())?,
}

export type CoreConfiguration<ItemView, T, ItemViewType> = {
	recyclingScope: Core.RecyclingScope<ItemView, T, ItemViewType>,
	prepareDesiredAssignment: ((Core.DesiredAssignment<T>) -> Core.DesiredAssignment<T>)?,
	getItemViewType: (item: T, index: number) -> ItemViewType,
	diagnostics: Core.DiagnosticCallback?,
	active: ((any) -> boolean)?,
}

type CommonOptions<ItemView, T, ItemViewType> = {
	initialHostConfiguration: ListHostConfiguration<T>,
	initialHostTarget: HostTarget,
	initialCorePolicy: CorePolicy<T>,
	core: CoreConfiguration<ItemView, T, ItemViewType>,
	prepareAssignment: ((itemView: ItemView, assignment: Core.ItemAssignment<T>?) -> ())?,
	onItemViewAssignmentChanged: ((itemView: ItemView, assignment: Core.ItemAssignment<T>?) -> ())?,
	onItemViewPresentationChanged: ((itemView: ItemView, assignment: Core.ItemAssignment<T>?) -> ())?,
}

export type RecyclableViewOptions<ItemView, T, ItemViewType> = CommonOptions<ItemView, T, ItemViewType>
export type GuiObjectOptions<ItemView, T, ItemViewType> = CommonOptions<ItemView, T, ItemViewType> & {
	getGuiObject: (itemView: ItemView) -> GuiObject,
}

export type ScrollingFrameVirtualizer<T> = {
	dispatch: (any) -> any,
	getSnapshot: () -> any,
	query: (any) -> any,
	connect: () -> () -> (),
	update: (committedUpdate: CommittedUpdate<T>) -> (),
	isReady: () -> boolean,
	destroy: () -> (),
}

type Dependencies = {
	createHostPlacement: (options: any) -> any,
	createCoreVirtualizer: (options: any) -> any,
	createScrollingFrameSync: (options: any) -> any,
}

local defaultDependencies: Dependencies = {
	createHostPlacement = HostPlacement.new,
	createCoreVirtualizer = createCoreVirtualizer,
	createScrollingFrameSync = ScrollingFrameSync.new,
}

local ScrollingFrameVirtualizer = {}

local SCROLL_HOST_CONFIGURATION_KEYS = table.freeze({
	"axis",
	"dataSource",
	"initialScrollAlignment",
	"autoScrollOnChange",
	"startReachedThreshold",
	"onStartReached",
	"onEndReached",
	"onViewportChanged",
	"onScrollOffsetChanged",
	"onContentLengthChanged",
})

local function scrollHostConfigurationChanged<T>(
	before: ListHostConfiguration<T>,
	after: ListHostConfiguration<T>
): boolean
	return not ShallowTable.containsEqual(before, after, SCROLL_HOST_CONFIGURATION_KEYS)
end

local function samePinnedItems(before, after): boolean
	return before == after
		or (
			before.isItemStickyHeader == after.isItemStickyHeader
			and ShallowTable.equal(before.pinnedStartItem or {}, after.pinnedStartItem or {})
			and ShallowTable.equal(before.pinnedEndItem or {}, after.pinnedEndItem or {})
		)
end

local function normalizePolicy<T>(policy: CorePolicy<T>): CorePolicy<T>
	local normalized = table.clone(policy)
	if normalized.overscanPolicy ~= nil then
		normalized.overscan = nil
	end
	return normalized
end

local function applyCorePolicy<T>(dispatch: (any) -> any, before: CorePolicy<T>?, after: CorePolicy<T>): CorePolicy<T>
	local normalized = normalizePolicy(after)
	if before ~= nil and samePinnedItems(before.pinnedItems, normalized.pinnedItems) then
		normalized.pinnedItems = before.pinnedItems
	end
	if before == nil or not ShallowTable.equal(before, normalized) then
		dispatch({
			type = Core.VirtualizerCommandType.SetPolicy,
			policy = normalized,
		})
	end
	return normalized
end

type CreateAssignmentAdapter<ItemView, T> = (
	hostPlacement: any,
	options: CommonOptions<ItemView, T, any>
) -> AssignmentAdapter<ItemView, T>

local function createScrollingFrameVirtualizer<ItemView, T, ItemViewType>(
	options: CommonOptions<ItemView, T, ItemViewType>,
	createAssignmentAdapter: CreateAssignmentAdapter<ItemView, T>,
	dependencies: Dependencies?
): ScrollingFrameVirtualizer<T>
	local deps = dependencies or defaultDependencies
	local hostConfiguration = options.initialHostConfiguration
	local hostTarget = options.initialHostTarget
	local core = options.core
	local destroyed = false
	local connected = false
	local disconnectScrollHost: (() -> ())? = nil
	local committedCorePolicy = normalizePolicy(options.initialCorePolicy)
	local coreVirtualizer: any
	local scrollHost: any = nil
	local callbacksActive = false
	local function applyVirtualizerUpdate(previousSnapshot, update)
		if scrollHost ~= nil then
			scrollHost.applyVirtualizerUpdate(previousSnapshot, update)
		end
		for _, effect in if callbacksActive then update.effects else {} do
			local callback
			if effect.type == Core.VirtualizerEffectType.VisibleRangeChanged then
				callback = hostConfiguration.onVisibleRangeChanged
				if callback ~= nil then
					callback(effect.range)
				end
			elseif effect.type == Core.VirtualizerEffectType.MountedRangeChanged then
				callback = hostConfiguration.onMountedRangeChanged
				if callback ~= nil then
					callback(effect.range)
				end
			elseif effect.type == Core.VirtualizerEffectType.DataPrefetchRequested then
				callback = hostConfiguration.onDataPrefetchRequested
				if callback ~= nil then
					callback(effect.request)
				end
			end
		end
	end
	local function dispatch(command)
		local activating = command.type == Core.VirtualizerCommandType.Activate and not callbacksActive
		local update = coreVirtualizer.dispatch(command)
		if activating then
			callbacksActive = true
			for _, effect in update.effects do
				if effect.type == Core.VirtualizerEffectType.DataPrefetchRequested then
					local callback = hostConfiguration.onDataPrefetchRequested
					if callback ~= nil then
						callback(effect.request)
					end
				end
			end
		end
		return update
	end

	local hostPlacement = deps.createHostPlacement({
		container = hostTarget.scrollingFrame,
		viewportContainer = hostTarget.viewportOverlay,
		axis = hostConfiguration.axis,
		selfSizing = hostConfiguration.layout.requiresItemMeasurement(),
		onItemMeasurements = function(measurements)
			dispatch({ type = Core.VirtualizerCommandType.SubmitMeasurements, measurements = measurements })
		end,
		onItemViewPresentationChanged = function(itemView, assignment)
			local callback = options.onItemViewPresentationChanged
			if callback ~= nil then
				callback(itemView, assignment)
			end
		end,
	})
	local assignmentAdapter = createAssignmentAdapter(hostPlacement, options)
	local coreOptions = table.clone(core)
	coreOptions.dataSource = hostConfiguration.dataSource
	coreOptions.layout = hostConfiguration.layout
	coreOptions.prepareAssignment = assignmentAdapter.prepare
	coreOptions.postCommitAssignment = assignmentAdapter.postCommit
	coreOptions.presentAssignment = assignmentAdapter.present
	coreOptions.applyPlacementIntent = hostPlacement.applyPlacementIntent
	coreOptions.overscan = committedCorePolicy.overscan
	coreOptions.overscanPolicy = committedCorePolicy.overscanPolicy
	coreOptions.dataPrefetch = committedCorePolicy.dataPrefetch
	coreOptions.contentAlignment = committedCorePolicy.contentAlignment
	coreOptions.endThreshold = committedCorePolicy.endThreshold
	coreOptions.isItemStickyHeader = committedCorePolicy.pinnedItems.isItemStickyHeader
	coreOptions.pinnedStartItem = committedCorePolicy.pinnedItems.pinnedStartItem
	coreOptions.pinnedEndItem = committedCorePolicy.pinnedItems.pinnedEndItem
	coreOptions.preserveScrollPositionOnChange = committedCorePolicy.preserveScrollPositionOnChange
	coreOptions.onUpdate = applyVirtualizerUpdate
	coreVirtualizer = deps.createCoreVirtualizer(coreOptions)

	scrollHost = deps.createScrollingFrameSync({
		dispatch = dispatch,
		getSnapshot = coreVirtualizer.getSnapshot,
		query = coreVirtualizer.query,
		getInstance = function()
			return if destroyed then nil else hostTarget.scrollingFrame
		end,
		getConfiguration = function()
			return hostConfiguration
		end,
	})

	local function update(committedUpdate: CommittedUpdate<T>)
		if destroyed then
			return
		end

		local nextHostConfiguration = committedUpdate.hostConfiguration
		local nextHostTarget = committedUpdate.hostTarget
		local previousHostConfiguration = hostConfiguration
		local dataSourceChanged = nextHostConfiguration.dataSource ~= previousHostConfiguration.dataSource
		local layoutChanged = nextHostConfiguration.layout ~= previousHostConfiguration.layout
		local scrollingFrameChanged = nextHostTarget.scrollingFrame ~= hostTarget.scrollingFrame
		local canvasConfigurationChanged = scrollingFrameChanged
			or nextHostTarget.viewportOverlay ~= hostTarget.viewportOverlay
			or nextHostConfiguration.axis ~= previousHostConfiguration.axis
			or layoutChanged

		hostConfiguration = nextHostConfiguration
		hostTarget = nextHostTarget

		if dataSourceChanged or layoutChanged then
			hostPlacement.cancelPendingMeasurements()
			if dataSourceChanged and layoutChanged then
				dispatch({
					type = Core.VirtualizerCommandType.SetDataSourceAndLayout,
					dataSource = nextHostConfiguration.dataSource,
					layout = nextHostConfiguration.layout,
				})
			elseif dataSourceChanged then
				dispatch({
					type = Core.VirtualizerCommandType.SetDataSource,
					dataSource = nextHostConfiguration.dataSource,
				})
			else
				dispatch({ type = Core.VirtualizerCommandType.SetLayout, layout = nextHostConfiguration.layout })
			end
		end

		if canvasConfigurationChanged then
			hostPlacement.setConfiguration({
				container = nextHostTarget.scrollingFrame,
				viewportContainer = nextHostTarget.viewportOverlay,
				axis = nextHostConfiguration.axis,
				selfSizing = nextHostConfiguration.layout.requiresItemMeasurement(),
			})
		end
		local nextCorePolicy = committedUpdate.corePolicy
		committedCorePolicy = applyCorePolicy(dispatch, committedCorePolicy, nextCorePolicy)
		if scrollHostConfigurationChanged(previousHostConfiguration, nextHostConfiguration) then
			scrollHost.configurationChanged()
		end
		if scrollingFrameChanged then
			scrollHost.scrollingFrameChanged()
		end
	end

	return {
		dispatch = dispatch,
		getSnapshot = coreVirtualizer.getSnapshot,
		query = coreVirtualizer.query,
		connect = function()
			assert(not destroyed, "ScrollingFrameVirtualizer: cannot connect after destroy")
			assert(not connected, "ScrollingFrameVirtualizer: already connected")
			connected = true
			local disconnectSync = scrollHost.connect()
			local disconnected = false
			local function disconnect()
				if disconnected then
					return
				end
				disconnected = true
				connected = false
				disconnectScrollHost = nil
				disconnectSync()
			end
			disconnectScrollHost = disconnect
			return disconnect
		end,
		update = update,
		isReady = scrollHost.isReady,
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			if disconnectScrollHost ~= nil then
				disconnectScrollHost()
				disconnectScrollHost = nil
			end
			dispatch({ type = Core.VirtualizerCommandType.Destroy })
			hostPlacement.destroy()
		end,
	}
end

function ScrollingFrameVirtualizer.newForRecyclableViews<ItemView, T, ItemViewType>(
	options: RecyclableViewOptions<
		ItemView,
		T,
		ItemViewType
	>,
	dependencies: Dependencies?
): ScrollingFrameVirtualizer<T>
	return createScrollingFrameVirtualizer(options, function(hostPlacement, virtualizerOptions)
		local placementPortByItemView: { [ItemView]: any } = setmetatable({}, { __mode = "k" })
		local function getPlacementPort(itemView: ItemView)
			local port = placementPortByItemView[itemView]
			if port == nil then
				port = {
					apply = function(state)
						hostPlacement.applyHostState(itemView, state)
					end,
				}
				placementPortByItemView[itemView] = port
			end
			return port
		end
		return {
			prepare = function(itemView, assignment)
				if assignment == nil then
					(itemView :: any).bindPlacement(nil, nil)
				else
					-- Bind the stable list port before Core publishes Assignment so
					-- the view can synchronously publish adapter-owned Host state.
					(itemView :: any).bindPlacement("list", getPlacementPort(itemView))
				end
			end,
			postCommit = function(itemView, assignment)
				local setAssignment = (itemView :: any).set
				if setAssignment ~= nil then
					setAssignment(assignment)
				end
				local prepare = virtualizerOptions.prepareAssignment
				if prepare ~= nil then
					prepare(itemView, assignment)
				end
				local changed = virtualizerOptions.onItemViewAssignmentChanged
				if changed ~= nil then
					changed(itemView, assignment)
				end
			end,
			present = nil,
		}
	end, dependencies)
end

function ScrollingFrameVirtualizer.newForGuiObjects<ItemView, T, ItemViewType>(
	options: GuiObjectOptions<
		ItemView,
		T,
		ItemViewType
	>,
	dependencies: Dependencies?
): ScrollingFrameVirtualizer<T>
	return createScrollingFrameVirtualizer(options, function(hostPlacement, virtualizerOptions)
		return {
			prepare = function(itemView, assignment)
				if assignment == nil then
					hostPlacement.applyHostState(itemView, nil)
				else
					hostPlacement.applyHostState(itemView, {
						host = options.getGuiObject(itemView),
						assignment = assignment,
						phase = HostPresentationPhase.Hidden,
						visible = false,
					})
				end
			end,
			postCommit = function(itemView, assignment)
				local prepare = virtualizerOptions.prepareAssignment
				if prepare ~= nil then
					prepare(itemView, assignment)
				end
				local changed = virtualizerOptions.onItemViewAssignmentChanged
				if changed ~= nil then
					changed(itemView, assignment)
				end
			end,
			present = function(itemView, assignment)
				hostPlacement.applyHostState(itemView, {
					host = options.getGuiObject(itemView),
					assignment = assignment,
					phase = HostPresentationPhase.Presented,
					visible = true,
				})
			end,
		}
	end, dependencies)
end

return ScrollingFrameVirtualizer
