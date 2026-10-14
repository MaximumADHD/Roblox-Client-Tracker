local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Layout = require(Src.Core.Layout)

local function keysFor(count: number): { string }
	local keys = table.create(count)
	for index = 1, count do
		keys[index] = tostring(index)
	end
	return keys
end

local function uniformWithCount(options, count: number)
	local layout = Layout.uniform(options)
	layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = keysFor(count) })
	return layout
end

describe("Layout.uniform", function()
	it("is empty before any data", function()
		local layout = Layout.uniform({ itemLength = 48 })
		expect(layout.getItemCount()).toBe(0)
		expect(layout.getContentLength()).toBe(0)

		local range = layout.getIntersectingIndexRange(0, 100)
		expect(range.lastIndex < range.firstIndex).toBe(true)
	end)

	it("computes content length and item layouts", function()
		local layout = uniformWithCount({ itemLength = 48 }, 10)
		expect(layout.getItemCount()).toBe(10)
		expect(layout.getContentLength()).toBe(480)
		expect(layout.getItemLayout(1)).toEqual({ startOffset = 0, length = 48 })
		expect(layout.getItemLayout(3)).toEqual({ startOffset = 96, length = 48 })
	end)

	it("applies spacing between items but not after the last", function()
		local layout = uniformWithCount({ itemLength = 40, spacing = 8 }, 3)
		expect(layout.getItemLayout(2).startOffset).toBe(48)
		expect(layout.getContentLength()).toBe(136)
	end)

	it("applies lead and tail padding", function()
		local layout = uniformWithCount({ itemLength = 40, paddingBefore = 12, paddingAfter = 20 }, 2)
		expect(layout.getItemLayout(1).startOffset).toBe(12)
		expect(layout.getItemLayout(2).startOffset).toBe(52)
		expect(layout.getContentLength()).toBe(12 + 80 + 20)
	end)

	it("does not need measurement and ignores reports", function()
		local layout = uniformWithCount({ itemLength = 48 }, 5)
		expect(layout.requiresItemMeasurement()).toBe(false)
		expect(layout.updateItemMeasurement({ itemIndex = 1, itemKey = "1", length = 999 })).toEqual({
			accepted = false,
			geometryChanged = false,
		})
		expect(layout.getItemLayout(1).length).toBe(48)
	end)

	describe("getIntersectingIndexRange", function()
		it("returns the intersecting indices", function()
			local layout = uniformWithCount({ itemLength = 48 }, 10)
			expect(layout.getIntersectingIndexRange(0, 100)).toEqual({ firstIndex = 1, lastIndex = 3 })
		end)

		it("excludes an item ending exactly at the start", function()
			local layout = uniformWithCount({ itemLength = 48 }, 10)
			expect(layout.getIntersectingIndexRange(48, 96)).toEqual({ firstIndex = 2, lastIndex = 2 })
		end)

		it("excludes an item starting exactly at the exclusive end", function()
			local layout = uniformWithCount({ itemLength = 48 }, 10)
			expect(layout.getIntersectingIndexRange(0, 48)).toEqual({ firstIndex = 1, lastIndex = 1 })
		end)

		it("skips the spacing gap", function()
			-- step = 50; offset 45 lies in the gap after item 1.
			local layout = uniformWithCount({ itemLength = 40, spacing = 10 }, 10)
			expect(layout.getIntersectingIndexRange(45, 95)).toEqual({ firstIndex = 2, lastIndex = 2 })
		end)

		it("clamps to the item count", function()
			local layout = uniformWithCount({ itemLength = 48 }, 3)
			expect(layout.getIntersectingIndexRange(100, 10000)).toEqual({ firstIndex = 3, lastIndex = 3 })
		end)

		it("is empty past the end of content", function()
			local layout = uniformWithCount({ itemLength = 48 }, 3)
			local range = layout.getIntersectingIndexRange(144, 300)
			expect(range.lastIndex < range.firstIndex).toBe(true)
		end)

		it("handles negative start offsets", function()
			local layout = uniformWithCount({ itemLength = 48 }, 10)
			expect(layout.getIntersectingIndexRange(-100, 50)).toEqual({ firstIndex = 1, lastIndex = 2 })
		end)
	end)

	describe("apply", function()
		it("adjusts count on insert and remove hints", function()
			local layout = uniformWithCount({ itemLength = 48 }, 5)
			expect(layout.applyDataSourceChange({
				type = DataSourceChangeType.Insert,
				index = 2,
				keys = { "x", "y", "z" },
			})).toBe(true)
			expect(layout.getItemCount()).toBe(8)
			expect(layout.getContentLength()).toBe(384)

			expect(layout.applyDataSourceChange({
				type = DataSourceChangeType.Remove,
				index = 1,
				keys = { "1", "x", "y", "z" },
			})).toBe(true)
			expect(layout.getItemCount()).toBe(4)
		end)

		it("ignores update hints", function()
			local layout = uniformWithCount({ itemLength = 48 }, 5)
			expect(layout.applyDataSourceChange({ type = DataSourceChangeType.Update, keys = keysFor(5) })).toBe(false)
			expect(layout.getItemCount()).toBe(5)
			expect(layout.getContentLength()).toBe(240)
		end)
	end)
end)
