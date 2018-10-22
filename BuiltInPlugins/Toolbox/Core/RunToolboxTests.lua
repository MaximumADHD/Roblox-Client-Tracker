local CorePackages = game:GetService("CorePackages")

local TestEZ = require(CorePackages.TestEZ)
local TestBootstrap = TestEZ.TestBootstrap
local TextReporter = TestEZ.Reporters.TextReporter

local Workspace = game:GetService("Workspace")

wait()

return function(tests, keepFailures)
	print("Running Toolbox tests")

	-- Create a folder for the tests to mount their components into
	-- Helpful in case a test fails and it doesn't unmount their components
	-- This way we can just delete them all after the tests finish
	local testTarget = Instance.new("Folder")
	testTarget.Name = "ToolboxTestsTarget"
	testTarget.Parent = Workspace

	TestBootstrap:run({tests}, TextReporter)

	if not keepFailures then
		testTarget:Destroy()
	end
end
