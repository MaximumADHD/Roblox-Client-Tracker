local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local DataSource = require(Src.Core.DataSource)
local Layout = require(Src.Core.Layout)
local createRecyclingScope = require(Src.Core.Recycling.RecyclingScope)
local createVirtualizer = require(Src.Core.Virtualizer.Virtualizer)

local ITEM_LENGTHS = { 10, 20, 30, 40 }
local START_OFFSETS = { 0, 10, 30, 60 }

local function createStairsLayout()
	return Layout.create({
		getItemLayout = function(index)
			return {
				startOffset = START_OFFSETS[index],
				length = ITEM_LENGTHS[index],
			}
		end,
	})
end

local function createController(dataSource, layout)
	local scope = createRecyclingScope({
		adapter = {
			create = function(viewType)
				return { viewType = viewType }
			end,
			destroy = function() end,
		},
	})
	local virtualizer = createVirtualizer({
		dataSource = dataSource,
		layout = layout,
		recyclingScope = scope,
		getItemViewType = function()
			return "row"
		end,
		overscan = 0,
	})
	virtualizer.activate()
	return virtualizer
end

local function createStairsController()
	local layout = createStairsLayout()
	return createController(DataSource.snapshot({ "a", "b", "c", "d" }), layout), layout
end

describe("Layout.create", function()
	it("derives content length from the last item layout", function()
		local controller = createStairsController()

		expect(controller.getCurrent().contentLength).toBe(100)

		controller.destroy()
	end)

	it("passes item layouts through the controller", function()
		local controller, layout = createStairsController()

		expect(layout.getItemLayout(3)).toEqual({ startOffset = 30, length = 30 })

		controller.destroy()
	end)

	it("uses half-open offset bounds", function()
		local startBoundaryWindow = createStairsController()
		startBoundaryWindow.setScrollOffset(10)
		startBoundaryWindow.setViewportSize(20, 100)
		expect(startBoundaryWindow.getCurrent().mountedRange).toEqual({ firstIndex = 2, lastIndex = 2 })

		local endBoundaryWindow = createStairsController()
		endBoundaryWindow.setViewportSize(10, 100)
		expect(endBoundaryWindow.getCurrent().mountedRange).toEqual({ firstIndex = 1, lastIndex = 1 })

		startBoundaryWindow.destroy()
		endBoundaryWindow.destroy()
	end)

	it("tracks DataSource count through the controller", function()
		local dataSource = DataSource.sequence({ "a", "b", "c", "d" })
		local controller = createController(dataSource, createStairsLayout())

		expect(controller.getCurrent().contentLength).toBe(100)
		dataSource.remove(4)
		expect(controller.getCurrent().contentLength).toBe(60)

		controller.destroy()
	end)

	it("returns an empty range outside content", function()
		local controller = createStairsController()
		controller.setScrollOffset(100)
		controller.setViewportSize(100, 100)

		local range = controller.getCurrent().mountedRange
		expect(range.lastIndex < range.firstIndex).toBe(true)

		controller.destroy()
	end)
end)
