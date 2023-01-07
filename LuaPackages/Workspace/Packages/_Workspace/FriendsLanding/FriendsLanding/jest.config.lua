local FriendsLanding = script.Parent
local Packages = FriendsLanding.Parent
local JestConfigs = require(Packages.Dev.JestConfigs)

return {
	displayName = "FriendsLanding",
	testMatch = { "**/*.test" },
	setupFilesAfterEnv = {
		JestConfigs.setupFiles.LogHandler,
		JestConfigs.setupFiles.UIBloxInitializer,
		JestConfigs.setupFiles.createPromiseRejectionHandler(),
		FriendsLanding.TestHelpers.CollisionMatchersSetup,
		FriendsLanding.TestHelpers.NetworkImplHandler,
	},
}
