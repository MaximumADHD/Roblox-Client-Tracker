local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local IdentityKind = require(Src.Core.Enums.IdentityKind)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)
local createListPresentation = require(Src.Core.Virtualizer.ListPresentation)
local createRecyclingScope = require(Src.Core.RecyclingScope)

local function entry(key, revision, offset, options)
	options = options or {}
	local index = options.index
	if index == nil and options.pinnedPosition == nil then
		index = 1
	end
	return table.freeze({
		key = key,
		index = index,
		value = options.value or key,
		recyclableViewType = options.viewType or "row",
		identity = if options.pinnedPosition == nil
			then table.freeze({ kind = IdentityKind.Data, index = index, revision = revision })
			else table.freeze({
				kind = IdentityKind.Pinned,
				position = options.pinnedPosition,
				revision = revision,
			}),
		itemLayout = options.itemLayout or table.freeze({ startOffset = offset or 0, length = 10 }),
		canvasPlacement = options.canvasPlacement
			or table.freeze({ mainAxisOffset = offset or 0, mainAxisLength = 10 }),
		viewportPlacement = options.viewportPlacement,
		measurementIdentity = table.freeze({
			itemIndex = index,
			itemKey = key,
			itemRevision = revision,
			pinnedPosition = options.pinnedPosition,
		}),
	})
end

local function snapshot(version, entries)
	return table.freeze({
		version = version,
		entries = table.freeze(entries),
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
		contentStartOffset = 0,
		contentLength = 10,
		requiresItemMeasurement = false,
	})
end

local function createHarness()
	local created = 0
	local destroyed = 0
	local placements = 0
	local assignments = 0
	local scope = createRecyclingScope({
		adapter = {
			create = function(viewType)
				created += 1
				return { id = created, viewType = viewType }
			end,
			destroy = function()
				destroyed += 1
			end,
		},
	})
	local presentation = createListPresentation({
		recyclingScope = scope,
		prepareAssignment = function()
			assignments += 1
		end,
		applyPlacementIntent = function()
			placements += 1
		end,
	})
	return presentation,
		scope,
		{
			created = function()
				return created
			end,
			destroyed = function()
				return destroyed
			end,
			placements = function()
				return placements
			end,
			assignments = function()
				return assignments
			end,
		}
end

describe("ListPresentation behavioral parity", function()
	it("returns one stable ordinary Placement intent without viewport allocation", function()
		local presentation, scope, counts = createHarness()
		local nextSnapshot = snapshot(1, { entry("a", 1, 5) })
		presentation.apply(nil, nextSnapshot, { assignmentsChanged = true, placementChanged = true })
		local itemView = presentation.getItemViews()[1]

		local first = presentation.resolvePlacementIntent(itemView)
		local second = presentation.resolvePlacementIntent(itemView)
		expect(second.assignment).toBe(first.assignment)
		expect(second.itemLayout).toBe(first.itemLayout)
		expect(second.canvasPlacement).toBe(first.canvasPlacement)
		expect(second.viewportPlacement).toBeNil()
		expect(counts.created()).toBe(1)
		presentation.destroy()
		scope.destroy()
	end)

	it("reconciles an assignment-only change while retaining placement identity", function()
		local presentation, scope, counts = createHarness()
		local itemLayout = table.freeze({ startOffset = 0, length = 10 })
		local canvasPlacement = table.freeze({ mainAxisOffset = 0, mainAxisLength = 10 })
		local first = snapshot(1, {
			entry("a", 1, 0, { itemLayout = itemLayout, canvasPlacement = canvasPlacement }),
		})
		local second = snapshot(2, {
			entry("a", 2, 0, { itemLayout = itemLayout, canvasPlacement = canvasPlacement }),
		})
		presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
		local placements = counts.placements()

		presentation.apply(first, second, { assignmentsChanged = true, placementChanged = false })
		local intent = presentation.resolvePlacementIntent(presentation.getItemViews()[1])
		expect(counts.assignments()).toBe(2)
		expect(counts.placements()).toBe(placements + 1)
		expect(intent.assignment.generation).toBe(2)
		expect(intent.itemLayout).toBe(itemLayout)
		expect(intent.canvasPlacement).toBe(canvasPlacement)
		presentation.destroy()
		scope.destroy()
	end)

	it("keeps a concrete ItemView and skips redundant placement notification after reassignment", function()
		local presentation, scope = createHarness()
		local first = snapshot(1, { entry("a", 1, 0) })
		local second = snapshot(2, { entry("a", 2, 0) })
		presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
		local itemView = presentation.getItemViews()[1]
		local notifications = 0
		local unsubscribe = presentation.onPlacementIntentChanged(itemView, function()
			notifications += 1
		end)

		presentation.apply(first, second, { assignmentsChanged = true, placementChanged = true })
		expect(presentation.getItemViews()[1]).toBe(itemView)
		expect(notifications).toBe(0)
		unsubscribe()
		presentation.destroy()
		scope.destroy()
	end)

	it("acquires an ItemView for a pinned-only assignment", function()
		local presentation, scope, counts = createHarness()
		local pinned = entry("$start", 1, 0, {
			index = nil,
			viewType = "pin",
			pinnedPosition = PinnedPosition.Start,
			viewportPlacement = table.freeze({ mainAxisOffset = 0, mainAxisLength = 10 }),
		})
		presentation.apply(nil, snapshot(1, { pinned }), {
			assignmentsChanged = true,
			placementChanged = true,
		})

		local itemView = presentation.getItemViews()[1]
		local intent = presentation.resolvePlacementIntent(itemView)
		expect(itemView.viewType).toBe("pin")
		expect(intent.assignment.key).toBe("$start")
		expect(intent.assignment.index).toBeNil()
		expect(intent.viewportPlacement).never.toBeNil()
		expect(counts.created()).toBe(1)
		presentation.destroy()
		scope.destroy()
	end)

	it("owns idempotent release and destruction and ignores later applies", function()
		local presentation, scope, counts = createHarness()
		local first = snapshot(1, { entry("a", 1, 0) })
		presentation.apply(nil, first, { assignmentsChanged = true, placementChanged = true })
		local itemView = presentation.getItemViews()[1]

		presentation.destroy()
		presentation.destroy()
		expect(presentation.getItemViews()).toEqual({})
		expect(presentation.resolvePlacementIntent(itemView)).toBeNil()
		expect(presentation.getSnapshot()).toBeNil()
		expect(counts.assignments()).toBe(2)
		expect(scope.getVacantViews()).toEqual({ itemView })
		expect(presentation.apply(nil, first, {
			assignmentsChanged = true,
			placementChanged = true,
		})).toEqual({})
		expect(counts.created()).toBe(1)
		scope.destroy()
		expect(counts.destroyed()).toBe(1)
	end)

	it("rejects duplicate desired keys before mutating the Recycling scope", function()
		local presentation, scope, counts = createHarness()
		local duplicate = snapshot(1, {
			entry("same", 1, 0),
			entry("same", 1, 10),
		})

		expect(function()
			presentation.apply(nil, duplicate, { assignmentsChanged = true, placementChanged = true })
		end).toThrow('duplicate key "same"')
		expect(counts.created()).toBe(0)
		expect(counts.assignments()).toBe(0)
		expect(counts.placements()).toBe(0)
		expect(scope.getScopeInventory()).toEqual({})
		presentation.destroy()
		scope.destroy()
	end)
end)
