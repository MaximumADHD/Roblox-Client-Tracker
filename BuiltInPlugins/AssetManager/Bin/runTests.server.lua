local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Src

local SHOULD_RUN_TESTS = false -- Do not check in as true!

if SHOULD_RUN_TESTS then
	local TestEZ = require(Plugin.Packages.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quiet to see output


	print("----- All " ..script.Parent.Parent.Name.. " Tests ------")
	require(script.Parent.defineLuaFlags)
	TestBootstrap:run({ TestsFolderPlugin }, TextReporter)
	print("----------------------------------")
end
