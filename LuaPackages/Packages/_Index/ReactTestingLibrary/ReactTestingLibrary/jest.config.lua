local Packages = script.Parent.Parent
return {
	displayName = "Jest",
	setupFilesAfterEnv = { Packages.TestsSetup["setup-env"] },
	testMatch = { "**/__tests__/**/*.spec" },
}
