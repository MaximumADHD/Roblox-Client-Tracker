local Root = script.Parent
local Packages = Root.Parent

local JestConfigs = require(Packages.Dev.JestConfigs)

return {
	displayName = "SocialWidgets-Squad",
	testMatch = { "**/*.test" },
	setupFilesAfterEnv = {
		JestConfigs.setupFiles.LogHandler,
		JestConfigs.setupFiles.UIBloxInitializer,
		JestConfigs.setupFiles.createPromiseRejectionHandler(),
	},
}
