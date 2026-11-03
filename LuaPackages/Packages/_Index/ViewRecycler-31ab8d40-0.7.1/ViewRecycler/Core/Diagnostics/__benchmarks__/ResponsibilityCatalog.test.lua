local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local ResponsibilityCatalog = require(script.Parent.ResponsibilityCatalog)

describe("ResponsibilityCatalog", function()
	it("reports uncovered responsibilities for one owner", function()
		local covered = ResponsibilityCatalog.Core.Initialization
		local missing = ResponsibilityCatalog.getMissing({
			{
				owner = "core",
				responsibility = covered,
			},
			{
				owner = "react",
				responsibility = ResponsibilityCatalog.React.MountScroll,
			},
		}, "core")

		expect(table.find(missing, covered)).toBeNil()
		expect(table.find(missing, ResponsibilityCatalog.Core.Teardown)).never.toBeNil()
		expect(#missing).toBe(#ResponsibilityCatalog.byOwner.core - 1)
	end)

	it("contains unique responsibilities with matching owner prefixes", function()
		local seen = {}
		local count = 0
		for owner, responsibilities in ResponsibilityCatalog.byOwner do
			for _, responsibility in responsibilities do
				expect(string.sub(responsibility, 1, #owner + 1)).toBe(owner .. ".")
				expect(seen[responsibility]).toBeNil()
				expect(ResponsibilityCatalog.isKnown(responsibility)).toBe(true)
				seen[responsibility] = true
				count += 1
			end
		end

		expect(count).toBe(37)
	end)

	it("catalogs RecyclingScope ownership without deleted pool responsibilities", function()
		expect(ResponsibilityCatalog.Core.RecyclingScope).toBe("core.recyclingScope")
		expect((ResponsibilityCatalog.Core :: any).RecyclingPool).toBeNil()
		expect(ResponsibilityCatalog.React.ScopeOwnership).toBe("react.scopeOwnership")
		expect((ResponsibilityCatalog.React :: any).PoolOwnership).toBeNil()
		expect(ResponsibilityCatalog.isKnown("core.recyclingPool")).toBe(false)
		expect(ResponsibilityCatalog.isKnown("react.poolOwnership")).toBe(false)
	end)
end)
