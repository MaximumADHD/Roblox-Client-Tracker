local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSource = require(Src.Core.DataSource)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local IdentityKind = require(Src.Core.Enums.IdentityKind)
local Layout = require(Src.Core.Layout)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)
local createPinnedItemPlanner = require(Src.Core.PinnedItems.createPinnedItemPlanner)
local createStickyIndexResolver = require(Src.Core.PinnedItems.StickyIndexResolver)

type Item = { id: string, sticky: boolean? }

local function source(items: { Item })
	return DataSource.sequence(items, function(item)
		return item.id
	end)
end

describe("PinnedItems", function()
	it("resolves sticky indices only after Virtualizer delivers an ordered change", function()
		local dataSource = source({ { id = "a", sticky = true }, { id = "b" } })
		local resolver = createStickyIndexResolver(dataSource, function(key)
			return key == "a"
		end)
		local active, successor = resolver.resolveActive(function()
			return true
		end)
		expect({ active, successor }).toEqual({ 1 })

		dataSource.insert(1, { id = "x" })
		active, successor = resolver.resolveActive(function()
			return true
		end)
		expect({ active, successor }).toEqual({ 1 })
		resolver.applyDataSourceChange({
			changes = { { type = DataSourceChangeType.Insert, index = 1, keys = { "x" } } },
			previousItemCount = 2,
			itemCount = 3,
		})
		active, successor = resolver.resolveActive(function()
			return true
		end)
		expect({ active, successor }).toEqual({ 2 })
	end)

	it("updates routine sticky metadata without rescanning item keys", function()
		local dataSource = source({
			{ id = "header-a" },
			{ id = "row-a" },
			{ id = "header-b" },
			{ id = "row-b" },
		})
		local keyReads = 0
		local itemSequence = {
			getItemCount = dataSource.getItemCount,
			getItemKey = function(index)
				keyReads += 1
				return dataSource.getItemKey(index)
			end,
		}
		local resolver = createStickyIndexResolver(itemSequence, function(key)
			return string.find(key, "header", 1, true) ~= nil
		end)
		local batch
		dataSource.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local function expectAround(threshold, expected)
			local active, successor = resolver.resolveActive(function(index)
				return index <= threshold
			end)
			expect({ active, successor }).toEqual(expected)
		end
		expectAround(2, { 1, 3 })

		local function applyWithoutScan(threshold, expected)
			keyReads = 0
			resolver.applyDataSourceChange(batch)
			expectAround(threshold, expected)
			expect(keyReads).toBe(0)
		end

		dataSource.setItem(1, { id = "header-a", sticky = false })
		applyWithoutScan(2, { 1, 3 })

		dataSource.insert(2, { id = "header-inserted" })
		applyWithoutScan(3, { 2, 4 })

		dataSource.remove(1)
		applyWithoutScan(2, { 1, 3 })

		dataSource.moveItem(3, 1)
		applyWithoutScan(1, { 1, 2 })
	end)

	it("bounds all-sticky routine updates and active lookup", function()
		local count = 4096
		local initial = table.create(count)
		for index = 1, count do
			initial[index] = { id = `item-{index}` }
		end
		local dataSource = source(initial)
		local keyReads = 0
		local predicateCalls = 0
		local itemSequence = {
			getItemCount = dataSource.getItemCount,
			getItemKey = function(index)
				keyReads += 1
				return dataSource.getItemKey(index)
			end,
		}
		local resolver = createStickyIndexResolver(itemSequence, function()
			predicateCalls += 1
			return true
		end)
		local batch
		dataSource.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local function resolveNearMiddle()
			local layoutCalls = 0
			local active, successor = resolver.resolveActive(function(index)
				layoutCalls += 1
				return index <= 2048
			end)
			expect(active).toBe(2048)
			expect(successor).toBe(2049)
			expect(layoutCalls).toBeLessThan(64)
		end

		resolveNearMiddle()
		expect(predicateCalls).toBe(count)

		keyReads = 0
		predicateCalls = 0
		dataSource.insert(1, { id = "inserted" })
		resolver.applyDataSourceChange(batch)
		resolveNearMiddle()
		expect(keyReads).toBe(0)
		expect(predicateCalls).toBe(1)

		dataSource.remove(1)
		resolver.applyDataSourceChange(batch)
		resolveNearMiddle()
		expect(keyReads).toBe(0)
		expect(predicateCalls).toBe(1)

		dataSource.moveItem(count, 1)
		resolver.applyDataSourceChange(batch)
		resolveNearMiddle()
		expect(keyReads).toBe(0)
		expect(predicateCalls).toBe(1)
	end)

	it("keeps adversarial rank updates deterministically height-bounded", function()
		local resolver = createStickyIndexResolver({
			getItemCount = function()
				return 0
			end,
			getItemKey = function()
				error("unexpected rebuild read")
			end,
		}, function()
			return true
		end)
		resolver.resolveActive(function()
			return false
		end)

		local count = 4096
		for index = 1, count do
			resolver.applyDataSourceChange({
				changes = {
					{ type = DataSourceChangeType.Insert, index = 1, keys = { `item-{index}` } },
				},
				previousItemCount = index - 1,
				itemCount = index,
			})
		end

		local maximumLookupCalls = 0
		for threshold = 0, count do
			local lookupCalls = 0
			resolver.resolveActive(function(index)
				lookupCalls += 1
				return index <= threshold
			end)
			maximumLookupCalls = math.max(maximumLookupCalls, lookupCalls)
		end
		expect(maximumLookupCalls).toBeLessThanOrEqual(18)
	end)

	it("builds logical-start sticky push-off and accepts current pinned measurements", function()
		local dataSource = source({
			{ id = "header-a", sticky = true },
			{ id = "row" },
			{ id = "header-b", sticky = true },
		})
		local layout = Layout.uniform({ itemLength = 10 })
		local planner = createPinnedItemPlanner(dataSource, {
			isItemStickyKey = function(key)
				return key == "header-a" or key == "header-b"
			end,
			pinnedStartItem = {
				key = "$start",
				value = { id = "$start" },
				itemViewType = "pin",
			},
		})
		local function update(offset)
			return planner.update({
				itemSequence = dataSource,
				layout = layout,
				scrollOffset = offset,
				viewportLength = 20,
				contentStartOffset = planner.getContentInsets().start,
			})
		end

		local initial = update(15)
		expect(initial.placements["header-a"]).toEqual({
			mainAxisOffset = 0,
			mainAxisLength = 10,
			mainAxisEndLimit = 5,
			viewportRelative = true,
			zIndex = 1,
		})
		expect(initial.additionalItems[1].identity).toEqual({
			kind = IdentityKind.Pinned,
			position = PinnedPosition.Start,
			revision = 1,
		})
		expect(planner.updatePinnedMeasurement(PinnedPosition.Start, "$start", 0, 5)).toBeNil()
		expect(planner.updatePinnedMeasurement(PinnedPosition.Start, "$start", 1, 5)).toEqual({ start = 5, finish = 0 })
		local measured = update(15).placements["header-a"]
		expect(measured.mainAxisOffset).toBe(5)
		expect(measured.mainAxisEndLimit).toBe(10)

		layout.destroy()
	end)
end)
