local UserProfiles = script:FindFirstAncestor("UserProfiles")
local Packages = UserProfiles.Parent
local JestConfigs = require(Packages.Dev.JestConfigs)

return {
	displayName = "UserProfiles",
	testMatch = { "**/*.test" },
	setupFilesAfterEnv = {
		JestConfigs.setupFiles.LogHandler,
		JestConfigs.setupFiles.UIBloxInitializer,
		JestConfigs.setupFiles.createPromiseRejectionHandler(),
	},
}
