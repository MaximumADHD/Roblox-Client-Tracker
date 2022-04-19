local SHOULD_RUN_TESTS = false -- Do not check in as true!

if SHOULD_RUN_TESTS then
	local Plugin = script.Parent.Parent
	local TestsFolderPlugin = Plugin.Src
	local TestsFolderPackages = Plugin.Packages -- Can be used to run package's unit tests

	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quiet to see output

	print("----- All " ..script.Parent.Parent.Name.. " Tests ------")
	require(script.Parent.defineLuaFlags)
	TestBootstrap:run({ TestsFolderPlugin, TestsFolderPackages }, TextReporter)
	print("----------------------------------")
end
