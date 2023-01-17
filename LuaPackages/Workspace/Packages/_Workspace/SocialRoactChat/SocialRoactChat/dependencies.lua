local Root = script.Parent
local Packages = Root.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local SocialLibrariesPackage = LuaSocialLibrariesDeps.SocialLibraries.config({})
local RoduxPresence = LuaSocialLibrariesDeps.RoduxPresence

return {
	Cryo = require(Packages.Cryo),
	Mock = LuaSocialLibrariesDeps.Mock,
	RoduxAliases = LuaSocialLibrariesDeps.RoduxAliases.config({
		keyPath = "RoactChatReducer.Aliases",
	}),
	RoduxPresence = RoduxPresence.config({
		keyPath = "RoactChatReducer.Presence",
	}),
	SocialLibraries = SocialLibrariesPackage,
}
