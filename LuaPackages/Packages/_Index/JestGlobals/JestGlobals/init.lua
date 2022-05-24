-- ROBLOX NOTE: no upstream
-- ROBLOX deviation: this file is not aligned with upstream version

local Packages = script.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local expect = require(Packages.Expect)

local jest = require(Packages.Jest)
local jestSnapshot = require(Packages.JestSnapshot)

local TestEZ = require(Packages.TestEZ)
local TestEZJestAdapter = require(Packages.TestEZJestAdapter)

return {
	expect = expect,
	jest = jest,
	testEnv = jest.testEnv,
	jestSnapshot = {
		toMatchSnapshot = jestSnapshot.toMatchSnapshot,
		toThrowErrorMatchingSnapshot = jestSnapshot.toThrowErrorMatchingSnapshot,
	},
	TestEZ = Object.assign({}, TestEZ, {
		Reporters = Object.assign({}, TestEZ.Reporters, TestEZJestAdapter.Reporters),
	}),
}
