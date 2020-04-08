local SHOULD_RUN_TESTS = false -- Do not check in as true!

if SHOULD_RUN_TESTS then
	local Plugin = script.Parent.Parent
	local TestsFolderFramework = Plugin.Packages.DraggerFramework

	local TestEZ = require(Plugin.Packages.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quiet to see output

	print("----- All DraggerFramework Tests ------")
	TestBootstrap:run({ TestsFolderFramework }, TextReporter)
	print("----------------------------------")
end
