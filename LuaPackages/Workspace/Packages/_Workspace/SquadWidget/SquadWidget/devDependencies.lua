local SquadWidget = script:FindFirstAncestor("SquadWidget")
local Packages = SquadWidget.Parent

local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect

jestExpect.extend(LuaSocialLibrariesDeps.CollisionMatchers.Jest)

return {
	Mock = LuaSocialLibrariesDeps.Mock,
	UnitTestHelpers = LuaProfileDeps.UnitTestHelpers,
	JestGlobals = JestGlobals,
	jest = JestGlobals.jest,
	jestExpect = jestExpect,
	ReactRoblox = require(Packages.Dev.ReactRoblox),
	Rhodium = require(Packages.Dev.Rhodium),
	RhodiumHelpers = function()
		return require(Packages.Dev.RhodiumHelpers)
	end,
	createTreeWithProviders = require(Packages.Dev.SocialTestHelpers).TestHelpers.createTreeWithProviders,
	findImageSet = require(Packages.Dev.SocialTestHelpers).TestHelpers.findImageSet,
}
