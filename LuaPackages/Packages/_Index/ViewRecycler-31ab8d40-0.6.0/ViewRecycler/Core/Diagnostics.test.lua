local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Core = {
	DataSource = require(Src.Core.DataSource),
	Layout = require(Src.Core.Layout),
	Adapter = {
		createRecyclingScope = require(Src.Core.Recycling.RecyclingScope),
		createVirtualizer = require(Src.Core.Virtualizer),
	},
}
local CoreScenarios = require(Src.Core.Diagnostics.__tests__.CoreScenarios)

local function createTestVirtualizer(options)
	local recyclingScope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = options.recyclingAdapter.create,
			destroy = function() end,
		},
		onPoolChanged = if options.diagnostics == nil
			then nil
			else function(change)
				options.diagnostics({
					kind = "poolChanged",
					action = change.action,
					itemViewType = change.viewType,
					occupiedDelta = change.occupiedDelta,
					vacantDelta = change.vacantDelta,
					totalDelta = change.totalDelta,
				})
			end,
	})
	local coreOptions = table.clone(options)
	coreOptions.recyclingAdapter = nil
	coreOptions.recyclingScope = recyclingScope
	coreOptions.getItemViewType = options.recyclingAdapter.getType
	local virtualizer = Core.Adapter.createVirtualizer(coreOptions)
	local destroy = virtualizer.destroy
	virtualizer.destroy = function()
		destroy()
		recyclingScope.dispose()
	end
	return virtualizer
end

describe("Diagnostics", function()
	it("reports deterministic Core benchmark operation counts", function()
		local first = CoreScenarios.run(Core)
		local second = CoreScenarios.run(Core)

		expect(second).toEqual(first)
		expect(first).toEqual({
			fixed = {
				visibleRangeChanges = 6,
				renderedRangeChanges = 6,
				poolCreates = 7,
				poolAcquires = 1,
				poolReleases = 8,
				poolEvictions = 7,
				peakItemViews = 7,
				synchronizations = 7,
				retainedAssignments = 14,
				reassignedAssignments = 17,
				acquiredAssignments = 8,
				releasedAssignments = 3,
				acceptedMeasurements = 0,
				droppedMeasurements = 0,
				scrollCorrections = 0,
			},
			measured = {
				visibleRangeChanges = 7,
				renderedRangeChanges = 7,
				poolCreates = 7,
				poolAcquires = 1,
				poolReleases = 8,
				poolEvictions = 7,
				peakItemViews = 7,
				synchronizations = 8,
				retainedAssignments = 14,
				reassignedAssignments = 17,
				acquiredAssignments = 8,
				releasedAssignments = 4,
				acceptedMeasurements = 1,
				droppedMeasurements = 1,
				scrollCorrections = 0,
			},
		})
	end)

	it("reports visible and rendered ranges independently", function()
		local events = {}
		local layout = Core.Layout.uniform({ itemLength = 50 })
		local virtualizer = createTestVirtualizer({
			dataSource = Core.DataSource.snapshot({ "a", "b", "c", "d", "e" }, function(value)
				return value
			end),
			layout = layout,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return {}
				end,
				update = function() end,
			},
			overscan = 1,
			diagnostics = function(event)
				if event.kind == "rangeChanged" then
					table.insert(events, event)
				end
			end,
		})

		virtualizer.activate()
		table.clear(events)
		virtualizer.setViewportSize(100, 100)
		virtualizer.setScrollOffset(100)

		expect(events).toEqual({
			{
				kind = "rangeChanged",
				rangeKind = "visible",
				firstIndex = 1,
				lastIndex = 2,
			},
			{
				kind = "rangeChanged",
				rangeKind = "rendered",
				firstIndex = 1,
				lastIndex = 3,
			},
			{
				kind = "rangeChanged",
				rangeKind = "visible",
				firstIndex = 3,
				lastIndex = 4,
			},
			{
				kind = "rangeChanged",
				rangeKind = "rendered",
				firstIndex = 2,
				lastIndex = 5,
			},
		})

		virtualizer.destroy()
		layout.destroy()
	end)

	it("reports mounted overscan transitions with visible range changes", function()
		local events = {}
		local layout = Core.Layout.uniform({ itemLength = 50 })
		local virtualizer = createTestVirtualizer({
			dataSource = Core.DataSource.snapshot({ "a", "b", "c", "d", "e" }, function(value)
				return value
			end),
			layout = layout,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return {}
				end,
				update = function() end,
			},
			overscan = 2,
			diagnostics = function(event)
				if event.kind == "rangeChanged" then
					table.insert(events, event)
				end
			end,
		})

		virtualizer.activate()
		virtualizer.setViewportSize(50, 100)
		table.clear(events)
		virtualizer.setScrollOffset(50)

		expect(events).toEqual({
			{
				kind = "rangeChanged",
				rangeKind = "visible",
				firstIndex = 2,
				lastIndex = 2,
			},
			{
				kind = "rangeChanged",
				rangeKind = "rendered",
				firstIndex = 1,
				lastIndex = 4,
			},
		})

		virtualizer.destroy()
		layout.destroy()
	end)

	it("reports accepted and stale measurement outcomes", function()
		local events = {}
		local items = table.create(30)
		for index = 1, 30 do
			items[index] = `item{index}`
		end
		local layout = Core.Layout.measured({ estimatedItemLength = 50 })
		local virtualizer = createTestVirtualizer({
			dataSource = Core.DataSource.snapshot(items, function(value)
				return value
			end),
			layout = layout,
			recyclingAdapter = {
				getType = function()
					return "row"
				end,
				create = function()
					return {}
				end,
				update = function() end,
			},
			overscan = 20,
			diagnostics = function(event)
				if
					event.kind == "measurementsProcessingStarted"
					or event.kind == "measurementsProcessed"
					or event.kind == "scrollCorrection"
				then
					table.insert(events, event)
				end
			end,
		})
		virtualizer.activate()
		local current = virtualizer.setViewportSize(200, 100)
		current = virtualizer.setScrollOffset(500)
		local measuredView = nil
		local measuredState = nil
		for _, mountedView in current.mountedViews do
			local itemView = mountedView.itemView
			local state = mountedView.state
			if state ~= nil and state.assignment.key == "item1" then
				measuredView = itemView
				measuredState = state
				break
			end
		end
		assert(measuredView ~= nil and measuredState ~= nil, "expected an active view state")

		local staleState = table.clone(measuredState)
		staleState.assignment = table.clone(measuredState.assignment)
		virtualizer.submitMeasurements({
			{
				itemView = measuredView,
				state = measuredState,
				length = 100,
			},
			{
				itemView = measuredView,
				state = staleState,
				length = 100,
			},
		})

		expect(events).toEqual({
			{
				kind = "measurementsProcessingStarted",
				submitted = 1,
				boundaryDropped = 1,
			},
			{
				kind = "scrollCorrection",
				source = "measurement",
				delta = 50,
			},
			{
				kind = "measurementsProcessed",
				accepted = 1,
				dropped = 1,
			},
		})

		virtualizer.destroy()
		layout.destroy()
	end)
end)
