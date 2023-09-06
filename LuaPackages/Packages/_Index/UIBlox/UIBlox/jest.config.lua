--!nocheck
local Packages = script.Parent.Parent

return {
	testMatch = { "**/*.spec" },
	setupFilesAfterEnv = {
		Packages.Utilities.UIBloxInitializer,
	},
}
