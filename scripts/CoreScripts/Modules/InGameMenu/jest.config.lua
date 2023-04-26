local CorePackages = game:GetService("CorePackages")
local JestConfigs = require(CorePackages.Workspace.Packages.JestConfigs)

return {
	displayName = "InGameMenuJest3",
	testMatch = { "**/*.test" },
	setupFilesAfterEnv = {
		JestConfigs.setupFiles.UIBloxInitializer,
		JestConfigs.setupFiles.createPromiseRejectionHandler(),
	},
}
