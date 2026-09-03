local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local createItemRevisionTracker = require(Src.Core.Virtualizer.ItemRevisionTracker)

describe("ItemRevisionTracker", function()
	it("separates reset and value-update versions", function()
		local tracker = createItemRevisionTracker()

		tracker.applyChange({ type = DataSourceChangeType.Reset, keys = { "a", "b", "c" } })
		local resetVersion = tracker.get("a")
		tracker.applyChange({ type = DataSourceChangeType.Update, keys = { "b", "c" } })

		expect(resetVersion).toBeGreaterThan(0)
		expect(tracker.get("a")).toBe(resetVersion)
		expect(tracker.get("b")).toBeGreaterThan(resetVersion)
		expect(tracker.get("c")).toBeGreaterThan(tracker.get("b"))
	end)

	it("gives a removed and reinserted key a fresh incarnation", function()
		local tracker = createItemRevisionTracker()
		tracker.applyChange({ type = DataSourceChangeType.Insert, index = 1, keys = { "a" } })
		local firstVersion = tracker.get("a")

		tracker.applyChange({ type = DataSourceChangeType.Remove, index = 1, keys = { "a" } })
		tracker.applyChange({ type = DataSourceChangeType.Insert, index = 1, keys = { "a" } })

		expect(tracker.get("a")).toBeGreaterThan(firstVersion)
	end)

	it("preserves versions across move and reorder", function()
		local tracker = createItemRevisionTracker()
		tracker.applyChange({ type = DataSourceChangeType.Insert, index = 1, keys = { "a", "b" } })
		local aVersion = tracker.get("a")
		local bVersion = tracker.get("b")

		tracker.applyChange({ type = DataSourceChangeType.Move, fromIndex = 1, toIndex = 2, key = "a" })
		tracker.applyChange({ type = DataSourceChangeType.Reorder, keys = { "a", "b" } })

		expect(tracker.get("a")).toBe(aVersion)
		expect(tracker.get("b")).toBe(bVersion)
	end)
end)
