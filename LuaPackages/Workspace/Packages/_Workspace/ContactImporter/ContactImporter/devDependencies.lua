local ContactImporter = script.Parent
local Packages = ContactImporter.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local MessageBus = require(Packages.Dev.MessageBus).MessageBus
local createTreeWithProviders = require(ContactImporter.TestHelpers.createTreeWithProviders)

jestExpect.extend(LuaSocialLibrariesDeps.CollisionMatchers.Jest)

return {
	Mock = LuaSocialLibrariesDeps.Mock,
	-- TODO: move to social libraries?
	UnitTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers,
	CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers,
	Rhodium = require(Packages.Dev.Rhodium),
	-- need to keep this as a function otherwise it breaks storybooks
	RhodiumHelpers = function()
		return require(Packages.Dev.RhodiumHelpers)
	end,
	JestGlobals = JestGlobals,
	jestExpect = jestExpect,
	jest = JestGlobals.jest,
	act = ReactRoblox.act,
	UIBloxUniversalAppConfig = require(Packages.Dev.RobloxAppUIBloxConfig),
	createTreeWithProviders = createTreeWithProviders,
	MessageBus = MessageBus,
	findImageSet = require(Packages.Dev.SocialTestHelpers).TestHelpers.findImageSet,
	DeferredLuaHelpers = require(Packages.Dev.TestUtils).DeferredLuaHelpers,
	MockAppStorageService = require(Packages.Dev.SocialTestHelpers).TestHelpers.MockAppStorageService,
}
