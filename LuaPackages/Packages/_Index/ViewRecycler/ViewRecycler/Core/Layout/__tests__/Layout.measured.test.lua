local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Layout = require(Src.Core.Layout)
local OrderStatisticTree = require(Src.Core.Layout.SizeTree.OrderStatisticTree)

local function measuredOver(keys: { string }, options)
	local keyList = table.clone(keys)
	local layout = Layout.measured(options)
	layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = table.clone(keyList) })
	return layout, keyList
end

describe("Layout.measured", function()
	it("needs measurement", function()
		local layout = Layout.measured()
		expect(layout.requiresItemMeasurement()).toBe(true)
	end)

	it("seeds every item at the estimated length", function()
		local layout = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 40 })
		expect(layout.getItemCount()).toBe(3)
		expect(layout.getContentLength()).toBe(120)
		expect(layout.getItemLayout(2)).toEqual({ startOffset = 40, length = 40 })
	end)

	it("defaults the estimate to 50", function()
		local layout = measuredOver({ "a", "b" })
		expect(layout.getContentLength()).toBe(100)
	end)

	it("matches one-node-per-item geometry for a large sparse measured list", function()
		local itemCount = 10000
		local keys = table.create(itemCount)
		for index = 1, itemCount do
			keys[index] = tostring(index)
		end
		local layout = measuredOver(keys, {
			estimatedItemLength = 40,
			estimationPolicy = {
				recordMeasurementAndShouldUpdateEstimates = function()
					return false
				end,
			},
		})
		local unitTree = OrderStatisticTree.new(40)
		unitTree.buildFromMeasurements(itemCount, function()
			return nil
		end)

		for index, length in { [2] = 80, [5000] = 25, [9999] = 100 } do
			layout.updateItemMeasurement({
				itemIndex = index,
				itemKey = keys[index],
				length = length,
			})
			unitTree.update(index, length)
		end

		for _, index in { 1, 2, 3, 4999, 5000, 5001, 9999, 10000 } do
			expect(layout.getItemLayout(index)).toEqual({
				startOffset = unitTree.prefixSum(index),
				length = unitTree.getSize(index),
			})
		end
		for _, offset in { 0, 40, 1000, 199975, 399985 } do
			local firstIndex = unitTree.indexAtPrefixSum(offset)
			local lastIndex = math.min(itemCount, unitTree.indexAtPrefixSum(offset + 120))
			if unitTree.prefixSum(lastIndex) >= offset + 120 then
				lastIndex -= 1
			end
			expect(layout.getIntersectingIndexRange(offset, offset + 120)).toEqual({
				firstIndex = firstIndex,
				lastIndex = lastIndex,
			})
		end
	end)

	describe("updateItemMeasurement", function()
		it("applies an accepted measurement and reports its geometry change", function()
			local layout = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 40 })

			expect(layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 100 })).toEqual({
				accepted = true,
				geometryChanged = true,
			})
			expect(layout.getItemLayout(2).length).toBe(100)
			expect(layout.getItemLayout(3).startOffset).toBe(140)
			expect(layout.getContentLength()).toBe(180)
		end)

		it("replaces an estimate with an explicit zero measurement", function()
			local layout = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 40 })

			expect(layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 0 })).toEqual({
				accepted = true,
				geometryChanged = true,
			})
			expect(layout.getItemLayout(2)).toEqual({ startOffset = 40, length = 0 })
			expect(layout.getItemLayout(3).startOffset).toBe(40)
			expect(layout.getContentLength()).toBe(80)
		end)

		it("accepts a repeated identical measurement without changing geometry", function()
			local layout = measuredOver({ "a", "b" }, { estimatedItemLength = 40 })
			expect(layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 60 }).geometryChanged).toBe(
				true
			)
			expect(layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 60 })).toEqual({
				accepted = true,
				geometryChanged = false,
			})
		end)

		it("drops stale reports whose key no longer sits at the index", function()
			local layout = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 40 })
			expect(layout.updateItemMeasurement({ itemIndex = 2, itemKey = "z", length = 500 })).toEqual({
				accepted = false,
				geometryChanged = false,
			})
			expect(layout.getContentLength()).toBe(120)
		end)
	end)

	describe("estimation", function()
		it("sizes unmeasured items from the running average after estimates update", function()
			-- Default policy: update every 8 samples when the average
			-- drifted more than 8px. Eight 100px reports move the average
			-- from seed 50 to 100.
			local keys = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j" }
			local layout = measuredOver(keys, { estimatedItemLength = 50 })

			for index = 1, 8 do
				layout.updateItemMeasurement({ itemIndex = index, itemKey = keys[index], length = 100 })
			end

			-- Items 9 and 10 are unmeasured; the estimate update moved them to 100.
			expect(layout.getItemLayout(9).length).toBe(100)
			expect(layout.getItemLayout(10).length).toBe(100)
			expect(layout.getContentLength()).toBe(1000)
		end)

		it("supports a custom estimation policy", function()
			local sweepRequests = 0
			local layout = measuredOver({ "a", "b", "c" }, {
				estimatedItemLength = 50,
				estimationPolicy = {
					recordMeasurementAndShouldUpdateEstimates = function()
						sweepRequests += 1
						return true
					end,
				},
			})

			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 90 })
			expect(sweepRequests).toBe(1)
			-- Immediate update: unmeasured items move to the new average.
			expect(layout.getItemLayout(2).length).toBe(90)
			expect(layout.getItemLayout(3).length).toBe(90)
		end)

		it("keeps scattered measurements while changing one global estimate", function()
			local layout = measuredOver({ "a", "b", "c", "d", "e" }, {
				estimatedItemLength = 20,
				estimationPolicy = {
					recordMeasurementAndShouldUpdateEstimates = function()
						return true
					end,
				},
			})

			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 100 })
			layout.updateItemMeasurement({ itemIndex = 4, itemKey = "d", length = 40 })

			expect(layout.getItemLayout(1).length).toBe(70)
			expect(layout.getItemLayout(2).length).toBe(100)
			expect(layout.getItemLayout(3).length).toBe(70)
			expect(layout.getItemLayout(4).length).toBe(40)
			expect(layout.getItemLayout(5).length).toBe(70)
			expect(layout.getContentLength()).toBe(350)
			expect(layout.getIntersectingIndexRange(170, 280)).toEqual({ firstIndex = 3, lastIndex = 4 })
		end)

		it("keeps a measurement equal to the old estimate as an override", function()
			local layout = measuredOver({ "a", "b", "c" }, {
				estimatedItemLength = 40,
				estimationPolicy = {
					recordMeasurementAndShouldUpdateEstimates = function()
						return true
					end,
				},
			})

			expect(layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 40 })).toEqual({
				accepted = true,
				geometryChanged = false,
			})
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 100 })

			expect(layout.getItemLayout(1).length).toBe(40)
			expect(layout.getItemLayout(2).length).toBe(100)
			expect(layout.getItemLayout(3).length).toBe(70)
		end)

		it("reports one geometry change when one measurement also changes the estimate", function()
			local layout = measuredOver({ "a", "b", "c" }, {
				estimatedItemLength = 20,
				estimationPolicy = {
					recordMeasurementAndShouldUpdateEstimates = function()
						return true
					end,
				},
			})
			local result = layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 80 })

			expect(result).toEqual({ accepted = true, geometryChanged = true })
			expect(layout.getContentLength()).toBe(240)
		end)
	end)

	describe("detached measurement retention", function()
		local function fixedEstimateOptions(capacity)
			return {
				estimatedItemLength = 40,
				detachedMeasurementCapacity = capacity,
				estimationPolicy = {
					recordMeasurementAndShouldUpdateEstimates = function()
						return false
					end,
				},
			}
		end

		it("keeps active measurements exact under detached-cache pressure", function()
			local layout, keys = measuredOver({ "active", "b", "c" }, fixedEstimateOptions(0))
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "active", length = 100 })
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 200 })
			layout.updateItemMeasurement({ itemIndex = 3, itemKey = "c", length = 300 })

			table.remove(keys, 2)
			layout.applyDataSourceChange({ type = DataSourceChangeType.Remove, index = 2, keys = { "b" } })
			table.remove(keys, 2)
			layout.applyDataSourceChange({ type = DataSourceChangeType.Remove, index = 2, keys = { "c" } })

			expect(layout.getItemLayout(1).length).toBe(100)
		end)

		it("restores retained entries and estimates entries evicted by LRU order", function()
			local layout, keys = measuredOver({ "a", "b", "c" }, fixedEstimateOptions(2))
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 100 })
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 120 })
			layout.updateItemMeasurement({ itemIndex = 3, itemKey = "c", length = 140 })

			table.clear(keys)
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = {} })
			keys[1] = "a"
			keys[2] = "b"
			keys[3] = "c"
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = table.clone(keys) })

			expect(layout.getItemLayout(1).length).toBe(40)
			expect(layout.getItemLayout(2).length).toBe(120)
			expect(layout.getItemLayout(3).length).toBe(140)
		end)

		it("restores reinserted keys before newly detached keys can evict them", function()
			local layout, keys = measuredOver({ "a", "b" }, fixedEstimateOptions(1))
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 100 })
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 200 })

			table.remove(keys, 2)
			layout.applyDataSourceChange({ type = DataSourceChangeType.Remove, index = 2, keys = { "b" } })
			keys[1] = "b"
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = { "b" } })

			expect(layout.getItemLayout(1).length).toBe(200)
		end)

		it("does not include detached measurements in the active running estimate", function()
			local layout, keys = measuredOver({ "a", "b", "c" }, {
				estimatedItemLength = 40,
				estimationPolicy = {
					recordMeasurementAndShouldUpdateEstimates = function()
						return true
					end,
				},
			})
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 100 })
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 300 })

			table.remove(keys, 2)
			layout.applyDataSourceChange({ type = DataSourceChangeType.Remove, index = 2, keys = { "b" } })
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 120 })

			expect(layout.getItemLayout(2).length).toBe(120)
		end)

		it("uses a 256-entry detached cache by default", function()
			local keys = table.create(257)
			for index = 1, 257 do
				keys[index] = tostring(index)
			end
			local layout, keyList = measuredOver(keys, fixedEstimateOptions(nil))
			for index = 1, 257 do
				layout.updateItemMeasurement({ itemIndex = index, itemKey = keys[index], length = 100 + index })
			end

			table.clear(keyList)
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = {} })
			keyList[1] = "1"
			keyList[2] = "2"
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = { "1", "2" } })

			expect(layout.getItemLayout(1).length).toBe(40)
			expect(layout.getItemLayout(2).length).toBe(102)
		end)

		it("supports explicit unlimited detached retention", function()
			local keys = table.create(300)
			for index = 1, 300 do
				keys[index] = tostring(index)
			end
			local layout, keyList = measuredOver(keys, fixedEstimateOptions(math.huge))
			for index = 1, 300 do
				layout.updateItemMeasurement({ itemIndex = index, itemKey = keys[index], length = index })
			end

			table.clear(keyList)
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = {} })
			keyList[1] = "1"
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = { "1" } })

			expect(layout.getItemLayout(1).length).toBe(1)
		end)

		it("rejects invalid detached capacities", function()
			for _, capacity in { -1, 1.5, -math.huge, "forever" } do
				expect(function()
					Layout.measured({ detachedMeasurementCapacity = capacity } :: any)
				end).toThrow("detachedMeasurementCapacity")
			end
		end)
	end)

	describe("apply", function()
		it("inserts new items at the estimate and keeps neighbors", function()
			local layout, keys = measuredOver({ "a", "b" }, { estimatedItemLength = 40 })
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 100 })
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 60 })

			table.insert(keys, 2, "x")
			layout.applyDataSourceChange({ type = DataSourceChangeType.Insert, index = 2, keys = { "x" } })

			expect(layout.getItemCount()).toBe(3)
			expect(layout.getItemLayout(1).length).toBe(100)
			-- The policy has not accepted a new estimate, so the inserted
			-- unmeasured item uses the current global estimate.
			expect(layout.getItemLayout(2).length).toBe(40)
			expect(layout.getItemLayout(3).length).toBe(60)
		end)

		it("removes items and shifts the rest", function()
			local layout, keys = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 40 })
			layout.updateItemMeasurement({ itemIndex = 3, itemKey = "c", length = 90 })

			table.remove(keys, 1)
			layout.applyDataSourceChange({ type = DataSourceChangeType.Remove, index = 1, keys = { "a" } })

			expect(layout.getItemCount()).toBe(2)
			expect(layout.getItemLayout(2).length).toBe(90)
			expect(layout.getItemLayout(2).startOffset).toBe(40)
		end)

		it("persists measured sizes by key across removal and re-insertion", function()
			local layout, keys = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 40 })
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 120 })

			table.remove(keys, 2)
			layout.applyDataSourceChange({ type = DataSourceChangeType.Remove, index = 2, keys = { "b" } })

			table.insert(keys, 3, "b")
			layout.applyDataSourceChange({ type = DataSourceChangeType.Insert, index = 3, keys = { "b" } })

			expect(layout.getItemLayout(3).length).toBe(120)
		end)

		it("moves an active measurement without detaching it", function()
			local layout = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 40 })
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 120 })

			layout.applyDataSourceChange({
				type = DataSourceChangeType.Move,
				fromIndex = 1,
				toIndex = 3,
				key = "a",
			})

			expect(layout.getItemLayout(3).length).toBe(120)
			expect(layout.getItemLayout(3).startOffset).toBe(80)
		end)

		it("preserves sparse measurements through reorder before another estimate change", function()
			local layout, keys = measuredOver({ "a", "b", "c", "d" }, {
				estimatedItemLength = 20,
				estimationPolicy = {
					recordMeasurementAndShouldUpdateEstimates = function()
						return true
					end,
				},
			})
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 100 })
			layout.updateItemMeasurement({ itemIndex = 4, itemKey = "d", length = 40 })

			keys[1] = "d"
			keys[2] = "a"
			keys[3] = "b"
			keys[4] = "c"
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reorder, keys = table.clone(keys) })
			expect(layout.getItemLayout(1).length).toBe(40)
			expect(layout.getItemLayout(2).length).toBe(70)
			expect(layout.getItemLayout(3).length).toBe(100)

			layout.updateItemMeasurement({ itemIndex = 4, itemKey = "c", length = 160 })
			expect(layout.getItemLayout(1).length).toBe(40)
			expect(layout.getItemLayout(2).length).toBe(100)
			expect(layout.getItemLayout(3).length).toBe(100)
			expect(layout.getItemLayout(4).length).toBe(160)
		end)

		it("keeps identity and geometry for value-only updates", function()
			local layout = measuredOver({ "a", "b" }, { estimatedItemLength = 40 })
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 40 })
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 120 })

			layout.applyDataSourceChange({ type = DataSourceChangeType.Update, keys = { "b" } })

			expect(layout.getItemLayout(2).length).toBe(120)
			expect(layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 200 }).geometryChanged).toBe(
				true
			)
		end)

		it("restores measurements through reset replacement", function()
			local layout, keys = measuredOver({ "a", "b" }, {
				estimatedItemLength = 40,
				detachedMeasurementCapacity = 1,
			})
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 120 })

			keys[2] = "z"
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = table.clone(keys) })
			keys[2] = "b"
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = table.clone(keys) })

			expect(layout.getItemLayout(2).length).toBe(120)
		end)

		it("preserves measurements when an update range reorders keys", function()
			local layout, keys = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 40 })
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 80 })
			layout.updateItemMeasurement({ itemIndex = 2, itemKey = "b", length = 100 })

			keys[1] = "b"
			keys[2] = "a"
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reorder, keys = table.clone(keys) })

			expect(layout.getItemLayout(1).length).toBe(100)
			expect(layout.getItemLayout(2).length).toBe(80)
		end)

		it("reports unchanged geometry for value-only update hints", function()
			local layout = measuredOver({ "a", "b" }, { estimatedItemLength = 40 })

			expect(layout.applyDataSourceChange({ type = DataSourceChangeType.Update, keys = { "a", "b" } })).toBe(
				false
			)
		end)

		it("rebuilds from scratch on reset", function()
			local layout, keys = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 40 })
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 100 })

			table.clear(keys)
			keys[1] = "c"
			keys[2] = "a"
			layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = table.clone(keys) })

			expect(layout.getItemCount()).toBe(2)
			-- "a" keeps its measured length at its new index.
			expect(layout.getItemLayout(2).length).toBe(100)
		end)

		it("handles bulk inserts", function()
			local layout, keys = measuredOver({ "a" }, { estimatedItemLength = 40 })
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 100 })

			for index = 1, 50 do
				table.insert(keys, tostring(index))
			end
			layout.applyDataSourceChange({
				type = DataSourceChangeType.Insert,
				index = 2,
				keys = table.move(keys, 2, 51, 1, {}),
			})

			expect(layout.getItemCount()).toBe(51)
			expect(layout.getItemLayout(1).length).toBe(100)
			expect(layout.getItemLayout(10).length).toBe(40)
		end)

		it("handles bulk removals without losing surviving measurements", function()
			local keys = table.create(60)
			for index = 1, 60 do
				keys[index] = tostring(index)
			end
			local layout, keyList = measuredOver(keys, { estimatedItemLength = 40 })
			layout.updateItemMeasurement({ itemIndex = 1, itemKey = "1", length = 100 })
			layout.updateItemMeasurement({ itemIndex = 60, itemKey = "60", length = 160 })

			local removedKeys = table.move(keyList, 2, 51, 1, {})
			for _ = 1, 50 do
				table.remove(keyList, 2)
			end
			layout.applyDataSourceChange({ type = DataSourceChangeType.Remove, index = 2, keys = removedKeys })

			expect(layout.getItemCount()).toBe(10)
			expect(layout.getItemLayout(1).length).toBe(100)
			expect(layout.getItemLayout(10).length).toBe(160)
		end)

		it("rejects duplicate keys on reset, insert, and reorder", function()
			local layout, keys = measuredOver({ "a", "b" }, { estimatedItemLength = 40 })

			keys[2] = "a"
			expect(function()
				layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = table.clone(keys) })
			end).toThrow('duplicate key "a"')
			expect(layout.getItemCount()).toBe(2)

			keys[2] = "b"
			table.insert(keys, 2, "a")
			expect(function()
				layout.applyDataSourceChange({ type = DataSourceChangeType.Insert, index = 2, keys = { "a" } })
			end).toThrow('duplicate key "a"')
			expect(layout.getItemCount()).toBe(2)

			expect(function()
				layout.applyDataSourceChange({ type = DataSourceChangeType.Reorder, keys = { "a", "a" } })
			end).toThrow("every active key once")
			expect(layout.getItemLayout(2).length).toBe(40)
		end)
	end)

	describe("getIntersectingIndexRange", function()
		it("finds indices through the prefix-sum tree", function()
			local layout = measuredOver({ "a", "b", "c", "d" }, { estimatedItemLength = 50 })
			expect(layout.getIntersectingIndexRange(60, 140)).toEqual({ firstIndex = 2, lastIndex = 3 })
		end)

		it("treats the end offset as exclusive at item boundaries", function()
			local layout = measuredOver({ "a", "b", "c" }, { estimatedItemLength = 50 })
			expect(layout.getIntersectingIndexRange(0, 50)).toEqual({ firstIndex = 1, lastIndex = 1 })
			expect(layout.getIntersectingIndexRange(50, 100)).toEqual({ firstIndex = 2, lastIndex = 2 })
		end)

		it("clamps to bounds", function()
			local layout = measuredOver({ "a", "b" }, { estimatedItemLength = 50 })
			expect(layout.getIntersectingIndexRange(-10, 5000)).toEqual({ firstIndex = 1, lastIndex = 2 })
		end)

		it("invalidates cached intersection geometry after measurement", function()
			local layout = measuredOver({ "a", "b", "c" }, {
				estimatedItemLength = 40,
				estimationPolicy = {
					recordMeasurementAndShouldUpdateEstimates = function()
						return false
					end,
				},
			})
			expect(layout.getIntersectingIndexRange(40, 100)).toEqual({ firstIndex = 2, lastIndex = 3 })
			expect(layout.getItemLayout(2)).toEqual({ startOffset = 40, length = 40 })

			expect(layout.updateItemMeasurement({ itemIndex = 1, itemKey = "a", length = 80 }).geometryChanged).toBe(
				true
			)
			expect(layout.getItemLayout(2)).toEqual({ startOffset = 80, length = 40 })
		end)

		it("is empty when there is no data", function()
			local layout = Layout.measured()
			local range = layout.getIntersectingIndexRange(0, 100)
			expect(range.lastIndex < range.firstIndex).toBe(true)
		end)
	end)
end)
