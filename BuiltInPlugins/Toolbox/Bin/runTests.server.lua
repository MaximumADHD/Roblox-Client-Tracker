-- Fast flags
require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Core

local SHOULD_RUN_TESTS = false -- Do not check in as true!

if SHOULD_RUN_TESTS then
	local TestEZ = require(Plugin.Libs.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quiet to see output

	local Workspace = game:GetService("Workspace")

	local targetName = "ToolboxTestsTarget"
	local testTarget = Workspace:FindFirstChild(targetName)
	if testTarget then
		testTarget:Destroy()
	end

	testTarget = Instance.new("Folder")
	testTarget.Name = targetName
	testTarget.Parent = Workspace

	print("----- All " ..Plugin.Name.. " Tests ------")
	TestBootstrap:run({TestsFolderPlugin}, TextReporter)
	print("----------------------------------")

	if not keepFailures then
		testTarget:Destroy()
	end
end

