local Root = script.Parent
local Packages = Root.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local TestUtils = require(Packages.Dev.TestUtils)

jestExpect.extend(LuaSocialLibrariesDeps.CollisionMatchers.Jest)

return {
	Mock = LuaSocialLibrariesDeps.Mock,
	UnitTestHelpers = LuaProfileDeps.UnitTestHelpers,
	CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers,
	Rhodium = require(Packages.Dev.Rhodium),
	RhodiumHelpers = function()
		return require(Packages.Dev.RhodiumHelpers)
	end,
	JestGlobals = JestGlobals,
	jestExpect = jestExpect,
	jest = JestGlobals.jest,
	findImageSet = require(Packages.Dev.SocialTestHelpers).TestHelpers.findImageSet,
	DeferredLuaHelpers = TestUtils.DeferredLuaHelpers,
	waitUntil = TestUtils.waitUntil,
}
