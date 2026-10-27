local Packages = script.Parent.Parent

local TestsSetup = Packages:FindFirstChild("TestsSetup")
assert(TestsSetup, "TestsSetup folder not found. Please make sure the folder exists in the root of the package.")

local SetupEnv = TestsSetup:FindFirstChild("setup-env")
assert(SetupEnv, "setup-env file not found. Please make sure the file exists in the TestsSetup folder.")

return {
	displayName = "Jest",
	setupFilesAfterEnv = { SetupEnv },
	testMatch = { "**/__tests__/**/*.spec" },
}
