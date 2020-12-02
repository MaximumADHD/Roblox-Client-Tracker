local Plugin = script.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local function getReporter()
	local TestEZ = Plugin.TestEZ
	local TeamCityReporter = require(TestEZ.Reporters.TeamCityReporter)
	local TextReporter = require(TestEZ.Reporters.TextReporter)

	return _G["TEAMCITY"] and TeamCityReporter or TextReporter
end

local function runTests()
	local TestEZ = Plugin.TestEZ
	local TestBootstrap = require(TestEZ.TestBootstrap)
	local tests = Plugin.Src -- Where stores the package's unit tests
	
	local reporter = getReporter()

	TestBootstrap:run(tests, reporter)
end

local function runRhodiumTests()
	local TestEZ = Plugin.TestEZ
	local TestBootstrap = require(TestEZ.TestBootstrap)

	local RigCreator = require(Plugin.RigCreator)
	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)

	local DummyRig = RigCreator.BuildAnthroRig("AnthroNormal")
	DummyRig.Name = "Dummy"
	DummyRig.HumanoidRootPart.Anchored = true

	local tests = Plugin.RhodiumTests
	
	local reporter = getReporter()

	TestHelpers.init(plugin)
	TestBootstrap:run(tests, reporter, false, true)
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
	game:GetService("ProcessService"):ExitAsync(0)
end
