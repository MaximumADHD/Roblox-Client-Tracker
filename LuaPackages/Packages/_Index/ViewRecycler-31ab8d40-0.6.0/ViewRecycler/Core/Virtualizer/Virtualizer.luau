-- One list's Virtualizer. Every command mutates state, then settles once:
-- scroll policy, ranges, sticky and pinned placement, mounted rows, and Data
-- prefetch, in that order. Each settle publishes one immutable record.
local Src = script:FindFirstAncestor("ViewRecycler")

local AutoScroll = require(Src.Core.ViewportBehavior.AutoScroll)
local AutoScrollTarget = require(Src.Core.Enums.AutoScrollTarget)
local DataPrefetch = require(Src.Core.DataPrefetch)
local DataSource = require(Src.Core.DataSource)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Diagnostics = require(Src.Core.Diagnostics)
local Layout = require(Src.Core.Layout)
local PaginationEdges = require(Src.Core.ViewportBehavior.PaginationEdges)
local PinnedItems = require(Src.Core.PinnedItems)
local Placement = require(Src.Core.Placement.PlacementTypes)
local ReachedThreshold = require(Src.Core.ViewportBehavior.ReachedThreshold)
local ScrollAlignmentEnum = require(Src.Core.Enums.ScrollAlignment)
local ScrollObservationKind = require(Src.Core.Enums.ScrollObservationKind)
local Types = require(Src.Core.Types)
local createDataPrefetchController = require(Src.Core.Virtualizer.DataPrefetchController)
local createListRows = require(Src.Core.Virtualizer.ListRows)
local createPinnedItemPlanner = require(Src.Core.PinnedItems.createPinnedItemPlanner)
local createRecyclingScope = require(Src.Core.Recycling.RecyclingScope)
local createScrollAnchor = require(Src.Core.Virtualizer.ScrollAnchor)
local createScrollPolicy = require(Src.Core.ViewportBehavior.ScrollPolicy)
local createSlotBinder = require(Src.Core.Recycling.SlotBinder)
local createViewport = require(Src.Core.Virtualizer.Viewport)

local EMPTY_LIST = table.freeze({})

export type DesiredAssignment<T> = createSlotBinder.DesiredAssignment<T>
export type Assignment<T> = createSlotBinder.Assignment<T>
export type ViewState<T> = createListRows.ViewState<T>
export type MountedView<ItemView, T> = createListRows.MountedView<ItemView, T>
export type Measurement<ItemView, T> = createListRows.Measurement<ItemView, T>
export type ScrollAlignment = ScrollAlignmentEnum.ScrollAlignment
export type ScrollState = Types.ScrollState
export type ScrollStateBeforeChange = Types.ScrollStateBeforeChange
export type ScrollAnchorSnapshot = createScrollAnchor.Snapshot
export type ScrollAnchorItem = createScrollAnchor.AnchoredItem
export type ScrollObservation = {
	kind: ScrollObservationKind.ScrollObservationKind,
	offset: number,
}
export type ItemPlacement = Placement.ItemPlacement
export type Policy<T, ItemViewType> = {
	overscan: number?,
	dataPrefetch: DataPrefetch.Options?,
	contentAlignment: ScrollAlignment?,
	endThreshold: ReachedThreshold.ReachedThreshold?,
	pinnedItems: PinnedItems.Options<T, ItemViewType>,
	preserveScrollPositionOnChange: boolean,
	initialScrollAlignment: ScrollAlignment?,
	autoScrollOnChange: AutoScroll.Policy?,
	autoScrollThreshold: ReachedThreshold.ReachedThreshold?,
	startReachedThreshold: ReachedThreshold.ReachedThreshold?,
	startReachedEnabled: boolean?,
	endReachedEnabled: boolean?,
}
-- `mountedViews` is the complete mounted set. `entered`, `updated`, and
-- `departed` describe how this transaction changed it.
export type Record<ItemView, T> = {
	mountedViews: { MountedView<ItemView, T> },
	entered: { MountedView<ItemView, T> },
	updated: { MountedView<ItemView, T> },
	departed: { ItemView },
	visibleRange: Types.IndexRange,
	mountedRange: Types.IndexRange,
	scrollState: Types.ScrollState,
	contentStartOffset: number,
	contentLength: number,
	requiresItemMeasurement: boolean,
	scrollCorrection: number,
	scrollPositionChanged: boolean,
	scrollPositionFollowsCorrection: boolean,
	-- The Item whose edge Anchor correction keeps still, if any.
	scrollAnchor: ScrollAnchorItem?,
	contentLengthChanged: boolean,
	startReached: boolean,
	endReached: boolean,
	dataPrefetchRequests: { DataPrefetch.Request },
	diagnostics: { Diagnostics.Event },
}
export type RecyclingScope<ItemView, ItemViewType> = createRecyclingScope.RecyclingScope<ItemView, ItemViewType>

export type Options<ItemView, T, ItemViewType> = {
	dataSource: DataSource.DataSource<T>,
	layout: Layout.Runtime,
	recyclingScope: RecyclingScope<ItemView, ItemViewType>,
	prepareDesiredAssignment: ((DesiredAssignment<T>) -> DesiredAssignment<T>)?,
	getItemViewType: (item: T, index: number) -> ItemViewType,
	overscan: number?,
	dataPrefetch: DataPrefetch.Options?,
	contentAlignment: ScrollAlignment?,
	endThreshold: ReachedThreshold.ReachedThreshold?,
	initialScrollAlignment: ScrollAlignment?,
	autoScrollOnChange: AutoScroll.Policy?,
	autoScrollThreshold: ReachedThreshold.ReachedThreshold?,
	startReachedThreshold: ReachedThreshold.ReachedThreshold?,
	startReachedEnabled: boolean?,
	endReachedEnabled: boolean?,
	isItemStickyHeader: ((key: string) -> boolean)?,
	pinnedStartItem: PinnedItems.PinnedItem<T, ItemViewType>?,
	pinnedEndItem: PinnedItems.PinnedItem<T, ItemViewType>?,
	preserveScrollPositionOnChange: boolean?,
	diagnostics: Diagnostics.Callback?,
	onTransaction: ((previous: Record<ItemView, T>, current: Record<ItemView, T>) -> ())?,
}

export type Virtualizer<ItemView, T, ItemViewType> = {
	activate: () -> Record<ItemView, T>,
	setActive: (active: boolean) -> Record<ItemView, T>,
	setScrollOffset: (offset: number) -> Record<ItemView, T>,
	observeScrollOffset: (observation: ScrollObservation) -> Record<ItemView, T>,
	scrollToIndex: (index: number, alignment: ScrollAlignment?) -> Record<ItemView, T>,
	scrollToOffset: (offset: number) -> Record<ItemView, T>,
	scrollToStart: () -> Record<ItemView, T>,
	scrollToEnd: () -> Record<ItemView, T>,
	scrollBy: (delta: number) -> Record<ItemView, T>,
	restoreScrollAnchorSnapshot: (snapshot: ScrollAnchorSnapshot) -> Record<ItemView, T>,
	setViewportSize: (scrollAxisLength: number, crossAxisLength: number) -> Record<ItemView, T>,
	setPolicy: (policy: Policy<T, ItemViewType>) -> Record<ItemView, T>,
	setDataSource: (dataSource: DataSource.DataSource<T>) -> Record<ItemView, T>,
	setLayout: (layout: Layout.Runtime) -> Record<ItemView, T>,
	setDataSourceAndLayout: (dataSource: DataSource.DataSource<T>, layout: Layout.Runtime) -> Record<ItemView, T>,
	refresh: () -> Record<ItemView, T>,
	submitMeasurements: (measurements: { Measurement<ItemView, T> }) -> Record<ItemView, T>,
	getCurrent: () -> Record<ItemView, T>,
	getItemLayout: (index: number) -> Types.ItemLayout,
	getScrollOffsetForItem: (index: number, alignment: ScrollAlignment?) -> number,
	captureScrollAnchorSnapshot: () -> ScrollAnchorSnapshot,
	destroy: () -> (),
}

-- What one transaction did before it settles.
type Transaction = {
	policyEligible: boolean,
	dataChange: Types.DataSourceChangeBatch?,
	before: Types.ScrollState?,
	replaced: boolean,
	viewportChanged: boolean,
	-- A User or Programmatic scroll moved the position; the follow policy
	-- re-reads its edge distance.
	scrollMoved: boolean,
	contentLengthBefore: number,
	scrollCorrection: number,
	scrollPositionChanged: boolean,
	scrollPositionFollowsCorrection: boolean,
	contentLengthChanged: boolean,
	startReached: boolean,
	endReached: boolean,
	entered: { any },
	updated: { any },
	departed: { any },
	dataPrefetchRequests: { DataPrefetch.Request },
	diagnostics: { Diagnostics.Event },
}

local function policyConfig(source: any): createScrollPolicy.Config
	return {
		initialScrollAlignment = source.initialScrollAlignment,
		autoScrollOnChange = source.autoScrollOnChange,
		autoScrollThreshold = source.autoScrollThreshold,
		startReachedThreshold = source.startReachedThreshold,
		startReachedEnabled = source.startReachedEnabled == true,
		endReachedEnabled = source.endReachedEnabled == true,
	}
end

local function keyOnly(item: { key: string }?): { key: string }?
	return if item == nil then nil else { key = item.key }
end

local function createVirtualizer<ItemView, T, ItemViewType>(options: Options<ItemView, T, ItemViewType>): Virtualizer<ItemView, T, ItemViewType>
	local dataSource = options.dataSource
	local layout = options.layout
	local stickyPredicate = options.isItemStickyHeader
	local pinnedStartItem = options.pinnedStartItem
	local pinnedEndItem = options.pinnedEndItem
	local preservePosition = options.preserveScrollPositionOnChange ~= false
	local prefetchOptions = options.dataPrefetch
	local hasPlacements = stickyPredicate ~= nil or pinnedStartItem ~= nil or pinnedEndItem ~= nil

	local viewport = createViewport({
		layout = layout,
		overscan = options.overscan,
		contentAlignment = options.contentAlignment,
		endThreshold = options.endThreshold,
	})
	local planner = createPinnedItemPlanner(dataSource, {
		isItemStickyKey = stickyPredicate,
		pinnedStartItem = keyOnly(pinnedStartItem),
		pinnedEndItem = keyOnly(pinnedEndItem),
	})
	local prefetch = createDataPrefetchController(prefetchOptions)
	local anchor = createScrollAnchor({
		viewport = viewport,
		getItemSequence = function()
			return dataSource
		end,
		shouldPreserveUserPosition = function()
			return preservePosition
		end,
	})
	local policy = createScrollPolicy(policyConfig(options))
	local rows = createListRows({
		slotBinder = createSlotBinder({
			recyclingScope = options.recyclingScope,
			prepareDesiredAssignment = options.prepareDesiredAssignment,
		}),
		getItemViewType = options.getItemViewType,
		getPinnedItem = function(position)
			return if position == Placement.PinnedPosition.Start then pinnedStartItem else pinnedEndItem
		end,
	})

	local activated = false
	local rowsActive = true
	local destroyed = false
	local mutating = false
	local disconnectDataSource: (() -> ())? = nil
	local currentRecord: Record<ItemView, T>

	local function addDiagnostic(tx: Transaction, event: Diagnostics.Event)
		if table.isfrozen(tx.diagnostics) then
			tx.diagnostics = {}
		end
		table.insert(tx.diagnostics, event)
	end

	local function applyCorrection(tx: Transaction, correction: createScrollAnchor.Correction?)
		if correction == nil then
			return
		end
		local previous = viewport.getScrollOffset()
		viewport.setScrollOffset(previous + correction.delta)
		local applied = viewport.getScrollOffset() - previous
		tx.scrollCorrection += applied
		tx.scrollPositionChanged = true
		tx.scrollPositionFollowsCorrection = true
		if options.diagnostics ~= nil then
			addDiagnostic(tx, {
				kind = Diagnostics.EventKind.ScrollCorrection,
				source = correction.source,
				delta = applied,
			})
		end
	end

	local function moveScrollPosition(tx: Transaction)
		tx.scrollPositionChanged = true
		tx.scrollPositionFollowsCorrection = false
	end

	local function applyPolicyTarget(tx: Transaction, target: number?)
		if target == nil or not anchor.allowsPolicyOffset() then
			return
		end
		local previous = viewport.getScrollOffset()
		if viewport.scrollTo(target) ~= previous then
			moveScrollPosition(tx)
		end
	end

	local function readKeys(): { string }
		local count = dataSource.getItemCount()
		local keys = table.create(count)
		for index = 1, count do
			keys[index] = dataSource.getItemKey(index)
		end
		return keys
	end

	local function resetLayout(keys: { string })
		layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = keys })
		viewport.refresh()
	end

	local subscribe: () -> ()

	local function unsubscribe()
		if disconnectDataSource ~= nil then
			disconnectDataSource()
			disconnectDataSource = nil
		end
	end

	local transaction: Transaction = {} :: any

	-- Transactions never nest, so one table is reset per call.
	local function beginTransaction(): Transaction
		local tx = transaction
		tx.policyEligible = true
		tx.dataChange = nil
		tx.before = nil
		tx.replaced = false
		tx.viewportChanged = false
		tx.scrollMoved = false
		tx.contentLengthBefore = viewport.getContentLength()
		tx.scrollCorrection = 0
		tx.scrollPositionChanged = false
		tx.scrollPositionFollowsCorrection = false
		tx.contentLengthChanged = false
		tx.startReached = false
		tx.endReached = false
		tx.entered = EMPTY_LIST :: any
		tx.updated = EMPTY_LIST :: any
		tx.departed = EMPTY_LIST :: any
		tx.dataPrefetchRequests = EMPTY_LIST :: any
		tx.diagnostics = EMPTY_LIST :: any
		return tx
	end

	local function checkEdges(tx: Transaction, rearm: boolean)
		local startReached, endReached = policy.checkEdges(viewport.scrollState(), dataSource.getItemCount(), rearm)
		tx.startReached = tx.startReached or startReached
		tx.endReached = tx.endReached or endReached
	end

	local function policyContext(): createScrollPolicy.Context
		return {
			itemCount = dataSource.getItemCount(),
			scrollState = viewport.scrollState(),
			getScrollOffsetForItem = viewport.offsetForItem,
		}
	end

	local function settlePolicy(tx: Transaction)
		if viewport.getContentLength() ~= tx.contentLengthBefore then
			tx.contentLengthChanged = true
			applyPolicyTarget(tx, policy.contentLengthChanged(viewport.scrollState()))
		end
		local dataChange = tx.dataChange
		if dataChange ~= nil then
			applyPolicyTarget(tx, policy.dataChanged(policyContext(), dataChange, tx.before :: Types.ScrollState))
			checkEdges(tx, PaginationEdges.hasStructuralChange(dataChange))
			return
		end
		if tx.replaced then
			applyPolicyTarget(tx, policy.dataReplaced(policyContext()))
			policy.observe(viewport.scrollState())
		end
		if tx.viewportChanged then
			applyPolicyTarget(tx, policy.viewportChanged(policyContext()))
			policy.observe(viewport.scrollState())
		elseif tx.scrollMoved then
			policy.observe(viewport.scrollState())
		end
		if policy.reachesEdges() then
			checkEdges(tx, false)
		end
	end

	-- Reused per settle; neither callee retains its input.
	local frame: createListRows.Frame<T> = {} :: any
	local prefetchInput: any = {}

	local function settle(tx: Transaction)
		viewport.refresh()
		if tx.policyEligible then
			settlePolicy(tx)
		end

		local visibleChanged, mountedChanged = viewport.updateRanges()
		if options.diagnostics ~= nil then
			if visibleChanged then
				local range = viewport.getVisibleRange()
				addDiagnostic(tx, {
					kind = Diagnostics.EventKind.RangeChanged,
					rangeKind = Diagnostics.RangeKind.Visible,
					firstIndex = range.firstIndex,
					lastIndex = range.lastIndex,
				})
			end
			if mountedChanged then
				local range = viewport.getMountedRange()
				addDiagnostic(tx, {
					kind = Diagnostics.EventKind.RangeChanged,
					rangeKind = Diagnostics.RangeKind.Rendered,
					firstIndex = range.firstIndex,
					lastIndex = range.lastIndex,
				})
			end
		end

		if destroyed then
			return
		end
		if rowsActive then
			local scrollOffset = viewport.getScrollOffset()
			local contentStartOffset = viewport.getContentStartOffset()
			frame.dataSource = dataSource
			frame.layout = layout
			frame.mountedRange = viewport.getMountedRange()
			frame.scrollOffset = scrollOffset
			frame.contentStartOffset = contentStartOffset
			frame.plan = if hasPlacements
				then planner.update({
					itemSequence = dataSource,
					layout = layout,
					scrollOffset = scrollOffset,
					viewportLength = viewport.getLength(),
					contentStartOffset = contentStartOffset,
				})
				else nil
			local changes, diagnostic = rows.apply(frame)
			if changes ~= nil then
				tx.entered = changes.entered
				tx.updated = changes.updated
				tx.departed = changes.departed
			end
			if diagnostic ~= nil then
				addDiagnostic(tx, diagnostic)
			end
		elseif rows.isApplied() then
			tx.departed = rows.release()
		end
		prefetchInput.itemSequence = dataSource
		prefetchInput.mountedRange = viewport.getMountedRange()
		prefetchInput.options = prefetchOptions
		tx.dataPrefetchRequests = prefetch.reconcile(prefetchInput)
	end

	local transactData: (changeBatch: Types.DataSourceChangeBatch) -> ()

	local function frozen<V>(list: V): V
		return if table.isfrozen(list :: any) then list else table.freeze(list :: any) :: any
	end

	local function makeRecord(tx: Transaction): Record<ItemView, T>
		local previous = currentRecord
		return table.freeze({
			mountedViews = rows.getMountedViews(),
			entered = frozen(tx.entered),
			updated = frozen(tx.updated),
			departed = frozen(tx.departed),
			visibleRange = viewport.getVisibleRange(),
			mountedRange = viewport.getMountedRange(),
			scrollState = viewport.scrollState(if previous == nil then nil else previous.scrollState),
			contentStartOffset = viewport.getContentStartOffset(),
			contentLength = viewport.getContentLength(),
			requiresItemMeasurement = layout.requiresItemMeasurement(),
			scrollCorrection = tx.scrollCorrection,
			scrollPositionChanged = tx.scrollPositionChanged,
			scrollPositionFollowsCorrection = tx.scrollPositionFollowsCorrection,
			scrollAnchor = anchor.getAnchoredItem(),
			contentLengthChanged = tx.contentLengthChanged,
			startReached = tx.startReached,
			endReached = tx.endReached,
			dataPrefetchRequests = tx.dataPrefetchRequests,
			diagnostics = frozen(tx.diagnostics),
		}) :: any
	end

	local function mutateAndSettle(mutate: (Transaction, any, any) -> (), tx: Transaction, a: any, b: any)
		mutate(tx, a, b)
		settle(tx)
	end

	-- Mutations take their arguments so hot calls allocate no closure.
	local function transact(mutate: (Transaction, any, any) -> (), a: any?, b: any?): Record<ItemView, T>
		assert(not mutating, "Virtualizer: cannot mutate during a transaction")
		assert(not destroyed, "Virtualizer: cannot dispatch after destruction")
		mutating = true
		local tx = beginTransaction()
		local ok, failure = pcall(mutateAndSettle, mutate, tx, a, b)
		mutating = false
		if not ok then
			error(failure, 0)
		end
		local previous = currentRecord
		local record = makeRecord(tx)
		currentRecord = record
		if options.diagnostics ~= nil then
			for _, event in record.diagnostics do
				options.diagnostics(event)
			end
		end
		if options.onTransaction ~= nil then
			options.onTransaction(previous, record)
		end
		return record
	end

	local function applyDataChange(tx: Transaction, changeBatch: Types.DataSourceChangeBatch)
		tx.before = viewport.scrollState()
		tx.dataChange = changeBatch
		rows.noteDataChange(changeBatch)
		local geometryChanged = false
		applyCorrection(
			tx,
			anchor.preserve({
				source = Diagnostics.ScrollCorrectionSource.Data,
				dataSourceChange = changeBatch,
			}, function()
				for _, change in changeBatch.changes do
					geometryChanged = layout.applyDataSourceChange(change) or geometryChanged
				end
				planner.applyDataSourceChange(changeBatch)
				viewport.refresh()
			end)
		)
		if geometryChanged then
			rows.invalidateLayout()
		end
	end

	transactData = function(changeBatch)
		transact(applyDataChange, changeBatch)
	end

	subscribe = function()
		if disconnectDataSource == nil and activated and not destroyed then
			disconnectDataSource = dataSource.subscribe(transactData)
		end
	end

	local function replaceDataSource(nextDataSource: DataSource.DataSource<T>)
		if nextDataSource ~= dataSource then
			unsubscribe()
			dataSource = nextDataSource
		end
		planner.setItemSequence(dataSource)
	end

	local function replaceLayout(nextLayout: Layout.Runtime)
		layout = nextLayout
		viewport.setLayout(nextLayout)
		local crossAxisLength = viewport.getCrossAxisLength()
		if crossAxisLength > 0 then
			nextLayout.setViewportCrossAxisLength(crossAxisLength)
		end
		rows.invalidateLayout()
	end

	local function resetData()
		anchor.reset()
		resetLayout(readKeys())
		rows.invalidateKeys()
		rows.invalidatePayloads()
		subscribe()
	end

	local function submitMeasurements(tx: Transaction, measurements: { Measurement<ItemView, T> })
		local accepted, dropped = rows.validate(measurements)
		if #accepted > 0 and options.diagnostics ~= nil then
			addDiagnostic(tx, {
				kind = Diagnostics.EventKind.MeasurementsProcessingStarted,
				submitted = #accepted,
				boundaryDropped = dropped,
			})
		end
		local acceptedCount = 0
		local layoutChanged = false
		local nextInsets: Placement.ContentInsets? = nil
		local change: createScrollAnchor.Change = {
			source = Diagnostics.ScrollCorrectionSource.Measurement,
			preserveStartAnchor = true,
			startInsetDelta = 0,
		}
		local previousStartInset = planner.getContentInsets().start
		applyCorrection(
			tx,
			anchor.preserve(change, function()
				for _, measurement in accepted do
					local index = measurement.index
					if index ~= nil then
						local measured = layout.updateItemMeasurement({
							itemIndex = index,
							itemKey = measurement.key,
							length = measurement.length,
						})
						if measured.accepted then
							acceptedCount += 1
						else
							dropped += 1
						end
						layoutChanged = layoutChanged or measured.geometryChanged
					elseif measurement.pinnedPosition ~= nil then
						local insets = planner.updatePinnedMeasurement(
							measurement.pinnedPosition,
							measurement.key,
							measurement.pinnedRevision :: number,
							measurement.length
						)
						if insets == nil then
							dropped += 1
						else
							acceptedCount += 1
							nextInsets = insets
						end
					else
						dropped += 1
					end
				end
				if nextInsets ~= nil then
					-- Placed item coordinates include the Content-start offset;
					-- the inset delta keeps a measured pinned start item from
					-- reading as the first row moving down the Canvas.
					change.startInsetDelta = nextInsets.start - previousStartInset
					viewport.setInsets(nextInsets.start, nextInsets.finish)
					layoutChanged = true
				end
				viewport.refresh()
			end)
		)
		if options.diagnostics ~= nil and #accepted > 0 then
			addDiagnostic(tx, {
				kind = Diagnostics.EventKind.MeasurementsProcessed,
				accepted = acceptedCount,
				dropped = dropped,
			})
		end
		if layoutChanged then
			rows.invalidateLayout()
		end
	end

	local function setPolicy(nextPolicy: Policy<T, ItemViewType>)
		DataPrefetch.resolve(nextPolicy.dataPrefetch)
		local pinnedItems = nextPolicy.pinnedItems
		viewport.setOverscan(nextPolicy.overscan)
		viewport.setContentAlignment(nextPolicy.contentAlignment)
		viewport.setEndThreshold(nextPolicy.endThreshold)
		preservePosition = nextPolicy.preserveScrollPositionOnChange ~= false
		prefetchOptions = nextPolicy.dataPrefetch
		stickyPredicate = pinnedItems.isItemStickyHeader
		pinnedStartItem = pinnedItems.pinnedStartItem
		pinnedEndItem = pinnedItems.pinnedEndItem
		if
			planner.setOptions({
				isItemStickyKey = stickyPredicate,
				pinnedStartItem = keyOnly(pinnedStartItem),
				pinnedEndItem = keyOnly(pinnedEndItem),
			})
		then
			local insets = planner.getContentInsets()
			viewport.setInsets(insets.start, insets.finish)
		end
		hasPlacements = stickyPredicate ~= nil or pinnedStartItem ~= nil or pinnedEndItem ~= nil
		policy.configure(policyConfig(nextPolicy))
	end

	local function setActiveMutation(tx: Transaction, active: boolean)
		tx.policyEligible = false
		if active and not rowsActive then
			rows.invalidatePayloads()
		end
		rowsActive = active
	end

	local function setScrollOffsetMutation(_tx: Transaction, offset: number)
		if viewport.setScrollOffset(offset) then
			anchor.setViewport(offset)
		end
	end

	local function observeScrollOffsetMutation(tx: Transaction, observation: ScrollObservation)
		local changed = viewport.setScrollOffset(observation.offset)
		if observation.kind == ScrollObservationKind.Programmatic then
			anchor.observeHost(observation.offset)
		elseif changed then
			anchor.setViewport(observation.offset)
		end
		if observation.kind == ScrollObservationKind.User then
			tx.scrollMoved = true
		end
	end

	local function scrollToIndexMutation(tx: Transaction, index: number, alignment: ScrollAlignment?)
		anchor.setItemTarget(index, alignment)
		viewport.scrollTo(viewport.offsetForItem(index, alignment))
		moveScrollPosition(tx)
		tx.scrollMoved = true
	end

	local function scrollToOffsetMutation(tx: Transaction, offset: number)
		anchor.setViewport(viewport.scrollTo(offset))
		moveScrollPosition(tx)
		tx.scrollMoved = true
	end

	local function scrollByMutation(tx: Transaction, delta: number)
		anchor.setViewport(viewport.scrollBy(delta))
		moveScrollPosition(tx)
		tx.scrollMoved = true
	end

	-- Unlike other scroll commands, the edge stays pinned while Content
	-- settles, until the reader scrolls away.
	local function scrollToEdgeMutation(tx: Transaction, edge: AutoScrollTarget.AutoScrollTarget)
		anchor.setViewport(
			viewport.scrollTo(AutoScroll.getTargetOffset(edge, viewport.getContentLength(), viewport.getLength()))
		)
		policy.pin(edge)
		moveScrollPosition(tx)
	end

	local function setViewportSizeMutation(tx: Transaction, scrollAxisLength: number, crossAxisLength: number)
		local previousLength = viewport.getLength()
		local distanceFromEnd = viewport.getContentLength() - previousLength - viewport.getScrollOffset()
		if viewport.setSize(scrollAxisLength, crossAxisLength) then
			if layout.setViewportCrossAxisLength(crossAxisLength) then
				rows.invalidateLayout()
			end
			if
				previousLength > 0
				and scrollAxisLength ~= previousLength
				and viewport.getContentAlignment() == ScrollAlignmentEnum.End
				and anchor.allowsPolicyOffset()
			then
				viewport.refresh()
				local offset = viewport.getScrollOffset()
				local nextOffset =
					viewport.scrollTo(viewport.getContentLength() - scrollAxisLength - math.max(0, distanceFromEnd))
				if nextOffset ~= offset then
					anchor.setViewport(nextOffset)
					moveScrollPosition(tx)
				end
			end
		end
		tx.viewportChanged = true
	end

	currentRecord = makeRecord(beginTransaction())

	return {
		activate = function()
			return transact(function(tx)
				if not activated then
					activated = true
					local keys = readKeys()
					resetLayout(keys)
					planner.applyDataSourceChange({
						changes = { { type = DataSourceChangeType.Reset, keys = keys } },
						previousItemCount = #keys,
						itemCount = #keys,
					})
					rows.invalidateKeys()
					subscribe()
				end
				tx.viewportChanged = true
			end)
		end,
		setActive = function(active)
			return transact(setActiveMutation, active)
		end,
		setScrollOffset = function(offset)
			return transact(setScrollOffsetMutation, offset)
		end,
		observeScrollOffset = function(observation)
			return transact(observeScrollOffsetMutation, observation)
		end,
		scrollToIndex = function(index, alignment)
			return transact(scrollToIndexMutation, index, alignment)
		end,
		scrollToOffset = function(offset)
			return transact(scrollToOffsetMutation, offset)
		end,
		scrollToStart = function()
			return transact(scrollToEdgeMutation, AutoScrollTarget.Start)
		end,
		scrollToEnd = function()
			return transact(scrollToEdgeMutation, AutoScrollTarget.End)
		end,
		scrollBy = function(delta)
			return transact(scrollByMutation, delta)
		end,
		restoreScrollAnchorSnapshot = function(snapshot)
			return transact(function(tx)
				anchor.restore(snapshot, viewport.scrollTo(anchor.snapshotOffset(snapshot)))
				moveScrollPosition(tx)
				tx.scrollMoved = true
			end)
		end,
		setViewportSize = function(scrollAxisLength, crossAxisLength)
			return transact(setViewportSizeMutation, scrollAxisLength, crossAxisLength)
		end,
		setPolicy = function(nextPolicy)
			return transact(function()
				setPolicy(nextPolicy)
			end)
		end,
		setDataSource = function(nextDataSource)
			return transact(function(tx)
				replaceDataSource(nextDataSource)
				resetData()
				tx.replaced = true
			end)
		end,
		setLayout = function(nextLayout)
			return transact(function()
				replaceLayout(nextLayout)
				anchor.reset()
				resetLayout(readKeys())
			end)
		end,
		setDataSourceAndLayout = function(nextDataSource, nextLayout)
			return transact(function(tx)
				replaceDataSource(nextDataSource)
				replaceLayout(nextLayout)
				resetData()
				tx.replaced = true
			end)
		end,
		refresh = function()
			return transact(function()
				rows.invalidateKeys()
				rows.invalidatePayloads()
			end)
		end,
		submitMeasurements = function(measurements)
			return transact(submitMeasurements, measurements)
		end,
		getCurrent = function()
			return currentRecord
		end,
		getItemLayout = function(index)
			return layout.getItemLayout(index)
		end,
		getScrollOffsetForItem = function(index, alignment)
			return viewport.offsetForItem(index, alignment)
		end,
		captureScrollAnchorSnapshot = function()
			local record = currentRecord
			local visible = record.visibleRange
			local scrollOffset = record.scrollState.scrollOffset
			if visible.firstIndex <= visible.lastIndex then
				local index = visible.firstIndex
				return {
					anchorKey = dataSource.getItemKey(index),
					anchorIndex = index,
					offsetWithinItem = scrollOffset
						- record.contentStartOffset
						- layout.getItemLayout(index).startOffset,
					fallbackScrollOffset = scrollOffset,
				}
			end
			return {
				anchorKey = nil,
				anchorIndex = nil,
				offsetWithinItem = 0,
				fallbackScrollOffset = scrollOffset,
			}
		end,
		destroy = function()
			if destroyed then
				return
			end
			transact(function(tx)
				tx.policyEligible = false
				unsubscribe()
				tx.departed = rows.release()
				rows.destroy()
				prefetch.destroy()
				planner.destroy()
				destroyed = true
			end)
		end,
	}
end

return createVirtualizer
