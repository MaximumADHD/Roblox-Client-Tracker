export type Counters = {
	visibleRangeChanges: number,
	renderedRangeChanges: number,
	poolCreates: number,
	poolAcquires: number,
	poolReleases: number,
	poolEvictions: number,
	peakItemViews: number,
	synchronizations: number,
	retainedAssignments: number,
	reassignedAssignments: number,
	acquiredAssignments: number,
	releasedAssignments: number,
	acceptedMeasurements: number,
	droppedMeasurements: number,
	scrollCorrections: number,
}

local function createCounters()
	local counters: Counters = {
		visibleRangeChanges = 0,
		renderedRangeChanges = 0,
		poolCreates = 0,
		poolAcquires = 0,
		poolReleases = 0,
		poolEvictions = 0,
		peakItemViews = 0,
		synchronizations = 0,
		retainedAssignments = 0,
		reassignedAssignments = 0,
		acquiredAssignments = 0,
		releasedAssignments = 0,
		acceptedMeasurements = 0,
		droppedMeasurements = 0,
		scrollCorrections = 0,
	}
	local allocatedItemViews = 0

	local function diagnostics(event)
		if event.kind == "rangeChanged" then
			if event.rangeKind == "visible" then
				counters.visibleRangeChanges += 1
			else
				counters.renderedRangeChanges += 1
			end
		elseif event.kind == "poolChanged" then
			if event.action == "create" then
				counters.poolCreates += 1
			elseif event.action == "acquire" then
				counters.poolAcquires += 1
			elseif event.action == "release" then
				counters.poolReleases += 1
			else
				counters.poolEvictions += 1
			end
			allocatedItemViews += event.totalDelta
			counters.peakItemViews = math.max(counters.peakItemViews, allocatedItemViews)
		elseif event.kind == "itemViewsSynchronized" then
			counters.synchronizations += 1
			counters.retainedAssignments += event.retained
			counters.reassignedAssignments += event.reassigned
			counters.acquiredAssignments += event.acquired
			counters.releasedAssignments += event.released
		elseif event.kind == "measurementsProcessed" then
			counters.acceptedMeasurements += event.accepted
			counters.droppedMeasurements += event.dropped
		elseif event.kind == "scrollCorrection" then
			counters.scrollCorrections += 1
		end
	end

	return counters, diagnostics
end

local function values(count: number)
	local result = table.create(count)
	for index = 1, count do
		result[index] = {
			id = `item{index}`,
			kind = if index % 10 == 0 then "header" else "row",
		}
	end
	return result
end

local function runScenario(Core, measured: boolean): Counters
	local counters, diagnostics = createCounters()
	local dataSource = Core.DataSource.sequence(values(100), function(item)
		return item.id
	end)
	local layout = if measured
		then Core.Layout.measured({ estimatedItemLength = 40 })
		else Core.Layout.uniform({ itemLength = 40 })
	local nextItemViewId = 0
	local recyclingScope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function()
				nextItemViewId += 1
				return nextItemViewId
			end,
			destroy = function() end,
		},
		maxPoolSize = 2,
		onPoolChanged = function(change)
			diagnostics({
				kind = "poolChanged",
				action = change.action,
				itemViewType = change.viewType,
				occupiedDelta = change.occupiedDelta,
				vacantDelta = change.vacantDelta,
				totalDelta = change.totalDelta,
			})
		end,
	})
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = dataSource,
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function(item)
			return item.kind
		end,
		overscan = 1,
		diagnostics = diagnostics,
	})

	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SetViewportSize,
		scrollAxisLength = 160,
		crossAxisLength = 320,
	})
	for _, offset in { 40, 80, 400, 800, 0 } do
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = offset })
	end
	dataSource.setItem(1, {
		id = "item1",
		kind = "header",
	})
	if measured then
		local identity = nil
		for _, itemView in virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews }) do
			local intent =
				virtualizer.query({ type = Core.VirtualizerQueryType.GetPlacementIntent, itemView = itemView })
			if intent ~= nil and intent.measurementIdentity.itemKey == "item1" then
				identity = intent.measurementIdentity
				break
			end
		end
		assert(identity ~= nil, "expected item1 measurement identity")
		virtualizer.dispatch({
			type = Core.VirtualizerCommandType.SubmitMeasurements,
			measurements = {
				{
					itemIndex = identity.itemIndex,
					itemKey = identity.itemKey,
					assignmentGeneration = identity.assignmentGeneration,
					itemRevision = identity.itemRevision,
					length = 80,
				},
				{
					itemIndex = 2,
					itemKey = "stale",
					assignmentGeneration = identity.assignmentGeneration,
					itemRevision = 0,
					length = 80,
				},
			},
		})
	end

	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
	recyclingScope.destroy()
	layout.destroy()
	return counters
end

local function run(Core)
	return {
		fixed = runScenario(Core, false),
		measured = runScenario(Core, true),
	}
end

return {
	run = run,
}
