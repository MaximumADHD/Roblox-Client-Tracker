local Squads = script:FindFirstAncestor("Squads")
local Packages = Squads.Parent

local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect

jestExpect.extend(LuaSocialLibrariesDeps.CollisionMatchers.Jest)

return {
	DeferredLuaHelpers = require(Packages.Dev.TestUtils).DeferredLuaHelpers,
	JestGlobals = JestGlobals,
	Mock = LuaSocialLibrariesDeps.Mock,
	ReactRoblox = require(Packages.Dev.ReactRoblox),
	Rhodium = require(Packages.Dev.Rhodium),
	RhodiumHelpers = function()
		return require(Packages.Dev.RhodiumHelpers)
	end,
	UnitTestHelpers = LuaProfileDeps.UnitTestHelpers,
	createTreeWithProviders = require(Packages.Dev.SocialTestHelpers).TestHelpers.createTreeWithProviders,
	findImageSet = require(Packages.Dev.SocialTestHelpers).TestHelpers.findImageSet,
	jest = JestGlobals.jest,
	jestExpect = jestExpect,
}
