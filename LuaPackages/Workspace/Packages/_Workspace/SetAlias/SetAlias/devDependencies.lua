local SetAlias = script.Parent
local Packages = SetAlias.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect

return {
	ReactRoblox = require(Packages.Dev.ReactRoblox),
	Rhodium = require(Packages.Dev.Rhodium),
	Mock = LuaSocialLibrariesDeps.Mock,
	UnitTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers,
	jestExpect = jestExpect,
	jest = JestGlobals.jest,
	describe = JestGlobals.describe,
	it = JestGlobals.it,
	beforeAll = JestGlobals.beforeAll,
	afterAll = JestGlobals.afterAll,
	expect = JestGlobals.expect,
	RhodiumHelpers = function()
		return require(Packages.Dev.RhodiumHelpers)
	end,
}
