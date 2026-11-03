local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals

local ShallowTable = require(Src.Internal.ShallowTable)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

describe("ShallowTable", function()
	it("compares only the requested fields", function()
		expect(ShallowTable.containsEqual({ value = 1, ignored = true }, { value = 1, ignored = false }, { "value" })).toBe(
			true
		)
		expect(ShallowTable.containsEqual({ value = 1 }, { value = 2 }, { "value" })).toBe(false)
	end)

	it("compares optional records", function()
		expect(ShallowTable.optionalContainsEqual(nil, nil, { "value" })).toBe(true)
		expect(ShallowTable.optionalContainsEqual({ value = 1 }, nil, { "value" })).toBe(false)
		expect(ShallowTable.optionalContainsEqual({ value = 1 }, { value = 1 }, { "value" })).toBe(true)
	end)

	it("requires exact shallow equality", function()
		expect(ShallowTable.equal({ value = 1 }, { value = 1 })).toBe(true)
		expect(ShallowTable.equal({ value = 1 }, { value = 1, extra = true })).toBe(false)
	end)
end)
