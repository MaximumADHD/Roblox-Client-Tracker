local Root = script.Parent
local Packages = Root.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local TestUtils = require(Packages.Dev.TestUtils)

jestExpect.extend(LuaSocialLibrariesDeps.CollisionMatchers.Jest)

return {
	Mock = LuaSocialLibrariesDeps.Mock,
	CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers,
	UnitTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers,
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
