local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Layout = require(Src.Core.Layout)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local createViewportModel = require(script.Parent.Parent.ViewportModel)

local function createHarness(itemCount: number, options)
	local layout = Layout.uniform({ itemLength = 20 })
	local keys = table.create(itemCount)
	for index = 1, itemCount do
		keys[index] = tostring(index)
	end
	layout.applyDataSourceChange({ type = DataSourceChangeType.Reset, keys = keys })
	local viewport = createViewportModel({
		getLayout = function()
			return layout
		end,
		contentAlignment = options and options.contentAlignment,
		contentInsetStart = options and options.contentInsetStart,
		contentInsetEnd = options and options.contentInsetEnd,
		endThreshold = options and options.endThreshold,
	})
	return viewport
end

describe("ViewportModel", function()
	it("reports initial and updated content inset snapshots", function()
		local viewport = createHarness(3, {
			contentInsetStart = 10,
			contentInsetEnd = 5,
		})
		local initialInsets = viewport.getContentInsets()

		expect(initialInsets).toEqual({ start = 10, finish = 5 })
		expect(viewport.setContentInsets(20, 15)).toBe(true)
		expect(viewport.getContentInsets()).toEqual({ start = 20, finish = 15 })
		expect(initialInsets).toEqual({ start = 10, finish = 5 })
		expect(viewport.contentLength(false)).toBe(95)
	end)

	it("owns aligned content metrics and the layout coordinate transform", function()
		local viewport = createHarness(3, {
			contentAlignment = ScrollAlignment.End,
			contentInsetStart = 10,
			contentInsetEnd = 5,
		})
		viewport.setViewportSize(100, 300)

		expect(viewport.contentLength(false)).toBe(75)
		expect(viewport.contentStartOffset(false)).toBe(35)
		expect({ viewport.getLayoutViewport() }).toEqual({ -25, 60 })
		expect(viewport.getVisibleRange()).toEqual({ firstIndex = 1, lastIndex = 3 })
	end)

	it("uses one end-threshold definition for current and captured scroll state", function()
		local viewport = createHarness(10, { endThreshold = 5 })
		viewport.setViewportSize(40, 100)
		viewport.setScrollOffset(154)

		expect(viewport.getScrollState().distanceFromEnd).toBe(6)
		expect(viewport.getScrollState().atEnd).toBe(false)

		viewport.setEndThreshold(6)
		expect(viewport.getScrollState().atEnd).toBe(true)
	end)

	it("calculates item alignment offsets against insets and clamps to content", function()
		local viewport = createHarness(10, {
			contentInsetStart = 10,
			contentInsetEnd = 20,
		})
		viewport.setViewportSize(70, 100)

		expect(viewport.getScrollOffsetForItem(3)).toBe(40)
		expect(viewport.getScrollOffsetForItem(3, ScrollAlignment.End)).toBe(20)
		expect(viewport.getScrollOffsetForItem(10)).toBe(160)
	end)
end)
