local Packages = script.Parent

local expect = require(Packages.Expect)

local jest = require(Packages.Jest)
local jestSnapshot = require(Packages.JestSnapshot)

local TestEZ = require(Packages.TestEZ)

return {
	expect = expect,
	jest = jest,
	testEnv = jest.testEnv,
	jestSnapshot = {
		toMatchSnapshot = jestSnapshot.toMatchSnapshot,
		toThrowErrorMatchingSnapshot = jestSnapshot.toThrowErrorMatchingSnapshot
	},
	TestEZ = TestEZ
}
