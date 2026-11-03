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
	local rawScope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function()
				nextItemViewId += 1
				return nextItemViewId
			end,
			destroy = function() end,
		},
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
	local recyclingScope = {
		bind = function(binding)
			local bounded = table.clone(binding)
			bounded.capacity = 2
			return rawScope.bind(bounded)
		end,
		dispose = rawScope.dispose,
	}
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

	virtualizer.activate()
	virtualizer.setViewportSize(160, 320)
	for _, offset in { 40, 80, 400, 800, 0 } do
		virtualizer.setScrollOffset(offset)
	end
	dataSource.setItem(1, {
		id = "item1",
		kind = "header",
	})
	if measured then
		local measuredView = nil
		local measuredState = nil
		for _, mountedView in virtualizer.getCurrent().mountedViews do
			local itemView = mountedView.itemView
			local state = mountedView.state
			if state ~= nil and state.assignment.key == "item1" then
				measuredView = itemView
				measuredState = state
				break
			end
		end
		assert(measuredView ~= nil and measuredState ~= nil, "expected item1 view state")
		local staleState = table.clone(measuredState)
		staleState.assignment = table.clone(measuredState.assignment)
		virtualizer.submitMeasurements({
			{
				itemView = measuredView,
				state = measuredState,
				length = 80,
			},
			{
				itemView = measuredView,
				state = staleState,
				length = 80,
			},
		})
	end

	virtualizer.destroy()
	recyclingScope.dispose()
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
