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

local function gridWithCount(options, count: number)
	local layout = Layout.grid(options)
	layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = keysFor(count) })
	return layout
end

describe("Layout.grid", function()
	it("requires exactly one cross-axis sizing option", function()
		expect(function()
			Layout.grid({ itemLength = 50 })
		end).toThrow()
		expect(function()
			Layout.grid({ itemLength = 50, crossAxisCount = 2, crossAxisItemLength = 100 })
		end).toThrow()
	end)

	it("computes row-based content length", function()
		-- 10 items in 3 columns = 4 rows.
		local layout = gridWithCount({ itemLength = 50, crossAxisCount = 3 }, 10)
		expect(layout.getContentLength()).toBe(200)
	end)

	it("assigns columns across then wraps", function()
		local layout = gridWithCount({ itemLength = 50, crossAxisCount = 3 }, 10)
		expect(layout.getItemLayout(1)).toEqual({
			startOffset = 0,
			length = 50,
			crossAxisIndex = 1,
			crossAxisCount = 3,
		})
		expect(layout.getItemLayout(3).crossAxisIndex).toBe(3)
		expect(layout.getItemLayout(4).startOffset).toBe(50)
		expect(layout.getItemLayout(6).crossAxisIndex).toBe(3)
	end)

	it("applies main spacing between rows", function()
		local layout = gridWithCount({ itemLength = 50, spacing = 10, crossAxisCount = 2 }, 4)
		expect(layout.getItemLayout(3).startOffset).toBe(60)
		expect(layout.getContentLength()).toBe(110)
	end)

	describe("getIntersectingIndexRange", function()
		it("returns whole rows", function()
			local layout = gridWithCount({ itemLength = 50, crossAxisCount = 3 }, 10)
			-- Offsets 50..150 cover rows 2 and 3 → indices 4..9.
			expect(layout.getIntersectingIndexRange(50, 150)).toEqual({ firstIndex = 4, lastIndex = 9 })
		end)

		it("clamps the last partial row", function()
			local layout = gridWithCount({ itemLength = 50, crossAxisCount = 3 }, 10)
			-- Row 4 holds only item 10.
			expect(layout.getIntersectingIndexRange(150, 200)).toEqual({ firstIndex = 10, lastIndex = 10 })
		end)

		it("is empty past the content", function()
			local layout = gridWithCount({ itemLength = 50, crossAxisCount = 3 }, 10)
			local range = layout.getIntersectingIndexRange(200, 400)
			expect(range.lastIndex < range.firstIndex).toBe(true)
		end)
	end)

	it("expands overscan in complete rows", function()
		local layout = gridWithCount({ itemLength = 50, crossAxisCount = 3 }, 10)
		expect(layout.expandIndexRange({ firstIndex = 4, lastIndex = 6 }, 1)).toEqual({
			firstIndex = 1,
			lastIndex = 9,
		})
		expect(layout.expandIndexRange({ firstIndex = 7, lastIndex = 9 }, 1)).toEqual({
			firstIndex = 4,
			lastIndex = 10,
		})
		expect(layout.expandIndexRange({ firstIndex = 4, lastIndex = 6 }, 0, 2)).toEqual({
			firstIndex = 4,
			lastIndex = 10,
		})
		expect(layout.expandIndexRange({ firstIndex = 7, lastIndex = 9 }, 2, 0)).toEqual({
			firstIndex = 1,
			lastIndex = 9,
		})
	end)

	describe("derived column count", function()
		it("derives from the viewport cross-axis length", function()
			local layout = gridWithCount({ itemLength = 50, crossAxisItemLength = 100 }, 12)
			layout.setViewportCrossAxisLength(350)
			expect(layout.getItemLayout(1).crossAxisCount).toBe(3)
			-- 12 items / 3 columns = 4 rows.
			expect(layout.getContentLength()).toBe(200)
		end)

		it("reports geometry changes only when the column count changes", function()
			local layout = gridWithCount({ itemLength = 50, crossAxisItemLength = 100 }, 12)

			expect(layout.setViewportCrossAxisLength(350)).toBe(true)

			-- Same derived count: geometry is unchanged.
			expect(layout.setViewportCrossAxisLength(399)).toBe(false)

			expect(layout.setViewportCrossAxisLength(120)).toBe(true)
			-- One column: item 2 wraps to row 2.
			expect(layout.getItemLayout(2).crossAxisIndex).toBe(1)
			expect(layout.getItemLayout(2).crossAxisCount).toBe(1)
			expect(layout.getItemLayout(2).startOffset).toBe(50)
		end)

		it("never derives fewer than one column", function()
			local layout = gridWithCount({ itemLength = 50, crossAxisItemLength = 100 }, 4)
			layout.setViewportCrossAxisLength(30)
			expect(layout.getItemLayout(1).crossAxisCount).toBe(1)
			expect(layout.getContentLength()).toBe(200)
		end)

		it("ignores hints when the column count is fixed", function()
			local layout = gridWithCount({ itemLength = 50, crossAxisCount = 2 }, 4)
			expect(layout.setViewportCrossAxisLength(1000)).toBe(false)
			expect(layout.getItemLayout(1).crossAxisCount).toBe(2)
		end)
	end)
end)
