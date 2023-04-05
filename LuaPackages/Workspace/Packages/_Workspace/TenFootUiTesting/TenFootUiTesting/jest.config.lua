local Root = script.Parent
local Packages = Root.Parent

local JestConfigs = require(Packages.Dev.JestConfigs)

return {
	displayName = "TenFootUiTesting",
	setupFilesAfterEnv = {
		JestConfigs.setupFiles.LogHandler,
		JestConfigs.setupFiles.UIBloxInitializer,
		JestConfigs.setupFiles.createPromiseRejectionHandler(),
	},
}
