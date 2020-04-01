local Plugin = script.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local function runTests()
	local TestEZ = Plugin.TestEZ
	local tests = Plugin.Src -- Where stores the package's unit tests

	local TestBootstrap = require(TestEZ.TestBootstrap)
	local TextReporter = require(TestEZ.Reporters.TextReporter) -- Remove Quiet to see output

	TestBootstrap:run(tests, TextReporter)
end

local function runRhodiumTests()
	local RigCreator = require(Plugin.RigCreator)
	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)

	local DummyRig = RigCreator.BuildAnthroRig("AnthroNormal")
	DummyRig.Name = "Dummy"
	DummyRig.HumanoidRootPart.Anchored = true

	local TestEZ = Plugin.TestEZ
	local tests = Plugin.RhodiumTests

	local TestBootstrap = require(TestEZ.TestBootstrap)
	local TextReporter = require(TestEZ.Reporters.TextReporter) -- Remove Quiet to see output

	TestHelpers.init(plugin)
	TestBootstrap:run(tests, TextReporter, false, true)
	DummyRig:Destroy()
end

-- Do not check in as true!
local SHOULD_RUN_TESTS = DebugFlags.RunTests()
local SHOULD_RUN_RHODIUM_TESTS = DebugFlags.RunRhodiumTests()

if SHOULD_RUN_TESTS then
	print("----- All " ..script.Parent.Parent.Name.. " Tests ------")
	runTests()
	print("----------------------------------")
end

if SHOULD_RUN_RHODIUM_TESTS then
	print("----- All " ..script.Parent.Parent.Name.. " Rhodium Tests ------")
	runRhodiumTests()
	print("----------------------------------")
	game:GetService("ProcessService"):Exit(0)
end
