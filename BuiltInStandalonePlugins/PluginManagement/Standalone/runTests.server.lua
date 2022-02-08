local Plugin = script.Parent.Parent

require(Plugin.Bin.defineLuaFlags)

local TestsFolderPlugin = Plugin.Src
local TestsFolderPackages = Plugin.Packages -- Can be used to run package's unit tests

local SHOULD_RUN_TESTS = false -- Do not check in as true!
if SHOULD_RUN_TESTS then
	local TestEZ = require(Plugin.Packages.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quite to see output

	print("----- All " .. Plugin.Name .. " Tests ------")
	TestBootstrap:run({ TestsFolderPlugin, TestsFolderPackages }, TextReporter)
	print("----------------------------------")
end
