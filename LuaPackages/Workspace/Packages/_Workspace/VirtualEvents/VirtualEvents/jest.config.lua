local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestConfigs = require(VirtualEvents.Parent.Dev.JestConfigs)

return {
	displayName = "VirtualEvents",
	testMatch = { "**/*.test" },
	setupFilesAfterEnv = {
		JestConfigs.setupFiles.LogHandler,
		JestConfigs.setupFiles.UIBloxInitializer,
		JestConfigs.setupFiles.createPromiseRejectionHandler(),
	},
}
