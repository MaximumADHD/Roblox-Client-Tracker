local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local createScrollPositionController = require(script.Parent.Parent.ScrollPositionController)

describe("ScrollPositionController", function()
	it("reads the viewport index hint only when the retained anchor rotates", function()
		local hintReads = 0
		local controller = createScrollPositionController({
			shouldPreserveUserPosition = function()
				return true
			end,
			getItemCount = function()
				return 3
			end,
			getItemKey = function(index)
				return tostring(index)
			end,
			getScrollOffset = function()
				return 0
			end,
			clampScrollOffset = function(offset)
				return offset
			end,
			getViewportLength = function()
				return 10
			end,
			getVisibleRange = function()
				return { firstIndex = 1, lastIndex = 1 }
			end,
			getItemLayout = function(index)
				return {
					startOffset = (index - 1) * 10,
					length = 10,
				}
			end,
			getScrollOffsetForItem = function()
				return 0
			end,
		})
		local function getIndexHint()
			hintReads += 1
			return 1
		end

		controller.setViewportAnchor(0, getIndexHint)
		expect(hintReads).toBe(1)

		controller.setViewportAnchor(1, getIndexHint)
		expect(hintReads).toBe(1)

		controller.setViewportAnchor(10, getIndexHint)
		expect(hintReads).toBe(2)

		controller.destroy()
	end)

	it("uses explicit pre-mutation evidence when the viewport anchor is removed", function()
		local keys = { "a", "b", "c" }
		local controller = createScrollPositionController({
			shouldPreserveUserPosition = function()
				return true
			end,
			getItemCount = function()
				return #keys
			end,
			getItemKey = function(index)
				return keys[index]
			end,
			getScrollOffset = function()
				return 0
			end,
			clampScrollOffset = function(offset)
				return offset
			end,
			getViewportLength = function()
				return 20
			end,
			getVisibleRange = function()
				return { firstIndex = 1, lastIndex = 2 }
			end,
			getItemLayout = function(index)
				return {
					startOffset = (index - 1) * 10,
					length = 10,
				}
			end,
			getScrollOffsetForItem = function()
				return 0
			end,
		})
		controller.setViewportAnchor(0)
		table.remove(keys, 1)

		local correction = controller.applyGeometryChange({
			source = "data",
			dataSourceChange = {
				changes = {
					{ type = DataSourceChangeType.Remove, index = 1, keys = { "a" } },
				},
			},
			anchorEvidence = {
				scrollOffset = 0,
				viewportLength = 20,
				visibleItems = {
					{ key = "a", viewportCoordinate = 0, itemLength = 10 },
					{ key = "b", viewportCoordinate = 10, itemLength = 10 },
				},
			},
		}, function() end)

		expect(correction).toEqual({
			delta = -10,
			source = "data",
		})
		controller.destroy()
	end)
end)
