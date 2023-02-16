local FriendsCarousel = script.Parent
local Packages = FriendsCarousel.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local getBaseTestStates = require(Packages.Dev.FriendsLanding).TestHelpers().getBaseTestStates
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

jestExpect.extend(LuaSocialLibrariesDeps.CollisionMatchers.Jest)

local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers

return {
	Mock = LuaSocialLibrariesDeps.Mock,
	UnitTestHelpers = SocialTestHelpers,
	CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers,
	Rhodium = require(Packages.Dev.Rhodium),
	RhodiumHelpers = function()
		return require(Packages.Dev.RhodiumHelpers)
	end,
	JestGlobals = JestGlobals,
	jestExpect = jestExpect,
	jest = JestGlobals.jest,
	UIBloxUniversalAppConfig = require(Packages.Dev.RobloxAppUIBloxConfig),
	baseTestStates = getBaseTestStates({
		roduxKey = RODUX_KEY,
	}),
	mockLocale = function()
		return require(Packages.Dev.SocialTestHelpers).StoryHelpers.mockLocale
	end,
	findImageSet = require(Packages.Dev.SocialTestHelpers).TestHelpers.findImageSet,
}
