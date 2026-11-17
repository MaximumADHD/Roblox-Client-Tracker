-- One list's Virtualizer. Every command mutates state, then settles once:
-- scroll position, ranges, sticky and pinned placement, mounted rows, and Data
-- prefetch, in that order. Each settle publishes one immutable record.
local FFlagViewRecyclerReact084 = require(script:FindFirstAncestor("ViewRecycler").Flags).FFlagViewRecyclerReact084
local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecycler").Flags).FFlagViewRecyclerReact08
local Src = script:FindFirstAncestor("ViewRecycler")

local AutoScroll = require(Src.Core.ViewportBehavior.AutoScroll)

local AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy)

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

local ScrollMotion = require(Src.Core.Virtualizer.ScrollMotion)
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
-- An animated command moves over the steps the adapter drives with
-- `stepAnimatedScroll` instead of landing in the record it returns. It
-- scrolls the whole distance unless the target is more than `jumpDistance`
-- viewport lengths away, when it approaches, jumps close, and lands. The other
-- fields tune that motion; see ScrollMotion.Profile.
export type AnimatedScrollOptions = ScrollMotion.Options
export type ScrollOptions = {
	animated: boolean?,
	jumpDistance: number?,
	frequency: number?,
	cruiseSpeed: number?,
	approachDistance: number?,
	landingDistance: number?,
}

export type Policy<T, ItemViewType> = {
	overscan: number?,
	dataPrefetch: DataPrefetch.Options?,
	contentAlignment: ScrollAlignment?,
	endThreshold: ReachedThreshold.ReachedThreshold?,
	pinnedItems: PinnedItems.Options<T, ItemViewType>,
	preserveScrollPositionOnChange: boolean,
	initialScrollAlignment: ScrollAlignmentEnum.InitialScrollAlignment?,
	autoScrollOnChange: AutoScrollPolicy.AutoScrollPolicy?,
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
	-- The offset a running Animated scroll is moving toward, resolved this
	-- transaction; nil once it lands or is cancelled.
	animatedScrollTarget: number?,
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
	initialScrollAlignment: ScrollAlignmentEnum.InitialScrollAlignment?,
	autoScrollOnChange: AutoScrollPolicy.AutoScrollPolicy?,
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
	-- Whether an ItemView would present a new Assignment in the frame it
	-- receives it. Rows on screen or ahead of the motion trade a view that
	-- would not for one behind the motion that would. Omitted, every
	-- ItemView does.
	isReadyOnAssignment: ((itemView: ItemView) -> boolean)?,
}

export type Virtualizer<ItemView, T, ItemViewType> = {
	activate: () -> Record<ItemView, T>,
	setActive: (active: boolean) -> Record<ItemView, T>,
	observeScrollOffset: (observation: ScrollObservation) -> Record<ItemView, T>,
	scrollToIndex: (index: number, alignment: ScrollAlignment?, options: ScrollOptions?) -> Record<ItemView, T>,
	scrollToOffset: (offset: number, options: ScrollOptions?) -> Record<ItemView, T>,
	scrollToStart: (options: ScrollOptions?) -> Record<ItemView, T>,
	scrollToEnd: (options: ScrollOptions?) -> Record<ItemView, T>,
	scrollBy: (delta: number) -> Record<ItemView, T>,
	-- Advances a running Animated scroll by `deltaTime` seconds.
	stepAnimatedScroll: (deltaTime: number) -> Record<ItemView, T>,
	-- Leaves a running Animated scroll where it is.
	stopAnimatedScroll: () -> Record<ItemView, T>,
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

	setScrollOffset: ((offset: number) -> Record<ItemView, T>)?,
}

-- What one transaction did before it settles.
type Transaction = {
	settlesScroll: boolean,
	dataChange: Types.DataSourceChangeBatch?,
	replaced: boolean,
	viewportChanged: boolean,
	-- A User or Programmatic scroll moved the position; the Scroll anchor
	-- re-reads its edge distance.
	scrollMoved: boolean,
	keptDistanceFromEnd: number?,
	contentLengthBefore: number,
	scrollCorrection: number,
	scrollPositionChanged: boolean,
	scrollPositionFollowsCorrection: boolean,
	animatedScrollTarget: number?,
	contentLengthChanged: boolean,
	startReached: boolean,
	endReached: boolean,
	entered: { any },
	updated: { any },
	departed: { any },
	dataPrefetchRequests: { DataPrefetch.Request },
	diagnostics: { Diagnostics.Event },

	policyEligible: boolean?,
	before: Types.ScrollState?,
}

-- Where an Animated scroll lands, resolved every step so it follows the
-- Item, the edge, or the clamp as geometry changes.
type MotionTarget = {
	kind: "index",
	key: string,
	indexHint: number,
	alignment: ScrollAlignment?,
} | {
	kind: "edge",
	edge: createScrollAnchor.Edge,
} | {
	kind: "offset",
	offset: number,
}

local anchorConfig, paginationConfig, plannerItem, policyConfig, keyOnly
if FFlagViewRecyclerReact084 then
	function anchorConfig(source: any): createScrollAnchor.Config
		return {
			preserveScrollPositionOnChange = source.preserveScrollPositionOnChange ~= false,
			initialScrollAlignment = source.initialScrollAlignment,
			autoScrollOnChange = source.autoScrollOnChange,
			autoScrollThreshold = source.autoScrollThreshold,
		}
	end

	function paginationConfig(source: any): PaginationEdges.Config
		return {
			startReachedThreshold = source.startReachedThreshold,
			startReachedEnabled = source.startReachedEnabled == true,
			endReachedEnabled = source.endReachedEnabled == true,
		}
	end

	function plannerItem(item: PinnedItems.PinnedItem<any, any>?): createPinnedItemPlanner.PinnedItem?
		return if item == nil then nil else { key = item.key, estimatedLength = item.estimatedLength }
	end
else
	anchorConfig, paginationConfig, policyConfig = nil, nil, nil
	if FFlagViewRecyclerReact08 then
		function anchorConfig(source: any): createScrollAnchor.Config
			return {
				preserveScrollPositionOnChange = source.preserveScrollPositionOnChange ~= false,
				initialScrollAlignment = source.initialScrollAlignment,
				autoScrollOnChange = source.autoScrollOnChange,
				autoScrollThreshold = source.autoScrollThreshold,
			}
		end

		function paginationConfig(source: any): PaginationEdges.Config
			return {
				startReachedThreshold = source.startReachedThreshold,
				startReachedEnabled = source.startReachedEnabled == true,
				endReachedEnabled = source.endReachedEnabled == true,
			}
		end
	else
		function policyConfig(source: any): createScrollPolicy.Config
			return {
				initialScrollAlignment = source.initialScrollAlignment,
				autoScrollOnChange = source.autoScrollOnChange,
				autoScrollThreshold = source.autoScrollThreshold,
				startReachedThreshold = source.startReachedThreshold,
				startReachedEnabled = source.startReachedEnabled == true,
				endReachedEnabled = source.endReachedEnabled == true,
			}
		end
	end

	function keyOnly(item: { key: string }?): { key: string }?
		return if item == nil then nil else { key = item.key }
	end
end

local function createVirtualizer<ItemView, T, ItemViewType>(options: Options<ItemView, T, ItemViewType>): Virtualizer<ItemView, T, ItemViewType>
	local dataSource = options.dataSource
	local layout = options.layout
	local stickyPredicate = options.isItemStickyHeader
	local pinnedStartItem = options.pinnedStartItem
	local pinnedEndItem = options.pinnedEndItem

	local preservePosition
	if not FFlagViewRecyclerReact084 then
		preservePosition = nil
		if not FFlagViewRecyclerReact08 then
			preservePosition = options.preserveScrollPositionOnChange ~= false
		end
	end
	local prefetchOptions = options.dataPrefetch
	local hasPlacements = stickyPredicate ~= nil or pinnedStartItem ~= nil or pinnedEndItem ~= nil

	local viewport = createViewport({
		layout = layout,
		overscan = options.overscan,
		contentAlignment = options.contentAlignment,
		endThreshold = options.endThreshold,
	})

	local activated, isLaidOut
	if FFlagViewRecyclerReact084 then
		activated = false

		-- Before activation, or while Layout has no Content for its Items, the
		-- list has no geometry and every edge reads as reached.
		function isLaidOut(): boolean
			return activated
				and viewport.getLength() > 0
				and (dataSource.getItemCount() == 0 or viewport.getContentLength() > 0)
		end
	else
		activated, isLaidOut = nil, nil
		if FFlagViewRecyclerReact08 then
			activated = false

			-- Before activation, or while Layout has no Content for its Items, the
			-- list has no geometry and every edge reads as reached.
			function isLaidOut(): boolean
				return activated
					and viewport.getLength() > 0
					and (dataSource.getItemCount() == 0 or viewport.getContentLength() > 0)
			end
		end
	end

	local planner = createPinnedItemPlanner(dataSource, {
		isItemStickyKey = stickyPredicate,
		pinnedStartItem = (if FFlagViewRecyclerReact084 then plannerItem else keyOnly)(pinnedStartItem),
		pinnedEndItem = (if FFlagViewRecyclerReact084 then plannerItem else keyOnly)(pinnedEndItem),
	})

	local initialInsets
	if FFlagViewRecyclerReact084 then
		initialInsets = planner.getContentInsets()
		viewport.setInsets(initialInsets.start, initialInsets.finish)
	end
	local prefetch = createDataPrefetchController(prefetchOptions)
	local anchor = createScrollAnchor({
		viewport = viewport,
		getItemSequence = function()
			return dataSource
		end,
		isLaidOut = (if FFlagViewRecyclerReact084
			then isLaidOut
			else (if FFlagViewRecyclerReact08 then isLaidOut else nil)),
		config = (if FFlagViewRecyclerReact084
			then anchorConfig(options)
			else (if FFlagViewRecyclerReact08 then anchorConfig(options) else nil)),

		shouldPreserveUserPosition = if FFlagViewRecyclerReact084
			then nil
			else if FFlagViewRecyclerReact08
				then nil
				else function()
					return preservePosition
				end,
	})

	local edges, prepareDesiredAssignment, policy
	if FFlagViewRecyclerReact084 then
		edges = PaginationEdges.create(paginationConfig(options))
		prepareDesiredAssignment = options.prepareDesiredAssignment
	else
		edges, prepareDesiredAssignment, policy = nil, nil, nil
		if FFlagViewRecyclerReact08 then
			edges = PaginationEdges.create(paginationConfig(options))
			prepareDesiredAssignment = options.prepareDesiredAssignment
		else
			policy = createScrollPolicy(policyConfig(options))
		end
	end
	local rows = createListRows({
		slotBinder = createSlotBinder({
			recyclingScope = options.recyclingScope,
			name = (if FFlagViewRecyclerReact084
				then "Virtualizer"
				else (if FFlagViewRecyclerReact08 then "Virtualizer" else nil)),
			prepareDesiredAssignment = (if FFlagViewRecyclerReact084
				then if prepareDesiredAssignment == nil
					then nil
					else function(slot)
						return prepareDesiredAssignment({ key = slot.key, value = slot.value })
					end
				else (if FFlagViewRecyclerReact08
					then if prepareDesiredAssignment == nil
						then nil
						else function(slot)
							return prepareDesiredAssignment({ key = slot.key, value = slot.value })
						end
					else options.prepareDesiredAssignment)),
		}),
		getItemViewType = options.getItemViewType,
		isReadyOnAssignment = (if FFlagViewRecyclerReact084 then options.isReadyOnAssignment else nil),
		getPinnedItem = function(position)
			return if position == Placement.PinnedPosition.Start then pinnedStartItem else pinnedEndItem
		end,
	})

	if not FFlagViewRecyclerReact084 then
		if not FFlagViewRecyclerReact08 then
			activated = false
		end
	end

	local rowsActive = true
	local destroyed = false
	local mutating = false
	local disconnectDataSource: (() -> ())? = nil
	local currentRecord: Record<ItemView, T>

	local motion: ScrollMotion.ScrollMotion?, motionTarget: MotionTarget?, findMotionIndex, resolveMotionTarget, stopMotion
	if FFlagViewRecyclerReact084 then
		motion = nil
		motionTarget = nil

		function findMotionIndex(target: { key: string, indexHint: number }): number?
			local hint = target.indexHint
			if hint <= dataSource.getItemCount() and dataSource.getItemKey(hint) == target.key then
				return hint
			end
			for index = 1, dataSource.getItemCount() do
				if dataSource.getItemKey(index) == target.key then
					target.indexHint = index
					return index
				end
			end
			return nil
		end

		-- Nil once an Item target's key is gone.
		function resolveMotionTarget(): number?
			local target = motionTarget
			if target == nil then
				return nil
			elseif target.kind == "index" then
				local index = findMotionIndex(target)
				return if index == nil then nil else viewport.offsetForItem(index, target.alignment)
			elseif target.kind == "edge" then
				return if target.edge == ScrollAlignmentEnum.Start
					then 0
					else viewport.clamp(viewport.getContentLength() - viewport.getLength())
			end
			return viewport.clamp(target.offset)
		end

		function stopMotion()
			if motion ~= nil then
				motion = nil
				motionTarget = nil
				anchor.endMotion()
			end
		end
	end

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

	local moveTo, applyPolicyTarget
	if FFlagViewRecyclerReact084 then
		-- The only writer of a target scroll offset; corrections go through
		-- `applyCorrection`.
		function moveTo(tx: Transaction, offset: number)
			local previous = viewport.getScrollOffset()
			local actual = viewport.scrollTo(offset)
			anchor.setViewport(actual)
			if actual ~= previous then
				moveScrollPosition(tx)
			end
		end
	else
		moveTo, applyPolicyTarget = nil, nil
		if FFlagViewRecyclerReact08 then
			-- The only writer of a target scroll offset; corrections go through
			-- `applyCorrection`.
			function moveTo(tx: Transaction, offset: number)
				local previous = viewport.getScrollOffset()
				local actual = viewport.scrollTo(offset)
				anchor.setViewport(actual)
				if actual ~= previous then
					moveScrollPosition(tx)
				end
			end
		else
			function applyPolicyTarget(tx: Transaction, target: number?)
				if target == nil or not anchor.allowsPolicyOffset() then
					return
				end
				local previous = viewport.getScrollOffset()
				if viewport.scrollTo(target) ~= previous then
					moveScrollPosition(tx)
				end
			end
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

	local resolveItemEstimates
	if FFlagViewRecyclerReact084 then
		function resolveItemEstimates(): boolean
			local resolve = layout.resolveItemEstimates
			return resolve ~= nil and resolve(dataSource.getItem)
		end
	end

	local function resetLayout(keys: { string })
		layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = keys })

		if FFlagViewRecyclerReact084 then
			resolveItemEstimates()
		end
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

		if FFlagViewRecyclerReact084 then
			tx.settlesScroll = true
		else
			if FFlagViewRecyclerReact08 then
				tx.settlesScroll = true
			else
				tx.policyEligible = true
			end
		end
		tx.dataChange = nil

		if not FFlagViewRecyclerReact084 then
			if not FFlagViewRecyclerReact08 then
				tx.before = nil
			end
		end
		tx.replaced = false
		tx.viewportChanged = false
		tx.scrollMoved = false

		if FFlagViewRecyclerReact084 then
			tx.keptDistanceFromEnd = nil
		else
			if FFlagViewRecyclerReact08 then
				tx.keptDistanceFromEnd = nil
			end
		end
		tx.contentLengthBefore = viewport.getContentLength()
		tx.scrollCorrection = 0
		tx.scrollPositionChanged = false
		tx.scrollPositionFollowsCorrection = false

		if FFlagViewRecyclerReact084 then
			tx.animatedScrollTarget = nil
		end
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
		local startReached, endReached
		if FFlagViewRecyclerReact084 then
			if not edges.isEnabled() or not isLaidOut() then
				return
			end
			startReached, endReached = edges.check(viewport.scrollState(), rearm)
		else
			startReached, endReached = nil, nil
			if FFlagViewRecyclerReact08 then
				if not edges.isEnabled() or not isLaidOut() then
					return
				end
				startReached, endReached = edges.check(viewport.scrollState(), rearm)
			else
				startReached, endReached = policy.checkEdges(viewport.scrollState(), dataSource.getItemCount(), rearm)
			end
		end
		tx.startReached = tx.startReached or startReached
		tx.endReached = tx.endReached or endReached
	end

	local moveSettled, settleScroll, policyContext, settlePolicy
	if FFlagViewRecyclerReact084 then
		function moveSettled(offset: number)
			moveTo(transaction, offset)
		end

		function settleScroll(tx: Transaction)
			tx.contentLengthChanged = viewport.getContentLength() ~= tx.contentLengthBefore
			anchor.settle(tx, moveSettled)
			local dataChange = tx.dataChange
			checkEdges(tx, dataChange ~= nil and PaginationEdges.hasStructuralChange(dataChange))
		end
	else
		moveSettled, settleScroll, policyContext, settlePolicy = nil, nil, nil, nil
		if FFlagViewRecyclerReact08 then
			function moveSettled(offset: number)
				moveTo(transaction, offset)
			end

			function settleScroll(tx: Transaction)
				tx.contentLengthChanged = viewport.getContentLength() ~= tx.contentLengthBefore
				anchor.settle(tx, moveSettled)
				local dataChange = tx.dataChange
				checkEdges(tx, dataChange ~= nil and PaginationEdges.hasStructuralChange(dataChange))
			end
		else
			function policyContext(): createScrollPolicy.Context
				return {
					itemCount = dataSource.getItemCount(),
					scrollState = viewport.scrollState(),
					getScrollOffsetForItem = viewport.offsetForItem,
				}
			end

			function settlePolicy(tx: Transaction)
				if viewport.getContentLength() ~= tx.contentLengthBefore then
					tx.contentLengthChanged = true
					applyPolicyTarget(tx, policy.contentLengthChanged(viewport.scrollState()))
				end
				local dataChange = tx.dataChange
				if dataChange ~= nil then
					applyPolicyTarget(tx, policy.dataChanged(policyContext(), tx.before :: Types.ScrollState))
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
		end
	end

	-- Reused per settle; neither callee retains its input.
	local frame: createListRows.Frame<T> = {} :: any
	local prefetchInput: any = {}

	local function settle(tx: Transaction)
		viewport.refresh()
		if
			if FFlagViewRecyclerReact084
				then tx.settlesScroll
				else if FFlagViewRecyclerReact08 then tx.settlesScroll else tx.policyEligible
		then
			if FFlagViewRecyclerReact084 then
				settleScroll(tx)
			else
				if FFlagViewRecyclerReact08 then
					settleScroll(tx)
				else
					settlePolicy(tx)
				end
			end
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

			if FFlagViewRecyclerReact084 then
				frame.visibleRange = viewport.getVisibleRange()
			end
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
			animatedScrollTarget = (if FFlagViewRecyclerReact084 then tx.animatedScrollTarget else nil),
			contentLengthChanged = tx.contentLengthChanged,
			startReached = tx.startReached,
			endReached = tx.endReached,
			dataPrefetchRequests = tx.dataPrefetchRequests,
			diagnostics = frozen(tx.diagnostics),
		}) :: any
	end

	local mutateAndSettle, transact
	if FFlagViewRecyclerReact084 then
		function mutateAndSettle(mutate: (Transaction, any, any, any) -> (), tx: Transaction, a: any, b: any, c: any)
			mutate(tx, a, b, c)
			if motion ~= nil and resolveMotionTarget() == nil then
				stopMotion()
			end
			settle(tx)
			if motion ~= nil then
				tx.animatedScrollTarget = resolveMotionTarget()
			end
		end

		-- Mutations take their arguments so hot calls allocate no closure.
		function transact(mutate: (Transaction, any, any, any) -> (), a: any?, b: any?, c: any?): Record<ItemView, T>
			assert(not mutating, "Virtualizer: cannot mutate during a transaction")
			assert(not destroyed, "Virtualizer: cannot dispatch after destruction")
			mutating = true
			local tx = beginTransaction()
			local ok, failure = pcall(mutateAndSettle, mutate, tx, a, b, c)
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
	else
		function mutateAndSettle(mutate: (Transaction, any, any) -> (), tx: Transaction, a: any, b: any)
			mutate(tx, a, b)
			settle(tx)
		end

		-- Mutations take their arguments so hot calls allocate no closure.
		function transact(mutate: (Transaction, any, any) -> (), a: any?, b: any?): Record<ItemView, T>
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
	end

	local function applyDataChange(tx: Transaction, changeBatch: Types.DataSourceChangeBatch)
		if not FFlagViewRecyclerReact084 then
			if not FFlagViewRecyclerReact08 then
				tx.before = viewport.scrollState()
			end
		end
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

				if FFlagViewRecyclerReact084 then
					geometryChanged = resolveItemEstimates() or geometryChanged
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
		if FFlagViewRecyclerReact084 then
			anchor.dataSourceReplaced()
		else
			if FFlagViewRecyclerReact08 then
				anchor.dataSourceReplaced()
			else
				anchor.reset()
			end
		end
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
						local insets, pinnedAccepted
						if FFlagViewRecyclerReact084 then
							insets, pinnedAccepted = planner.updatePinnedMeasurement(
								measurement.pinnedPosition,
								measurement.key,
								measurement.pinnedRevision :: number,
								measurement.length
							)
						else
							insets = planner.updatePinnedMeasurement(
								measurement.pinnedPosition,
								measurement.key,
								measurement.pinnedRevision :: number,
								measurement.length
							)
						end
						if if FFlagViewRecyclerReact084 then pinnedAccepted else insets == nil then
							if FFlagViewRecyclerReact084 then
								acceptedCount += 1
							else
								dropped += 1
							end
						else
							if FFlagViewRecyclerReact084 then
								dropped += 1
							else
								acceptedCount += 1
								nextInsets = insets
							end
						end

						if FFlagViewRecyclerReact084 then
							if insets ~= nil then
								nextInsets = insets
							end
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

	local setPolicy
	if FFlagViewRecyclerReact084 then
		function setPolicy(tx: Transaction, nextPolicy: Policy<T, ItemViewType>)
			DataPrefetch.resolve(nextPolicy.dataPrefetch)
			local pinnedItems = nextPolicy.pinnedItems
			viewport.setOverscan(nextPolicy.overscan)
			viewport.setContentAlignment(nextPolicy.contentAlignment)
			viewport.setEndThreshold(nextPolicy.endThreshold)
			prefetchOptions = nextPolicy.dataPrefetch
			anchor.configure(anchorConfig(nextPolicy))
			edges.configure(paginationConfig(nextPolicy))
			local previousInsets = planner.getContentInsets()
			-- Last to validate: the planner rejects an invalid estimate before the
			-- pinned items or the scroll position change.
			planner.setOptions({
				isItemStickyKey = pinnedItems.isItemStickyHeader,
				pinnedStartItem = plannerItem(pinnedItems.pinnedStartItem),
				pinnedEndItem = plannerItem(pinnedItems.pinnedEndItem),
			})
			stickyPredicate = pinnedItems.isItemStickyHeader
			pinnedStartItem = pinnedItems.pinnedStartItem
			pinnedEndItem = pinnedItems.pinnedEndItem
			hasPlacements = stickyPredicate ~= nil or pinnedStartItem ~= nil or pinnedEndItem ~= nil
			local insets = planner.getContentInsets()
			if insets.start ~= previousInsets.start or insets.finish ~= previousInsets.finish then
				applyCorrection(
					tx,
					anchor.preserve({
						source = Diagnostics.ScrollCorrectionSource.Policy,
						preserveStartAnchor = true,
						startInsetDelta = insets.start - previousInsets.start,
					}, function()
						viewport.setInsets(insets.start, insets.finish)
					end)
				)
			end
		end
	else
		function setPolicy(nextPolicy: Policy<T, ItemViewType>)
			DataPrefetch.resolve(nextPolicy.dataPrefetch)
			local pinnedItems = nextPolicy.pinnedItems
			viewport.setOverscan(nextPolicy.overscan)
			viewport.setContentAlignment(nextPolicy.contentAlignment)
			viewport.setEndThreshold(nextPolicy.endThreshold)

			if not FFlagViewRecyclerReact08 then
				preservePosition = nextPolicy.preserveScrollPositionOnChange ~= false
			end
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

			if FFlagViewRecyclerReact08 then
				anchor.configure(anchorConfig(nextPolicy))
				edges.configure(paginationConfig(nextPolicy))
			else
				policy.configure(policyConfig(nextPolicy))
			end
		end
	end

	local function setActiveMutation(tx: Transaction, active: boolean)
		if FFlagViewRecyclerReact084 then
			tx.settlesScroll = false
		else
			if FFlagViewRecyclerReact08 then
				tx.settlesScroll = false
			else
				tx.policyEligible = false
			end
		end
		if active and not rowsActive then
			rows.invalidatePayloads()
		end
		rowsActive = active
	end

	local setScrollOffsetMutation
	if not FFlagViewRecyclerReact084 then
		setScrollOffsetMutation = nil
		if not FFlagViewRecyclerReact08 then
			function setScrollOffsetMutation(_tx: Transaction, offset: number)
				if viewport.setScrollOffset(offset) then
					anchor.setViewport(offset)
				end
			end
		end
	end

	local function observeScrollOffsetMutation(tx: Transaction, observation: ScrollObservation)
		if FFlagViewRecyclerReact084 then
			if observation.kind == ScrollObservationKind.User then
				stopMotion()
			end
		end
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

	local finishProgrammaticScroll, animate, scrollToIndexMutation, scrollToOffsetMutation
	if FFlagViewRecyclerReact084 then
		-- Finishes every Programmatic scroll command once the viewport and anchor
		-- hold the new position. A scroll to an edge stays pinned while Content
		-- settles, until the reader scrolls away; the anchor observes any other.
		function finishProgrammaticScroll(tx: Transaction, pinnedEdge: createScrollAnchor.Edge?)
			anchor.scrolledProgrammatically(pinnedEdge)
			moveScrollPosition(tx)
			if pinnedEdge == nil then
				tx.scrollMoved = true
			end
		end

		-- Starts an Animated scroll, continuing the velocity of one it replaces.
		-- Returns false when the command should land at once instead: the list
		-- has no geometry, or the target is already within the resting limits.
		function animate(scrollOptions: ScrollOptions?, target: MotionTarget): boolean
			if scrollOptions == nil or scrollOptions.animated ~= true then
				return false
			end
			ScrollMotion.validate(scrollOptions, "Virtualizer")
			local velocity = if motion == nil then 0 else motion.velocity
			stopMotion()
			if not isLaidOut() then
				return false
			end
			motionTarget = target
			local offset = resolveMotionTarget()
			local position = viewport.getScrollOffset()
			if offset == nil or ScrollMotion.isAtRest(position, offset, velocity) then
				motionTarget = nil
				return false
			end
			motion = ScrollMotion.start(
				position,
				offset,
				viewport.getLength(),
				velocity,
				ScrollMotion.resolve(scrollOptions)
			)
			anchor.beginMotion()
			return true
		end

		function scrollToIndexMutation(
			tx: Transaction,
			index: number,
			alignment: ScrollAlignment?,
			scrollOptions: ScrollOptions?
		)
			local itemCount = dataSource.getItemCount()
			if itemCount > 0 then
				local target = math.clamp(index, 1, itemCount)
				local itemTarget: MotionTarget =
					{ kind = "index", key = dataSource.getItemKey(target), indexHint = target, alignment = alignment }
				if animate(scrollOptions, itemTarget) then
					return
				end
			end
			stopMotion()
			moveTo(tx, viewport.offsetForItem(index, alignment))
			anchor.setItemTarget(index, alignment)
			finishProgrammaticScroll(tx, nil)
		end

		function scrollToOffsetMutation(tx: Transaction, offset: number, scrollOptions: ScrollOptions?)
			if animate(scrollOptions, { kind = "offset", offset = offset }) then
				return
			end
			stopMotion()
			moveTo(tx, offset)
			finishProgrammaticScroll(tx, nil)
		end
	else
		finishProgrammaticScroll = nil
		if FFlagViewRecyclerReact08 then
			-- Finishes every Programmatic scroll command once the viewport and anchor
			-- hold the new position. A scroll to an edge stays pinned while Content
			-- settles, until the reader scrolls away; the anchor observes any other.
			function finishProgrammaticScroll(tx: Transaction, pinnedEdge: createScrollAnchor.Edge?)
				anchor.scrolledProgrammatically(pinnedEdge)
				moveScrollPosition(tx)
				if pinnedEdge == nil then
					tx.scrollMoved = true
				end
			end
		end

		function scrollToIndexMutation(tx: Transaction, index: number, alignment: ScrollAlignment?)
			if FFlagViewRecyclerReact08 then
				moveTo(tx, viewport.offsetForItem(index, alignment))
			end
			anchor.setItemTarget(index, alignment)

			if FFlagViewRecyclerReact08 then
				finishProgrammaticScroll(tx, nil)
			else
				viewport.scrollTo(viewport.offsetForItem(index, alignment))
				moveScrollPosition(tx)
				tx.scrollMoved = true
			end
		end

		function scrollToOffsetMutation(tx: Transaction, offset: number)
			if FFlagViewRecyclerReact08 then
				moveTo(tx, offset)
				finishProgrammaticScroll(tx, nil)
			else
				anchor.setViewport(viewport.scrollTo(offset))
				moveScrollPosition(tx)
				tx.scrollMoved = true
			end
		end
	end

	local function scrollByMutation(tx: Transaction, delta: number)
		if FFlagViewRecyclerReact084 then
			assert(math.abs(delta) < math.huge, "Virtualizer: scroll delta must be finite")
			stopMotion()
			moveTo(tx, viewport.getScrollOffset() + delta)
			finishProgrammaticScroll(tx, nil)
		else
			if FFlagViewRecyclerReact08 then
				assert(math.abs(delta) < math.huge, "Virtualizer: scroll delta must be finite")
				moveTo(tx, viewport.getScrollOffset() + delta)
				finishProgrammaticScroll(tx, nil)
			else
				anchor.setViewport(viewport.scrollBy(delta))
				moveScrollPosition(tx)
				tx.scrollMoved = true
			end
		end
	end

	local scrollToEdgeMutation, landMotion, stepAnimatedScrollMutation
	if FFlagViewRecyclerReact084 then
		function scrollToEdgeMutation(tx: Transaction, edge: createScrollAnchor.Edge, scrollOptions: ScrollOptions?)
			if animate(scrollOptions, { kind = "edge", edge = edge }) then
				return
			end
			stopMotion()
			moveTo(
				tx,
				if edge == ScrollAlignmentEnum.Start then 0 else viewport.getContentLength() - viewport.getLength()
			)
			finishProgrammaticScroll(tx, edge)
		end

		-- Lands exactly as the instant command would, so the target holds while
		-- Content settles.
		function landMotion(tx: Transaction)
			local target = motionTarget :: MotionTarget
			stopMotion()
			if target.kind == "index" then
				local index = findMotionIndex(target)
				if index ~= nil then
					scrollToIndexMutation(tx, index, target.alignment, nil)
				end
			elseif target.kind == "edge" then
				scrollToEdgeMutation(tx, target.edge, nil)
			else
				scrollToOffsetMutation(tx, target.offset, nil)
			end
		end

		function stepAnimatedScrollMutation(tx: Transaction, deltaTime: number)
			local current = motion :: ScrollMotion.ScrollMotion
			local target = resolveMotionTarget()
			if target == nil then
				stopMotion()
				return
			end
			if not isLaidOut() then
				landMotion(tx)
				return
			end
			local position, landed =
				ScrollMotion.step(current, viewport.getScrollOffset(), target, viewport.getLength(), deltaTime)
			if landed then
				landMotion(tx)
			else
				moveTo(tx, position)
			end
		end
	else
		function scrollToEdgeMutation(tx: Transaction, edge: createScrollAnchor.Edge)
			if FFlagViewRecyclerReact08 then
				moveTo(
					tx,
					if edge == ScrollAlignmentEnum.Start then 0 else viewport.getContentLength() - viewport.getLength()
				)
				finishProgrammaticScroll(tx, edge)
			else
				anchor.setViewport(
					viewport.scrollTo(
						AutoScroll.getTargetOffset(edge, viewport.getContentLength(), viewport.getLength())
					)
				)
				policy.pin(edge)
				moveScrollPosition(tx)
			end
		end
	end

	local function setViewportSizeMutation(tx: Transaction, scrollAxisLength: number, crossAxisLength: number)
		local previousLength = viewport.getLength()
		local distanceFromEnd = viewport.getContentLength() - previousLength - viewport.getScrollOffset()
		if viewport.setSize(scrollAxisLength, crossAxisLength) then
			if layout.setViewportCrossAxisLength(crossAxisLength) then
				rows.invalidateLayout()
			end
			if
				(
					if FFlagViewRecyclerReact084
						then previousLength > 0
						else (if FFlagViewRecyclerReact08
							then previousLength > 0
							else previousLength > 0 and scrollAxisLength ~= previousLength)
				)
				and (if FFlagViewRecyclerReact084
					then scrollAxisLength ~= previousLength
					else (if FFlagViewRecyclerReact08
						then scrollAxisLength ~= previousLength
						else viewport.getContentAlignment() == ScrollAlignmentEnum.End))
				and (
					if FFlagViewRecyclerReact084
						then viewport.getContentAlignment() == ScrollAlignmentEnum.End
						else (if FFlagViewRecyclerReact08
							then viewport.getContentAlignment() == ScrollAlignmentEnum.End
							else anchor.allowsPolicyOffset())
				)
			then
				local offset, nextOffset
				if FFlagViewRecyclerReact084 then
					tx.keptDistanceFromEnd = math.max(0, distanceFromEnd)
				else
					offset, nextOffset = nil, nil
					if FFlagViewRecyclerReact08 then
						tx.keptDistanceFromEnd = math.max(0, distanceFromEnd)
					else
						viewport.refresh()
						offset = viewport.getScrollOffset()
						nextOffset = viewport.scrollTo(
							viewport.getContentLength() - scrollAxisLength - math.max(0, distanceFromEnd)
						)
						if nextOffset ~= offset then
							anchor.setViewport(nextOffset)
							moveScrollPosition(tx)
						end
					end
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
		observeScrollOffset = function(observation)
			return transact(observeScrollOffsetMutation, observation)
		end,
		scrollToIndex = (if FFlagViewRecyclerReact084
			then function(index, alignment, scrollOptions)
				return transact(scrollToIndexMutation, index, alignment, scrollOptions)
			end
			else function(index, alignment)
				return transact(scrollToIndexMutation, index, alignment)
			end),
		scrollToOffset = (if FFlagViewRecyclerReact084
			then function(offset, scrollOptions)
				return transact(scrollToOffsetMutation, offset, scrollOptions)
			end
			else function(offset)
				return transact(scrollToOffsetMutation, offset)
			end),
		scrollToStart = (if FFlagViewRecyclerReact084
			then function(scrollOptions)
				return transact(scrollToEdgeMutation, ScrollAlignmentEnum.Start, scrollOptions)
			end
			else function()
				return transact(
					scrollToEdgeMutation,
					(if FFlagViewRecyclerReact08 then ScrollAlignmentEnum else AutoScrollTarget).Start
				)
			end),
		scrollToEnd = (if FFlagViewRecyclerReact084
			then function(scrollOptions)
				return transact(scrollToEdgeMutation, ScrollAlignmentEnum.End, scrollOptions)
			end
			else function()
				return transact(
					scrollToEdgeMutation,
					(if FFlagViewRecyclerReact08 then ScrollAlignmentEnum else AutoScrollTarget).End
				)
			end),
		scrollBy = function(delta)
			return transact(scrollByMutation, delta)
		end,
		stepAnimatedScroll = (if FFlagViewRecyclerReact084
			then function(deltaTime)
				if motion == nil then
					return currentRecord
				end
				return transact(stepAnimatedScrollMutation, deltaTime)
			end
			else nil),
		stopAnimatedScroll = (if FFlagViewRecyclerReact084
			then function()
				if motion == nil then
					return currentRecord
				end
				return transact(function()
					stopMotion()
				end)
			end
			else nil),
		restoreScrollAnchorSnapshot = function(snapshot)
			return transact(function(tx)
				if FFlagViewRecyclerReact084 then
					stopMotion()
					moveTo(tx, anchor.snapshotOffset(snapshot))
					anchor.restore(snapshot, viewport.getScrollOffset())
					finishProgrammaticScroll(tx, nil)
				else
					if FFlagViewRecyclerReact08 then
						moveTo(tx, anchor.snapshotOffset(snapshot))
						anchor.restore(snapshot, viewport.getScrollOffset())
						finishProgrammaticScroll(tx, nil)
					else
						anchor.restore(snapshot, viewport.scrollTo(anchor.snapshotOffset(snapshot)))
						moveScrollPosition(tx)
						tx.scrollMoved = true
					end
				end
			end)
		end,
		setViewportSize = function(scrollAxisLength, crossAxisLength)
			return transact(setViewportSizeMutation, scrollAxisLength, crossAxisLength)
		end,
		setPolicy = function(nextPolicy)
			if FFlagViewRecyclerReact084 then
				return transact(setPolicy, nextPolicy)
			else
				return transact(function()
					setPolicy(nextPolicy)
				end)
			end
		end,
		setDataSource = function(nextDataSource)
			return transact(function(tx)
				if FFlagViewRecyclerReact084 then
					stopMotion()
				end
				replaceDataSource(nextDataSource)
				resetData()
				tx.replaced = true
			end)
		end,
		setLayout = function(nextLayout)
			return transact(function()
				if FFlagViewRecyclerReact084 then
					stopMotion()
				end
				replaceLayout(nextLayout)
				anchor.reset()
				resetLayout(readKeys())
			end)
		end,
		setDataSourceAndLayout = function(nextDataSource, nextLayout)
			return transact(function(tx)
				if FFlagViewRecyclerReact084 then
					stopMotion()
				end
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
				if FFlagViewRecyclerReact084 then
					tx.settlesScroll = false
					stopMotion()
				else
					if FFlagViewRecyclerReact08 then
						tx.settlesScroll = false
					else
						tx.policyEligible = false
					end
				end
				unsubscribe()
				tx.departed = rows.release()
				rows.destroy()
				prefetch.destroy()
				planner.destroy()
				destroyed = true
			end)
		end,

		setScrollOffset = if FFlagViewRecyclerReact084
			then nil
			else if FFlagViewRecyclerReact08
				then nil
				else function(offset)
					return transact(setScrollOffsetMutation, offset)
				end,
	}
end

return createVirtualizer
