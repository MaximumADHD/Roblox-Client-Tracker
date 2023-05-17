local Root = script.Parent
local Packages = Root.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
JestGlobals.expect.extend(LuaSocialLibrariesDeps.CollisionMatchers.Jest)

return {
	JestGlobals = JestGlobals,
	RoduxUsers = LuaSocialLibrariesDeps.RoduxUsers.config({
		keyPath = "SharedTest.Users",
	}),
	RoduxFriends = LuaSocialLibrariesDeps.RoduxFriends.config({
		keyPath = "SharedTest.Friends",
	}),
	RoduxPresence = LuaSocialLibrariesDeps.RoduxPresence.config({
		keyPath = "SharedTest.Presence",
	}),
}
