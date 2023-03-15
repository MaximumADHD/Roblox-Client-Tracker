local Root = script.Parent
local Packages = Root.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaSocialLibrariesDeps = require(Packages.Dev.LuaSocialLibrariesDeps)

JestGlobals.expect.extend(LuaSocialLibrariesDeps.CollisionMatchers.Jest)

return {
	JestGlobals = JestGlobals,
	UnitTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers,
	Rhodium = require(Packages.Dev.Rhodium),
	RhodiumHelpers = function()
		return require(Packages.Dev.RhodiumHelpers)
	end,
	createTreeWithProviders = require(Packages.Dev.SocialTestHelpers).TestHelpers.createTreeWithProviders,
}
