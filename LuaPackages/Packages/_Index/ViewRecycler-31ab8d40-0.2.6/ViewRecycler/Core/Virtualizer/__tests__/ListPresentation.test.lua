local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local IdentityKind = require(Src.Core.Enums.IdentityKind)
local createListPresentation = require(Src.Core.Virtualizer.ListPresentation)
local createRecyclingScope = require(Src.Core.RecyclingScope)

local function entry(key, revision, offset)
	return table.freeze({
		key = key,
		index = 1,
		value = key,
		recyclableViewType = "row",
		identity = table.freeze({ kind = IdentityKind.Data, index = 1, revision = revision }),
		itemLayout = table.freeze({ startOffset = offset or 0, length = 10 }),
		canvasPlacement = table.freeze({ mainAxisOffset = offset or 0, mainAxisLength = 10 }),
		viewportPlacement = nil,
		measurementIdentity = table.freeze({
			itemIndex = 1,
			itemKey = key,
			itemRevision = revision,
			pinnedPosition = nil,
		}),
	})
end

local function snapshot(version, entries, contentStartOffset)
	return table.freeze({
		version = version,
		entries = if table.isfrozen(entries) then entries else table.freeze(entries),
		visibleRange = table.freeze({ firstIndex = 1, lastIndex = #entries }),
		mountedRange = table.freeze({ firstIndex = 1, lastIndex = #entries }),
		scrollState = table.freeze({
			scrollOffset = 0,
			viewportLength = 10,
			contentLength = 10,
			distanceFromEnd = 0,
			atStart = true,
			atEnd = true,
		}),
		contentStartOffset = contentStartOffset or 0,
		contentLength = 10,
		requiresItemMeasurement = false,
	})
end

local function createHarness()
	local events = {}
	local nextId = 0
	local exchangeCount = 0
	local scope = createRecyclingScope({
		adapter = {
			create = function()
				nextId += 1
				return { id = nextId }
			end,
			destroy = function() end,
		},
	})
	local wrappedScope = {
		exchange = function(owner, releases, requests)
			exchangeCount += 1
			return scope.exchange(owner, releases, requests)
		end,
		batch = scope.batch,
		isLeaseCurrent = scope.isLeaseCurrent,
		setMaxPoolSize = scope.setMaxPoolSize,
		getScopeInventory = scope.getScopeInventory,
		getVacantViews = scope.getVacantViews,
		destroy = scope.destroy,
	}
	local presentation = createListPresentation({
		recyclingScope = wrappedScope,
		prepareAssignment = function(_, assignment)
			table.insert(events, if assignment == nil then "prepare:nil" else `prepare:{assignment.key}`)
		end,
		applyPlacementIntent = function(_, intent)
			table.insert(events, if intent == nil then "place:nil" else `place:{intent.assignment.key}`)
		end,
		postCommitAssignment = function(_, assignment)
			table.insert(events, if assignment == nil then "post:nil" else `post:{assignment.key}`)
		end,
		presentAssignment = function(_, assignment)
			table.insert(events, `present:{assignment.key}`)
		end,
	})
	return presentation, scope, events, function()
		return exchangeCount
	end
end

it("publishes each acquired Assignment once in phase order", function()
	local presentation, scope, events = createHarness()
	local nextSnapshot = snapshot(1, { entry("a", 1) })
	presentation.apply(nil, nextSnapshot, { assignmentsChanged = true, placementChanged = true })

	expect(events).toEqual({ "prepare:a", "place:a", "post:a", "present:a" })
	expect(#presentation.getItemViews()).toBe(1)
	presentation.destroy()
	scope.destroy()
end)

it("does no presentation or Recycling work for a shared entry graph", function()
	local presentation, scope, events, getExchangeCount = createHarness()
	local entries = table.freeze({ entry("a", 1) })
	local first = snapshot(1, entries)
	local second = snapshot(2, entries)
	presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
	local exchanges = getExchangeCount()
	table.clear(events)

	presentation.apply(first, second, { assignmentsChanged = false, placementChanged = false })
	expect(getExchangeCount()).toBe(exchanges)
	expect(events).toEqual({})
	presentation.destroy()
	scope.destroy()
end)

it("updates placement without reconciling or replacing the Assignment", function()
	local presentation, scope, events, getExchangeCount = createHarness()
	local first = snapshot(1, { entry("a", 1, 0) })
	local second = snapshot(2, { entry("a", 1, 5) })
	presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
	local itemView = presentation.getItemViews()[1]
	local generation = presentation.resolvePlacementIntent(itemView).assignment.generation
	local exchanges = getExchangeCount()
	table.clear(events)

	local diagnostics = presentation.apply(first, second, { assignmentsChanged = false, placementChanged = true })
	expect(presentation.resolvePlacementIntent(itemView).assignment.generation).toBe(generation)
	expect(getExchangeCount()).toBe(exchanges)
	expect(diagnostics).toEqual({})
	expect(events).toEqual({ "place:a" })
	presentation.destroy()
	scope.destroy()
end)

it("restates placement for an unchanged entry when the Content-start offset shifts", function()
	local presentation, scope, events = createHarness()
	local entries = table.freeze({ entry("a", 1) })
	local first = snapshot(1, entries)
	local second = snapshot(2, entries, 34)
	presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
	local itemView = presentation.getItemViews()[1]
	table.clear(events)

	presentation.apply(first, second, { assignmentsChanged = false, placementChanged = false })
	expect(events).toEqual({ "place:a" })
	expect(presentation.resolvePlacementIntent(itemView).contentStartOffset).toBe(34)
	presentation.destroy()
	scope.destroy()
end)

it("restates placement for a retained entry reconciled across a Content-start shift", function()
	local presentation, scope, events = createHarness()
	local retained = entry("a", 1)
	local first = snapshot(1, { retained })
	local second = snapshot(2, { retained, entry("b", 1, 10) }, 34)
	presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
	local itemView = presentation.getItemViews()[1]
	table.clear(events)

	presentation.apply(first, second, { assignmentsChanged = true, placementChanged = true })
	expect(presentation.resolvePlacementIntent(itemView).contentStartOffset).toBe(34)
	expect(events).toContain("place:a")
	presentation.destroy()
	scope.destroy()
end)

it("increments generation for a same-key revision", function()
	local presentation, scope = createHarness()
	local first = snapshot(1, { entry("a", 1) })
	local second = snapshot(2, { entry("a", 2) })
	presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
	local itemView = presentation.getItemViews()[1]
	local generation = presentation.resolvePlacementIntent(itemView).assignment.generation

	presentation.apply(first, second, { assignmentsChanged = true, placementChanged = true })
	expect(presentation.getItemViews()[1]).toBe(itemView)
	expect(presentation.resolvePlacementIntent(itemView).assignment.generation).never.toBe(generation)
	presentation.destroy()
	scope.destroy()
end)

it("reuses a released compatible ItemView without publishing nil", function()
	local presentation, scope, events = createHarness()
	local first = snapshot(1, { entry("a", 1) })
	local second = snapshot(2, { entry("b", 1) })
	presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
	local itemView = presentation.getItemViews()[1]
	table.clear(events)

	presentation.apply(first, second, { assignmentsChanged = true, placementChanged = true })
	expect(presentation.getItemViews()[1]).toBe(itemView)
	expect(events).toEqual({ "prepare:b", "place:b", "post:b", "present:b" })
	presentation.destroy()
	scope.destroy()
end)

it("rejects stale physical measurements", function()
	local presentation, scope = createHarness()
	local first = snapshot(1, { entry("a", 1) })
	presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
	local itemView = presentation.getItemViews()[1]
	local intent = presentation.resolvePlacementIntent(itemView)
	local accepted, dropped = presentation.validateMeasurements({
		{
			itemIndex = 1,
			itemKey = "a",
			assignmentGeneration = intent.assignment.generation,
			itemRevision = 1,
			length = 20,
		},
		{
			itemIndex = 1,
			itemKey = "a",
			assignmentGeneration = intent.assignment.generation - 1,
			itemRevision = 1,
			length = 30,
		},
	})

	expect(#accepted).toBe(1)
	expect(accepted[1].length).toBe(20)
	expect(dropped).toBe(1)
	presentation.destroy()
	scope.destroy()
end)
