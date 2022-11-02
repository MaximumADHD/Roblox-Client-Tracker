local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")
local Packages = SocialLuaAnalytics.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect

return {
	jestExpect = jestExpect,
	jest = JestGlobals.jest,
	RoduxFriends = LuaSocialLibrariesDeps.RoduxFriends.config({
		keyPath = "SocialLuaAnalytics.Friends",
	}),
}
