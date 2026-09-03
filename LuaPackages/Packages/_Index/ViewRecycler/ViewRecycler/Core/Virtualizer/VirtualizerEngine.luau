-- Mutable logical Virtualizer. One dispatch performs one synchronous Geometry
-- transaction and commits one immutable Mounted-window snapshot.
local Src = script:FindFirstAncestor("ViewRecycler")

local DataPrefetch = require(Src.Core.DataPrefetch)
local DataSource = require(Src.Core.DataSource)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Diagnostics = require(Src.Core.Diagnostics)
local Layout = require(Src.Core.Layout)
local OverscanPolicy = require(Src.Core.OverscanPolicy)
local PinnedItems = require(Src.Core.PinnedItems)
local ShallowTable = require(Src.Internal.ShallowTable)
local cloneFrozen = ShallowTable.cloneFrozen
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local ScrollObservationKind = require(Src.Core.Enums.ScrollObservationKind)
local Types = require(Src.Core.Types)
local VirtualizerCommandTypes = require(Src.Core.Enums.VirtualizerCommandType)
local VirtualizerCommandType = VirtualizerCommandTypes.External
local InternalVirtualizerCommandType = VirtualizerCommandTypes.Internal
local VirtualizerEffectType = require(Src.Core.Enums.VirtualizerEffectType)
local VirtualizerQueryType = require(Src.Core.Enums.VirtualizerQueryType)
local VirtualizerSnapshot = require(Src.Core.Virtualizer.VirtualizerSnapshot)
local createDataPrefetchController = require(Src.Core.Virtualizer.DataPrefetchController)
local createItemRevisionTracker = require(Src.Core.Virtualizer.ItemRevisionTracker)
local createPinnedItemPlanner = require(Src.Core.PinnedItems.createPinnedItemPlanner)
local createScrollPositionController = require(Src.Core.Virtualizer.ScrollPositionController)
local createViewportModel = require(Src.Core.Virtualizer.ViewportModel)
local createVirtualizerSnapshotStore = require(Src.Core.Virtualizer.VirtualizerSnapshotStore)

export type Options<T, RecyclableViewType> = {
	dataSource: DataSource.DataSource<T>,
	layout: Layout.Runtime,
	getRecyclableViewType: (item: T, index: number) -> RecyclableViewType,
	overscan: number?,
	overscanPolicy: OverscanPolicy.Policy?,
	dataPrefetch: DataPrefetch.Options?,
	contentAlignment: ScrollAlignment.ScrollAlignment?,
	contentInsetStart: number?,
	contentInsetEnd: number?,
	endThreshold: number?,
	preserveScrollPositionOnChange: boolean?,
	diagnostics: Diagnostics.Callback?,
	isItemStickyHeader: ((item: T, index: number) -> boolean)?,
	pinnedStartItem: PinnedItems.PinnedItem<T, RecyclableViewType>?,
	pinnedEndItem: PinnedItems.PinnedItem<T, RecyclableViewType>?,
}

export type VirtualizerEngine<T, RecyclableViewType> = {
	dispatch: (
		command: VirtualizerSnapshot.EngineCommand<T, RecyclableViewType>
	) -> VirtualizerSnapshot.Update<T, RecyclableViewType>,
	getSnapshot: () -> VirtualizerSnapshot.Snapshot<T, RecyclableViewType>,
	query: (query: VirtualizerSnapshot.LogicalQuery) -> any,
}

local EMPTY_RANGE = table.freeze({ firstIndex = 1, lastIndex = 0 })

local function sameRange(left: Types.IndexRange, right: Types.IndexRange): boolean
	return left.firstIndex == right.firstIndex and left.lastIndex == right.lastIndex
end

local function sameScrollState(left: Types.ScrollState, right: Types.ScrollState): boolean
	return left.scrollOffset == right.scrollOffset
		and left.viewportLength == right.viewportLength
		and left.contentLength == right.contentLength
		and left.distanceFromEnd == right.distanceFromEnd
		and left.atStart == right.atStart
		and left.atEnd == right.atEnd
end

local function createVirtualizerEngine<T, RecyclableViewType>(
	options: Options<T, RecyclableViewType>
): VirtualizerEngine<T, RecyclableViewType>
	assert(
		options.overscan == nil or options.overscanPolicy == nil,
		"VirtualizerEngine: overscan and overscanPolicy are mutually exclusive"
	)
	local dataSource = options.dataSource
	local layout = options.layout
	local currentPolicy: VirtualizerSnapshot.Policy<T, RecyclableViewType> = {
		overscan = options.overscan,
		overscanPolicy = options.overscanPolicy,
		dataPrefetch = options.dataPrefetch,
		contentAlignment = options.contentAlignment,
		endThreshold = options.endThreshold,
		pinnedItems = {
			isItemStickyHeader = options.isItemStickyHeader,
			pinnedStartItem = options.pinnedStartItem,
			pinnedEndItem = options.pinnedEndItem,
		},
		preserveScrollPositionOnChange = options.preserveScrollPositionOnChange ~= false,
	}
	local overscanPolicy = currentPolicy.overscanPolicy or OverscanPolicy.fixed(currentPolicy.overscan)
	local preservePosition = currentPolicy.preserveScrollPositionOnChange
	local revisions = createItemRevisionTracker()
	local planner = createPinnedItemPlanner(dataSource, currentPolicy.pinnedItems)
	local hasViewportPlacements = currentPolicy.pinnedItems.isItemStickyHeader ~= nil
		or currentPolicy.pinnedItems.pinnedStartItem ~= nil
		or currentPolicy.pinnedItems.pinnedEndItem ~= nil
	local viewport = createViewportModel({
		getLayout = function()
			return layout
		end,
		contentAlignment = options.contentAlignment,
		contentInsetStart = options.contentInsetStart,
		contentInsetEnd = options.contentInsetEnd,
		endThreshold = options.endThreshold,
	})
	local snapshotStore = createVirtualizerSnapshotStore({
		planner = planner,
		itemRevisions = revisions,
		getRecyclableViewType = options.getRecyclableViewType,
		initialScrollState = viewport.getScrollState(),
		initialRequiresItemMeasurement = layout.requiresItemMeasurement(),
	})
	local prefetch: createDataPrefetchController.DataPrefetchController<T> =
		createDataPrefetchController(currentPolicy.dataPrefetch)
	local scrollPosition = createScrollPositionController({
		shouldPreserveUserPosition = function()
			return preservePosition
		end,
		getItemCount = function()
			return dataSource.getItemCount()
		end,
		getItemKey = function(index)
			return dataSource.getItemKey(index)
		end,
		getScrollOffset = viewport.getScrollOffset,
		clampScrollOffset = viewport.clampScrollOffset,
		getViewportLength = viewport.getScrollAxisLength,
		getVisibleRange = viewport.getVisibleRange,
		getItemLayout = viewport.getPlacedItemLayout,
		getScrollOffsetForItem = viewport.getScrollOffsetForItem,
	})

	local activated = false
	local destroyed = false
	local dispatching = false
	local visibleRange: Types.IndexRange = EMPTY_RANGE
	local mountedRange: Types.IndexRange = EMPTY_RANGE
	local versions: { [string]: number } = {
		identity = 1,
		layoutGeometry = 1,
		placementGeometry = 1,
		range = 0,
		scroll = 0,
		overscanPolicy = 0,
	}
	local prefetchInput: createDataPrefetchController.Input<T> = {
		dataSource = dataSource,
		mountedRange = mountedRange,
		options = currentPolicy.dataPrefetch,
	}
	local snapshotRevisions: createVirtualizerSnapshotStore.Revisions = {
		identity = versions.identity,
		layoutGeometry = versions.layoutGeometry,
		placementGeometry = versions.placementGeometry,
		range = versions.range,
		scroll = versions.scroll,
	}
	local virtualizerState: createVirtualizerSnapshotStore.VirtualizerState<T> = {
		dataSource = dataSource,
		layout = layout,
		visibleRange = visibleRange,
		mountedRange = mountedRange,
		scrollState = snapshotStore.getSnapshot().scrollState,
		contentStartOffset = 0,
		contentLength = 0,
		requiresItemMeasurement = layout.requiresItemMeasurement(),
		hasViewportPlacements = hasViewportPlacements,
		revisions = snapshotRevisions,
	}
	local advancedInTransaction: { [string]: boolean }? = nil
	local band: {
		min: number,
		max: number,
		layoutGeometryVersion: number,
		overscanPolicyVersion: number,
		before: number,
		after: number,
	}? =
		nil
	local function advanceVersion(kind: string)
		local advanced = advancedInTransaction :: { [string]: boolean }
		if advanced[kind] then
			return
		end
		advanced[kind] = true
		versions[kind] += 1
	end

	local function dataKeys(): { string }
		local keys = table.create(dataSource.getItemCount())
		for index = 1, dataSource.getItemCount() do
			keys[index] = dataSource.getItemKey(index)
		end
		return keys
	end

	local function addDiagnostic(effects: { VirtualizerSnapshot.Effect }, event: Diagnostics.Event)
		table.insert(effects, { type = VirtualizerEffectType.Diagnostic, event = event })
	end

	local function reportRange(
		effects: { VirtualizerSnapshot.Effect },
		kind: Diagnostics.RangeKind,
		range: Types.IndexRange
	)
		if options.diagnostics ~= nil then
			addDiagnostic(effects, {
				kind = Diagnostics.EventKind.RangeChanged,
				rangeKind = kind,
				firstIndex = range.firstIndex,
				lastIndex = range.lastIndex,
			})
		end
	end

	local function refreshRanges(effects: { VirtualizerSnapshot.Effect }): boolean
		viewport.refreshContentMetrics()
		local previousVisible = visibleRange
		local previousMounted = mountedRange
		local nextVisible = viewport.getVisibleRange()
		local span = overscanPolicy.compute({
			visibleRange = nextVisible,
			scrollOffset = viewport.getScrollOffset(),
			viewportLength = viewport.getScrollAxisLength(),
			scrollDirection = viewport.getScrollDirection(),
			itemCount = layout.getItemCount(),
		})
		assert(
			span.before >= 0 and span.before % 1 == 0 and span.after >= 0 and span.after % 1 == 0,
			"VirtualizerEngine: overscan policy must return non-negative integer spans"
		)
		local viewportStart, viewportEnd = viewport.getLayoutViewport()
		local stable = band ~= nil
			and band.layoutGeometryVersion == versions.layoutGeometry
			and band.overscanPolicyVersion == versions.overscanPolicy
			and viewportStart >= band.min
			and viewportEnd <= band.max
			and span.before == band.before
			and span.after == band.after
			and (
				Types.isIndexRangeEmpty(nextVisible)
				or (
					nextVisible.firstIndex >= mountedRange.firstIndex
					and nextVisible.lastIndex <= mountedRange.lastIndex
				)
			)
		visibleRange = nextVisible
		if not stable then
			mountedRange = if Types.isIndexRangeEmpty(nextVisible)
				then EMPTY_RANGE
				else layout.expandIndexRange(nextVisible, span.before, span.after)
			if Types.isIndexRangeEmpty(mountedRange) then
				band = nil
			else
				local first = layout.getItemLayout(mountedRange.firstIndex)
				local last = layout.getItemLayout(mountedRange.lastIndex)
				band = {
					min = first.startOffset,
					max = last.startOffset + last.length,
					layoutGeometryVersion = versions.layoutGeometry,
					overscanPolicyVersion = versions.overscanPolicy,
					before = span.before,
					after = span.after,
				}
			end
		end
		local visibleChanged = not sameRange(previousVisible, visibleRange)
		local mountedChanged = not sameRange(previousMounted, mountedRange)
		if visibleChanged or mountedChanged then
			advanceVersion("range")
		end
		if visibleChanged then
			table.insert(
				effects,
				{ type = VirtualizerEffectType.VisibleRangeChanged, range = cloneFrozen(visibleRange) }
			)
			reportRange(effects, Diagnostics.RangeKind.Visible, visibleRange)
		end
		if mountedChanged then
			table.insert(
				effects,
				{ type = VirtualizerEffectType.MountedRangeChanged, range = cloneFrozen(mountedRange) }
			)
			reportRange(effects, Diagnostics.RangeKind.Rendered, mountedRange)
		end
		return mountedChanged
	end

	local function updatePrefetch(effects: { VirtualizerSnapshot.Effect })
		prefetchInput.dataSource = dataSource
		prefetchInput.mountedRange = mountedRange
		prefetchInput.options = currentPolicy.dataPrefetch
		for _, request in prefetch.reconcile(prefetchInput) do
			table.insert(effects, {
				type = VirtualizerEffectType.DataPrefetchRequested,
				request = request,
			})
		end
	end

	local function commitSnapshot(): createVirtualizerSnapshotStore.Commit<T, RecyclableViewType>
		local scrollState = viewport.getScrollState()
		if not sameScrollState(snapshotStore.getSnapshot().scrollState, scrollState) then
			advanceVersion("scroll")
		end

		snapshotRevisions.identity = versions.identity
		snapshotRevisions.layoutGeometry = versions.layoutGeometry
		snapshotRevisions.placementGeometry = versions.placementGeometry
		snapshotRevisions.range = versions.range
		snapshotRevisions.scroll = versions.scroll

		virtualizerState.dataSource = dataSource
		virtualizerState.layout = layout
		virtualizerState.visibleRange = visibleRange
		virtualizerState.mountedRange = mountedRange
		virtualizerState.scrollState = scrollState
		virtualizerState.contentStartOffset = viewport.contentStartOffset(false)
		virtualizerState.contentLength = viewport.contentLength(false)
		virtualizerState.requiresItemMeasurement = layout.requiresItemMeasurement()
		virtualizerState.hasViewportPlacements = hasViewportPlacements
		return snapshotStore.commit(virtualizerState)
	end

	local function captureAnchorEvidence(): createScrollPositionController.AnchorEvidence?
		if Types.isIndexRangeEmpty(visibleRange) then
			return nil
		end
		local visibleItems = {}
		for index = visibleRange.firstIndex, visibleRange.lastIndex do
			local itemLayout = viewport.getPlacedItemLayout(index)
			table.insert(visibleItems, {
				key = dataSource.getItemKey(index),
				viewportCoordinate = itemLayout.startOffset - viewport.getScrollOffset(),
				itemLength = itemLayout.length,
			})
		end
		return {
			scrollOffset = viewport.getScrollOffset(),
			viewportLength = viewport.getScrollAxisLength(),
			visibleItems = visibleItems,
		}
	end

	local function applyCorrection(
		effects: { VirtualizerSnapshot.Effect },
		correction: createScrollPositionController.Correction?
	)
		if correction == nil then
			return
		end
		local previous = viewport.getScrollOffset()
		viewport.setScrollOffset(previous + correction.delta)
		local applied = viewport.getScrollOffset() - previous
		if math.abs(applied) < 1 then
			return
		end
		table.insert(effects, { type = VirtualizerEffectType.ScrollCorrection, delta = applied })
		table.insert(
			effects,
			{ type = VirtualizerEffectType.ScrollPositionChanged, offset = viewport.getScrollOffset() }
		)
		if options.diagnostics ~= nil then
			addDiagnostic(effects, {
				kind = Diagnostics.EventKind.ScrollCorrection,
				source = correction.source,
				delta = applied,
			})
		end
	end

	local function resetLayout(resetKeys: { string }?)
		local keys = resetKeys or dataKeys()
		revisions.applyChange({ type = DataSourceChangeType.Reset, keys = keys })
		layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = keys })
		viewport.refreshContentMetrics()
	end

	local function applyPolicy(policy: VirtualizerSnapshot.Policy<T, RecyclableViewType>)
		assert(
			policy.overscan == nil or policy.overscanPolicy == nil,
			"VirtualizerEngine: overscan and overscanPolicy are mutually exclusive"
		)
		assert(
			policy.overscan == nil or (policy.overscan >= 0 and policy.overscan % 1 == 0),
			"VirtualizerEngine: overscan must be a non-negative integer"
		)
		DataPrefetch.resolve(policy.dataPrefetch)
		local previous = currentPolicy
		if previous.overscan ~= policy.overscan or previous.overscanPolicy ~= policy.overscanPolicy then
			overscanPolicy = policy.overscanPolicy or OverscanPolicy.fixed(policy.overscan)
			advanceVersion("overscanPolicy")
		end
		if previous.contentAlignment ~= policy.contentAlignment then
			if viewport.setContentAlignment(policy.contentAlignment) then
				advanceVersion("layoutGeometry")
			end
		end
		if previous.endThreshold ~= policy.endThreshold then
			viewport.setEndThreshold(policy.endThreshold)
		end
		if preservePosition ~= policy.preserveScrollPositionOnChange then
			preservePosition = policy.preserveScrollPositionOnChange
		end
		local previousInsets = planner.getContentInsets()
		if planner.setOptions(policy.pinnedItems) then
			local insets = planner.getContentInsets()
			viewport.setContentInsets(insets.start, insets.finish)
			hasViewportPlacements = policy.pinnedItems.isItemStickyHeader ~= nil
				or policy.pinnedItems.pinnedStartItem ~= nil
				or policy.pinnedItems.pinnedEndItem ~= nil
			advanceVersion("placementGeometry")
			if
				previous.pinnedItems.pinnedStartItem ~= policy.pinnedItems.pinnedStartItem
				or previous.pinnedItems.pinnedEndItem ~= policy.pinnedItems.pinnedEndItem
			then
				advanceVersion("identity")
			end
			if previousInsets.start ~= insets.start or previousInsets.finish ~= insets.finish then
				advanceVersion("layoutGeometry")
			end
		end
		currentPolicy = policy
	end

	local function execute(
		command: VirtualizerSnapshot.EngineCommand<T, RecyclableViewType>,
		effects: { VirtualizerSnapshot.Effect }
	): number?
		local result: number? = nil
		if command.type == VirtualizerCommandType.Activate then
			if not activated then
				local keys = dataKeys()
				activated = true
				resetLayout(keys)
				planner.applyDataSourceChange({
					changes = { { type = DataSourceChangeType.Reset, keys = keys } },
					previousItemCount = dataSource.getItemCount(),
					itemCount = dataSource.getItemCount(),
				})
				advanceVersion("layoutGeometry")
				advanceVersion("identity")
			end
		elseif
			command.type == VirtualizerCommandType.SetScrollOffset
			or command.type == VirtualizerCommandType.ObserveScrollOffset
		then
			local offset = if command.type == VirtualizerCommandType.SetScrollOffset
				then command.offset
				else command.observation.offset
			local changed = viewport.setScrollOffset(offset)
			if
				command.type == VirtualizerCommandType.ObserveScrollOffset
				and command.observation.kind == ScrollObservationKind.Programmatic
			then
				scrollPosition.reconcileHostOffset(viewport.getScrollOffset())
			elseif changed then
				scrollPosition.setViewportAnchor(viewport.getScrollOffset())
			end
		elseif
			command.type == VirtualizerCommandType.ScrollToIndex
			or command.type == VirtualizerCommandType.ScrollToOffset
			or command.type == VirtualizerCommandType.ScrollBy
			or command.type == VirtualizerCommandType.RestoreScrollAnchorSnapshot
		then
			if command.type == VirtualizerCommandType.ScrollToIndex then
				scrollPosition.setItemAnchor(command.index, command.alignment)
				result = viewport.scrollToOffset(viewport.getScrollOffsetForItem(command.index, command.alignment))
			elseif command.type == VirtualizerCommandType.ScrollToOffset then
				result = viewport.scrollToOffset(command.offset)
				scrollPosition.setViewportAnchor(result)
			elseif command.type == VirtualizerCommandType.ScrollBy then
				result = viewport.scrollBy(command.delta)
				scrollPosition.setViewportAnchor(result)
			else
				result = viewport.scrollToOffset(scrollPosition.getSnapshotOffset(command.snapshot))
				scrollPosition.restoreSnapshotAnchor(command.snapshot, result)
			end
			table.insert(effects, { type = VirtualizerEffectType.ScrollPositionChanged, offset = result :: number })
		elseif command.type == VirtualizerCommandType.SetViewportSize then
			if viewport.setViewportSize(command.scrollAxisLength, command.crossAxisLength) then
				if layout.setViewportCrossAxisLength(command.crossAxisLength) then
					advanceVersion("layoutGeometry")
				end
				if hasViewportPlacements then
					advanceVersion("placementGeometry")
				end
			end
		elseif command.type == VirtualizerCommandType.SetPolicy then
			applyPolicy(command.policy)
		elseif
			command.type == VirtualizerCommandType.SetDataSource
			or command.type == VirtualizerCommandType.SetDataSourceAndLayout
		then
			dataSource = command.dataSource
			planner.setDataSource(dataSource)
			if command.type == VirtualizerCommandType.SetDataSourceAndLayout then
				layout = command.layout
			end
			scrollPosition.reset()
			resetLayout()
			advanceVersion("layoutGeometry")
			advanceVersion("identity")
		elseif command.type == VirtualizerCommandType.SetLayout then
			layout = command.layout
			scrollPosition.reset()
			resetLayout()
			advanceVersion("layoutGeometry")
			advanceVersion("identity")
		elseif command.type == InternalVirtualizerCommandType.ApplyDataSourceChange then
			local before = viewport.getScrollState()
			local evidence = captureAnchorEvidence()
			local layoutGeometryChanged = false
			local correction = scrollPosition.applyGeometryChange({
				source = Diagnostics.ScrollCorrectionSource.Data,
				dataSourceChange = command.changeBatch,
				anchorEvidence = evidence,
			}, function()
				for _, change in command.changeBatch.changes do
					revisions.applyChange(change)
					layoutGeometryChanged = layout.applyDataSourceChange(change) or layoutGeometryChanged
				end
				planner.applyDataSourceChange(command.changeBatch)
				viewport.refreshContentMetrics()
			end)
			applyCorrection(effects, correction)
			table.insert(
				effects,
				{ type = VirtualizerEffectType.DataSourceChanged, changeBatch = command.changeBatch, before = before }
			)
			if layoutGeometryChanged then
				advanceVersion("layoutGeometry")
			end
			advanceVersion("identity")
		elseif command.type == InternalVirtualizerCommandType.SubmitLogicalMeasurements then
			local accepted = 0
			local dropped = command.boundaryDropped or 0
			local nextInsets
			local layoutGeometryChanged = false
			if #command.measurements > 0 and options.diagnostics ~= nil then
				addDiagnostic(effects, {
					kind = Diagnostics.EventKind.MeasurementsProcessingStarted,
					submitted = #command.measurements,
					boundaryDropped = dropped,
				})
			end
			local geometryChange: createScrollPositionController.GeometryChange = {
				source = Diagnostics.ScrollCorrectionSource.Measurement,
				preserveStartAnchor = true,
				startInsetDelta = 0,
			}
			local previousStartInset = planner.getContentInsets().start
			local correction = scrollPosition.applyGeometryChange(geometryChange, function()
				for _, measurement in command.measurements do
					if measurement.itemIndex ~= nil and measurement.pinnedPosition == nil then
						local index = measurement.itemIndex
						if
							index >= 1
							and index <= dataSource.getItemCount()
							and dataSource.getItemKey(index) == measurement.itemKey
							and revisions.get(measurement.itemKey) == measurement.itemRevision
						then
							local update = layout.updateItemMeasurement(measurement :: Types.ItemMeasurement)
							if update.accepted then
								accepted += 1
							else
								dropped += 1
							end
							layoutGeometryChanged = layoutGeometryChanged or update.geometryChanged
						else
							dropped += 1
						end
					elseif measurement.itemIndex == nil and measurement.pinnedPosition ~= nil then
						nextInsets = planner.updatePinnedMeasurement(
							measurement.pinnedPosition,
							measurement.itemKey,
							measurement.itemRevision,
							measurement.length
						)
						if nextInsets == nil then
							dropped += 1
						else
							accepted += 1
						end
					else
						dropped += 1
					end
				end
				if nextInsets ~= nil then
					-- Placed item coordinates include the Content-start offset.
					-- Subtract the inset delta so a measured pinned start item does
					-- not look like the first row moving down the Canvas.
					geometryChange.startInsetDelta = nextInsets.start - previousStartInset
					viewport.setContentInsets(nextInsets.start, nextInsets.finish)
					layoutGeometryChanged = true
				end
				viewport.refreshContentMetrics()
			end)
			applyCorrection(effects, correction)
			if options.diagnostics ~= nil then
				addDiagnostic(effects, {
					kind = Diagnostics.EventKind.MeasurementsProcessed,
					accepted = accepted,
					dropped = dropped,
				})
			end
			if layoutGeometryChanged then
				advanceVersion("layoutGeometry")
			end
		elseif command.type == VirtualizerCommandType.SubmitMeasurements then
			error("VirtualizerEngine: physical measurements belong to presentation", 0)
		elseif command.type == VirtualizerCommandType.ApplyScrollAnchorOffset then
			local previous = viewport.getScrollOffset()
			result = if scrollPosition.allowsExternalPositionApplication()
				then viewport.scrollToOffset(command.offset)
				else viewport.getScrollOffset()
			if result ~= previous then
				table.insert(effects, { type = VirtualizerEffectType.ScrollPositionChanged, offset = result :: number })
			end
		elseif command.type == VirtualizerCommandType.Refresh then
			advanceVersion("identity")
		elseif command.type == VirtualizerCommandType.Destroy then
			destroyed = true
			scrollPosition.destroy()
			planner.destroy()
			prefetch.destroy()
		else
			error("VirtualizerEngine: unknown command", 0)
		end
		return result
	end

	local function dispatch(
		command: VirtualizerSnapshot.EngineCommand<T, RecyclableViewType>
	): VirtualizerSnapshot.Update<T, RecyclableViewType>
		assert(not dispatching, "VirtualizerEngine: cannot dispatch during a Geometry transaction")
		assert(
			not destroyed or command.type == VirtualizerCommandType.Destroy,
			"VirtualizerEngine: cannot dispatch after destruction"
		)
		dispatching = true
		advancedInTransaction = {}
		local effects: { VirtualizerSnapshot.Effect } = {}
		local ok, result = pcall(execute, command, effects)
		if ok then
			refreshRanges(effects)
			if not destroyed then
				updatePrefetch(effects)
			end
			local committed = commitSnapshot()
			advancedInTransaction = nil
			dispatching = false
			return {
				snapshot = committed.snapshot,
				presentation = committed.presentation,
				result = result :: number?,
				effects = effects,
			}
		end
		advancedInTransaction = nil
		dispatching = false
		error(result, 0)
	end

	local function query(queryValue: VirtualizerSnapshot.LogicalQuery): any
		local snapshot = snapshotStore.getSnapshot()
		if queryValue.type == VirtualizerQueryType.GetVisibleRange then
			return snapshot.visibleRange
		elseif queryValue.type == VirtualizerQueryType.GetMountedRange then
			return snapshot.mountedRange
		elseif queryValue.type == VirtualizerQueryType.GetScrollState then
			return snapshot.scrollState
		elseif queryValue.type == VirtualizerQueryType.GetContentLength then
			return snapshot.contentLength
		elseif queryValue.type == VirtualizerQueryType.GetContentStartOffset then
			return snapshot.contentStartOffset
		elseif queryValue.type == VirtualizerQueryType.RequiresItemMeasurement then
			return snapshot.requiresItemMeasurement
		elseif queryValue.type == VirtualizerQueryType.GetItemLayout then
			return layout.getItemLayout(queryValue.index)
		elseif queryValue.type == VirtualizerQueryType.GetScrollOffsetForItem then
			return viewport.getScrollOffsetForItem(queryValue.index, queryValue.alignment)
		elseif queryValue.type == VirtualizerQueryType.CaptureScrollAnchorSnapshot then
			local index = if snapshot.visibleRange.firstIndex <= snapshot.visibleRange.lastIndex
				then snapshot.visibleRange.firstIndex
				else nil
			if index ~= nil then
				local itemLayout = layout.getItemLayout(index)
				return {
					anchorKey = dataSource.getItemKey(index),
					anchorIndex = index,
					offsetWithinItem = snapshot.scrollState.scrollOffset
						- snapshot.contentStartOffset
						- itemLayout.startOffset,
					fallbackScrollOffset = snapshot.scrollState.scrollOffset,
				}
			end
			return {
				anchorKey = nil,
				anchorIndex = nil,
				offsetWithinItem = 0,
				fallbackScrollOffset = snapshot.scrollState.scrollOffset,
			}
		end
		error("VirtualizerEngine: unknown query", 0)
	end

	return {
		dispatch = dispatch,
		getSnapshot = snapshotStore.getSnapshot,
		query = query,
	}
end

return createVirtualizerEngine
