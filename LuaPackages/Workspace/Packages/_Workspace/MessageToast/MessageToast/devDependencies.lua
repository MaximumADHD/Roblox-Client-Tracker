local Root = script.Parent
local Packages = Root.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaSocialLibrariesDeps = require(Packages.Dev.LuaSocialLibrariesDeps)

JestGlobals.expect.extend(LuaSocialLibrariesDeps.CollisionMatchers.Jest)

return {
	JestGlobals = JestGlobals,
	UnitTestHelpers = require(Packages.Dev.LuaProfileDeps).UnitTestHelpers,
	Rhodium = require(Packages.Dev.Rhodium),
	RhodiumHelpers = function()
		return require(Packages.Dev.RhodiumHelpers)
	end,
	getMockLocale = function()
		return require(Packages.Dev.SocialTestHelpers).StoryHelpers.mockLocale
	end,
	createTreeWithProviders = require(Packages.Dev.SocialTestHelpers).TestHelpers.createTreeWithProviders,
	UIBloxUniversalAppConfig = require(Packages.Dev.RobloxAppUIBloxConfig),
}
