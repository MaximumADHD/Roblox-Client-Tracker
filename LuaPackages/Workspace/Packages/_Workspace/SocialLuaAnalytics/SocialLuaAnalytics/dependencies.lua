local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")
local Packages = SocialLuaAnalytics.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local SocialLibrariesPackage = LuaSocialLibrariesDeps.SocialLibraries.config({})

return {
	t = require(Packages.t),
	tutils = require(Packages.tutils),
	RoduxPresence = LuaSocialLibrariesDeps.RoduxPresence.config({
		keyPath = "SocialLuaAnalytics.Presence",
	}),
	llama = LuaSocialLibrariesDeps.llama,
	enumerate = require(Packages.enumerate),
	SocialLibraries = SocialLibrariesPackage,
	LuauPolyfill = require(Packages.LuauPolyfill),
	Rodux = require(Packages.Rodux),
	RoactRodux = require(Packages.RoactRodux),
	Dash = require(Packages.Dash),
}
