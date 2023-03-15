local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local eraseKeys = require(script.Parent.eraseKeys)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("eraseKeys", function()
	it("should erase the specified keys", function()
		local original = { a = 1, b = 2, c = 3 }
		local keysToRemove = { "c" }
		local result = eraseKeys(keysToRemove, original)
		local expected = { a = 1, b = 2 }
		expect(result).toEqual(expected)
	end)

	it("should gracefully handle keys that don't exist", function()
		local original = { a = 1, b = 2, c = 3 }
		local keysToRemove = { "d" }
		local result = eraseKeys(keysToRemove, original)
		local expected = { a = 1, b = 2, c = 3 }
		expect(result).toEqual(expected)
	end)

	it("should not erase nested keys", function()
		local original = { a = 1, b = { a = 0, b = 1 }, c = { a = 1, b = 4 } }
		local keysToRemove = { "a" }
		local result = eraseKeys(keysToRemove, original)
		local expected = { b = { a = 0, b = 1 }, c = { a = 1, b = 4 } }
		expect(result).toEqual(expected)
	end)
end)
