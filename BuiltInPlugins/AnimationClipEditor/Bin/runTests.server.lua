local Plugin = script.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

-- Set THEME_REFACTOR in the DevFramework to false
local RefactorFlags = require(Plugin.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = false


local function getReporter()
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local TextReporter = TestEZ.Reporters.TextReporter

	return _G["TEAMCITY"] and TeamCityReporter or TextReporter
end

local function runTests()
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local tests = Plugin.Src
	local TestBootstrap = TestEZ.TestBootstrap

	local reporter = getReporter()

	TestBootstrap:run({tests}, reporter)
end

local function runRhodiumTests()
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local tests = Plugin.RhodiumTests
	local TestBootstrap = TestEZ.TestBootstrap

	local RigCreator = require(Plugin.RigCreator)

	local DummyRig = RigCreator.BuildAnthroRig("AnthroNormal")
	DummyRig.Name = "Dummy"
	DummyRig.HumanoidRootPart.Anchored = true

	local reporter = getReporter()

	TestHelpers.init(plugin)
	TestBootstrap:run({tests}, reporter, false, true)
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
