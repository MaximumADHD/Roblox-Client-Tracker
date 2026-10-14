local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local DataSource = require(Src.Core.DataSource)
local Layout = require(Src.Core.Layout)
local VirtualizerCommandTypes = require(Src.Core.Enums.VirtualizerCommandType)
local VirtualizerCommandType = VirtualizerCommandTypes.External
local InternalVirtualizerCommandType = VirtualizerCommandTypes.Internal
local createVirtualizerEngine = require(Src.Core.Virtualizer.VirtualizerEngine)

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

local function createStairsController()
	local layout = createStairsLayout()
	local engine = createVirtualizerEngine({
		dataSource = DataSource.snapshot({ "a", "b", "c", "d" }),
		layout = layout,
		getRecyclableViewType = function()
			return "row"
		end,
		overscan = 0,
	})
	engine.dispatch({ type = VirtualizerCommandType.Activate })
	return engine, layout
end

describe("Layout.create", function()
	it("derives content length from the last item layout", function()
		local controller = createStairsController()

		expect(controller.getSnapshot().contentLength).toBe(100)

		controller.dispatch({ type = VirtualizerCommandType.Destroy })
	end)

	it("passes item layouts through the controller", function()
		local controller, layout = createStairsController()

		expect(layout.getItemLayout(3)).toEqual({ startOffset = 30, length = 30 })

		controller.dispatch({ type = VirtualizerCommandType.Destroy })
	end)

	it("uses half-open offset bounds", function()
		local startBoundaryWindow = createStairsController()
		startBoundaryWindow.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 10 })
		startBoundaryWindow.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})
		expect(startBoundaryWindow.getSnapshot().mountedRange).toEqual({ firstIndex = 2, lastIndex = 2 })

		local endBoundaryWindow = createStairsController()
		endBoundaryWindow.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 10,
			crossAxisLength = 100,
		})
		expect(endBoundaryWindow.getSnapshot().mountedRange).toEqual({ firstIndex = 1, lastIndex = 1 })

		startBoundaryWindow.dispatch({ type = VirtualizerCommandType.Destroy })
		endBoundaryWindow.dispatch({ type = VirtualizerCommandType.Destroy })
	end)

	it("tracks DataSource count through the controller", function()
		local dataSource = DataSource.sequence({ "a", "b", "c", "d" })
		local controller = createVirtualizerEngine({
			dataSource = dataSource,
			layout = createStairsLayout(),
			getRecyclableViewType = function()
				return "row"
			end,
			overscan = 0,
		})
		controller.dispatch({ type = VirtualizerCommandType.Activate })
		local disconnect = dataSource.subscribe(function(changeBatch)
			controller.dispatch({
				type = InternalVirtualizerCommandType.ApplyDataSourceChange,
				changeBatch = changeBatch,
			})
		end)

		expect(controller.getSnapshot().contentLength).toBe(100)
		dataSource.remove(4)
		expect(controller.getSnapshot().contentLength).toBe(60)

		disconnect()
		controller.dispatch({ type = VirtualizerCommandType.Destroy })
	end)

	it("returns an empty range outside content", function()
		local controller = createStairsController()
		controller.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 100 })
		controller.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 100,
			crossAxisLength = 100,
		})

		local range = controller.getSnapshot().mountedRange
		expect(range.lastIndex < range.firstIndex).toBe(true)

		controller.dispatch({ type = VirtualizerCommandType.Destroy })
	end)
end)
