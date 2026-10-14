local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Layout = require(Src.Core.Layout)

local ITEM_COUNT = 6

local function keysFor(count: number): { string }
	local keys = table.create(count)
	for index = 1, count do
		keys[index] = tostring(index)
	end
	return keys
end

local function withItems(layout)
	layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = keysFor(ITEM_COUNT) })
	return layout
end

local function expectStacked(layout, paddingBefore: number)
	assert(layout.stackedSpacing ~= nil, "expected a Stacked layout")
	local spacing = layout.stackedSpacing()
	expect(layout.getItemLayout(1).startOffset).toBe(paddingBefore)
	for index = 2, layout.getItemCount() do
		local previous = layout.getItemLayout(index - 1)
		expect(layout.getItemLayout(index).startOffset).toBe(previous.startOffset + previous.length + spacing)
	end
end

describe("Stacked layouts", function()
	it("stacks measured Items with no spacing before and after measurements", function()
		local layout = withItems(Layout.measured({ estimatedItemLength = 30 }))
		expect(layout.stackedSpacing and layout.stackedSpacing()).toBe(0)
		expectStacked(layout, 0)

		layout.updateItemMeasurement({ itemIndex = 2, itemKey = "2", length = 75 })
		layout.updateItemMeasurement({ itemIndex = 5, itemKey = "5", length = 12 })
		expectStacked(layout, 0)
	end)

	it("does not report uniform, grid, masonry, or custom layouts as Stacked", function()
		expect(Layout.uniform({ itemLength = 40, spacing = 6 }).stackedSpacing).toBeNil()
		expect(Layout.grid({ itemLength = 50, crossAxisCount = 2 }).stackedSpacing).toBeNil()
		expect(Layout.masonry({
			getItemLength = function()
				return 50
			end,
			crossAxisCount = 2,
		}).stackedSpacing).toBeNil()
		expect(Layout.create({
			getItemLayout = function(index)
				return { startOffset = (index - 1) * 10, length = 10 }
			end,
		}).stackedSpacing).toBeNil()
	end)
end)
