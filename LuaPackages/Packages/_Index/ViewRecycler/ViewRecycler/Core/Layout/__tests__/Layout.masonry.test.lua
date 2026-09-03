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

local function masonryWithLengths(lengths: { number }, options)
	local resolvedOptions = table.clone(options or {})
	resolvedOptions.getItemLength = function(index)
		return lengths[index]
	end
	local layout = Layout.masonry(resolvedOptions)
	layout.applyDataSourceChange({
		type = DataSourceChangeType.Reset,
		keys = keysFor(#lengths),
	})
	return layout
end

describe("Layout.masonry", function()
	it("validates sizing options and known lengths", function()
		expect(function()
			Layout.masonry({
				getItemLength = function()
					return 10
				end,
			})
		end).toThrow()
		expect(function()
			Layout.masonry({
				getItemLength = function()
					return 10
				end,
				crossAxisCount = 2,
				crossAxisItemLength = 100,
			})
		end).toThrow()

		local layout = masonryWithLengths({ 0 }, { crossAxisCount = 1 })
		expect(layout.getContentLength).toThrow()
	end)

	it("assigns known sizes to the shortest column with stable tie breaks", function()
		local layout = masonryWithLengths({ 100, 60, 80, 40, 120 }, {
			crossAxisCount = 2,
			spacing = 10,
			crossAxisSpacing = 12,
			paddingBefore = 5,
			paddingAfter = 7,
		})

		expect(layout.getItemLayout(1)).toEqual({
			startOffset = 5,
			length = 100,
			crossAxisIndex = 1,
			crossAxisCount = 2,
			crossAxisSpacing = 12,
		})
		expect(layout.getItemLayout(2).crossAxisIndex).toBe(2)
		expect(layout.getItemLayout(3)).toEqual({
			startOffset = 75,
			length = 80,
			crossAxisIndex = 2,
			crossAxisCount = 2,
			crossAxisSpacing = 12,
		})
		expect(layout.getItemLayout(4).startOffset).toBe(115)
		expect(layout.getItemLayout(5).crossAxisIndex).toBe(1)
		expect(layout.getItemLayout(5).startOffset).toBe(165)
		expect(layout.getContentLength()).toBe(292)
	end)

	it("returns a conservative envelope around sparse column intersections", function()
		local layout = masonryWithLengths({ 100, 60, 80, 40, 120 }, {
			crossAxisCount = 2,
			spacing = 10,
			paddingBefore = 5,
		})

		-- Items 1 and 3 intersect; item 2 is enclosed by the source-index envelope.
		expect(layout.getIntersectingIndexRange(80, 100)).toEqual({
			firstIndex = 1,
			lastIndex = 3,
		})
		expect(layout.getIntersectingIndexRange(295, 400).lastIndex).toBeLessThan(
			layout.getIntersectingIndexRange(295, 400).firstIndex
		)
	end)

	it("uses half-open intersection bounds and expands envelope overscan", function()
		local layout = masonryWithLengths({ 50, 50, 50, 50 }, {
			crossAxisCount = 2,
			spacing = 10,
		})

		expect(layout.getIntersectingIndexRange(50, 60).lastIndex).toBeLessThan(
			layout.getIntersectingIndexRange(50, 60).firstIndex
		)
		expect(layout.getIntersectingIndexRange(60, 110)).toEqual({
			firstIndex = 3,
			lastIndex = 4,
		})
		expect(layout.expandIndexRange({ firstIndex = 3, lastIndex = 4 }, 2, 0)).toEqual({
			firstIndex = 1,
			lastIndex = 4,
		})
	end)

	it("rebuilds lazily after updates and structural mutations", function()
		local lengths = { 80, 40, 60 }
		local layout = masonryWithLengths(lengths, { crossAxisCount = 2 })
		expect(layout.getItemLayout(3).startOffset).toBe(40)

		lengths[2] = 100
		expect(layout.applyDataSourceChange({
			type = DataSourceChangeType.Update,
			keys = { "2" },
		})).toBe(true)
		expect(layout.getItemLayout(3).startOffset).toBe(80)

		table.insert(lengths, 2, 20)
		layout.applyDataSourceChange({
			type = DataSourceChangeType.Insert,
			index = 2,
			keys = { "inserted" },
		})
		expect(layout.getItemCount()).toBe(4)
		expect(layout.getItemLayout(2).length).toBe(20)

		table.remove(lengths, 1)
		layout.applyDataSourceChange({
			type = DataSourceChangeType.Remove,
			index = 1,
			keys = { "1" },
		})
		expect(layout.getItemCount()).toBe(3)
		expect(layout.getItemLayout(1).length).toBe(20)
	end)

	it("rebuilds source-order placement after move and reorder changes", function()
		local lengths = { 100, 20, 60 }
		local layout = masonryWithLengths(lengths, { crossAxisCount = 2 })

		table.clear(lengths)
		table.move({ 20, 60, 100 }, 1, 3, 1, lengths)
		layout.applyDataSourceChange({
			type = DataSourceChangeType.Move,
			fromIndex = 1,
			toIndex = 3,
			key = "1",
		})
		expect(layout.getItemLayout(1).length).toBe(20)
		expect(layout.getItemLayout(3).length).toBe(100)

		table.clear(lengths)
		table.move({ 100, 60, 20 }, 1, 3, 1, lengths)
		layout.applyDataSourceChange({
			type = DataSourceChangeType.Reorder,
			keys = { "1", "3", "2" },
		})
		expect(layout.getItemLayout(1).length).toBe(100)
		expect(layout.getItemLayout(3).length).toBe(20)
	end)

	it("reflows when a responsive viewport changes the column count", function()
		local layout = masonryWithLengths({ 50, 50, 50, 50, 50, 50 }, {
			crossAxisItemLength = 100,
			crossAxisSpacing = 10,
		})
		expect(layout.setViewportCrossAxisLength(320)).toBe(true)
		expect(layout.getItemLayout(1).crossAxisCount).toBe(3)
		expect(layout.getItemLayout(4).startOffset).toBe(50)

		expect(layout.setViewportCrossAxisLength(329)).toBe(false)

		expect(layout.setViewportCrossAxisLength(90)).toBe(true)
		expect(layout.getItemLayout(2).crossAxisCount).toBe(1)
		expect(layout.getItemLayout(2).startOffset).toBe(50)
	end)

	it("does not require or accept runtime measurements", function()
		local layout = masonryWithLengths({ 50 }, { crossAxisCount = 1 })
		expect(layout.requiresItemMeasurement()).toBe(false)
		expect(layout.updateItemMeasurement({
			itemIndex = 1,
			itemKey = "1",
			length = 100,
		})).toEqual({
			accepted = false,
			geometryChanged = false,
		})
		expect(layout.getItemLayout(1).length).toBe(50)
	end)
end)
