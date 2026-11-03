local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataPrefetch = require(Src.Core.DataPrefetch)

describe("DataPrefetch", function()
	it("resolves disabled defaults and independent edge item counts", function()
		expect(DataPrefetch.resolve(nil)).toEqual({ startItems = 0, endItems = 0 })
		expect(DataPrefetch.resolve({ startItems = 4 })).toEqual({ startItems = 4, endItems = 0 })
		expect(DataPrefetch.resolve({ endItems = 2 })).toEqual({ startItems = 0, endItems = 2 })
	end)

	it("rejects invalid edge item counts", function()
		expect(function()
			DataPrefetch.resolve({ startItems = -1 })
		end).toThrow()
		expect(function()
			DataPrefetch.resolve({ endItems = 1.5 })
		end).toThrow()
	end)
end)
