local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Core = {
	DataSource = require(Src.Core.DataSource),
	Layout = require(Src.Core.Layout),
	VirtualizerCommandType = require(Src.Core.Enums.VirtualizerCommandType).External,
	VirtualizerEffectType = require(Src.Core.Enums.VirtualizerEffectType),
	VirtualizerQueryType = require(Src.Core.Enums.VirtualizerQueryType),
	Adapter = {
		createRecyclingScope = require(Src.Core.RecyclingScope),
		createVirtualizer = require(Src.Core.Virtualizer),
	},
}
local CoreScenarios = require(Src.Core.Diagnostics.__tests__.CoreScenarios)
local createItemViewRecyclingScope = require(Src.Core.Virtualizer.createItemViewRecyclingScope)

local function createTestVirtualizer(options)
	local recyclingScope = createItemViewRecyclingScope({
		itemViewAdapter = options.recyclingAdapter,
		diagnostics = options.diagnostics,
	})
	local coreOptions = table.clone(options)
	coreOptions.recyclingAdapter = nil
	coreOptions.recyclingScope = recyclingScope
	coreOptions.getItemViewType = options.recyclingAdapter.getType
	coreOptions.postCommitAssignment = options.recyclingAdapter.update
	local virtualizer = Core.Adapter.createVirtualizer(coreOptions)
	local dispatch = virtualizer.dispatch
	virtualizer.dispatch = function(command)
		local update = dispatch(command)
		if command.type == Core.VirtualizerCommandType.Destroy then
			recyclingScope.destroy()
		end
		return update
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
				renderedRangeChanges = 5,
				poolCreates = 7,
				poolAcquires = 1,
				poolReleases = 8,
				poolEvictions = 7,
				peakItemViews = 7,
				synchronizations = 7,
				retainedAssignments = 8,
				reassignedAssignments = 17,
				acquiredAssignments = 8,
				releasedAssignments = 3,
				acceptedMeasurements = 0,
				droppedMeasurements = 0,
				scrollCorrections = 0,
			},
			measured = {
				visibleRangeChanges = 7,
				renderedRangeChanges = 6,
				poolCreates = 7,
				poolAcquires = 1,
				poolReleases = 8,
				poolEvictions = 7,
				peakItemViews = 7,
				synchronizations = 8,
				retainedAssignments = 12,
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

		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
		table.clear(events)
		virtualizer.dispatch({
			type = Core.VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 100,
			crossAxisLength = 100,
		})
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = 100 })

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

		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
		layout.destroy()
	end)

	it("reports visible range transitions inside the mounted overscan band", function()
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

		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
		virtualizer.dispatch({
			type = Core.VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 50,
			crossAxisLength = 100,
		})
		table.clear(events)
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = 50 })

		expect(events).toEqual({
			{
				kind = "rangeChanged",
				rangeKind = "visible",
				firstIndex = 2,
				lastIndex = 2,
			},
		})

		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
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
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
		virtualizer.dispatch({
			type = Core.VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 200,
			crossAxisLength = 100,
		})
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = 500 })
		local identity = nil
		for _, itemView in virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews }) do
			local intent =
				virtualizer.query({ type = Core.VirtualizerQueryType.GetPlacementIntent, itemView = itemView })
			if intent ~= nil and intent.measurementIdentity.itemKey == "item1" then
				identity = intent.measurementIdentity
				break
			end
		end
		assert(identity ~= nil, "expected an active measurement identity")

		virtualizer.dispatch({
			type = Core.VirtualizerCommandType.SubmitMeasurements,
			measurements = {
				{
					itemIndex = identity.itemIndex,
					itemKey = identity.itemKey,
					assignmentGeneration = identity.assignmentGeneration,
					itemRevision = identity.itemRevision,
					length = 100,
				},
				{
					itemIndex = 2,
					itemKey = "stale",
					assignmentGeneration = identity.assignmentGeneration,
					itemRevision = 0,
					length = 100,
				},
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

		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
		layout.destroy()
	end)
end)
