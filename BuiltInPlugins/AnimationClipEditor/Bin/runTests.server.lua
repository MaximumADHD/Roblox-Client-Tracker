local Plugin = script.Parent.Parent

local function runTests()
	local TestEZ = Plugin.TestEZ
	local tests = Plugin.Src -- Where stores the package's unit tests

	local TestBootstrap = require(TestEZ.TestBootstrap)
	local TextReporter = require(TestEZ.Reporters.TextReporterQuiet) -- Remove Quiet to see output

	TestBootstrap:run(tests, TextReporter)
end

local function runRhodiumTests()
	local RigCreator = require(Plugin.RigCreator)
	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local DummyRig = RigCreator.BuildR15Rig()
	DummyRig.Name = "Dummy"

	local TestEZ = Plugin.TestEZ
	local tests = Plugin.RhodiumTests

	local TestBootstrap = require(TestEZ.TestBootstrap)
	local TextReporter = require(TestEZ.Reporters.TextReporterQuiet) -- Remove Quiet to see output

	TestHelpers.init(plugin)
	TestBootstrap:run(tests, TextReporter, false, true)
	DummyRig:Destroy()
end


-- Do not check in as true!
local SHOULD_RUN_TESTS = false
local SHOULD_RUN_RHODIUM_TESTS = false

if SHOULD_RUN_TESTS then
	print("----- All " ..script.Parent.Parent.Name.. " Tests ------")
	runTests()
	print("----------------------------------")
elseif SHOULD_RUN_RHODIUM_TESTS then
	print("----- All " ..script.Parent.Parent.Name.. " Rhodium Tests ------")
	runRhodiumTests()
	print("----------------------------------")
end
