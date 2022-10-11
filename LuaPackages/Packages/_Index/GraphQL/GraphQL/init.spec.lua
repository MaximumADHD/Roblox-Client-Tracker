return function()
	local TestMatchers = script.Parent.TestMatchers
	local toEqual = require(TestMatchers.toEqual)
	local toArrayContains = require(TestMatchers.toArrayContains)
	local toHaveSameMembers = require(TestMatchers.toHaveSameMembers)
	local toArrayEqual = require(TestMatchers.toArrayEqual)
	local toObjectContain = require(TestMatchers.toObjectContain)
	local toBeOneOf = require(TestMatchers.toBeOneOf)
	local toThrow = require(TestMatchers.toThrow)
	local toBeNaN = require(TestMatchers.toBeNaN)
	local Packages = script.Parent.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect

	beforeAll(function()
		-- ROBLOX FIXME: roblox-cli has special, hard-coded types for TestEZ that break when we
		-- use custom matchers added via `expect.extend`
		local expect: any = expect
		expect.extend({
			toEqual = toEqual,
			toArrayContains = toArrayContains,
			toHaveSameMembers = toHaveSameMembers,
			toArrayEqual = toArrayEqual,
			toObjectContain = toObjectContain,
			toBeOneOf = toBeOneOf,
			toThrow = toThrow,
			toBeNaN = toBeNaN,
		})
		jestExpect.extend({
			toHaveSameMembers = toHaveSameMembers,
		})
	end)
end
