local Plugin = script.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local GetFFlagUseDeveloperFrameworkMigratedSrc = require(Plugin.LuaFlags.GetFFlagUseDeveloperFrameworkMigratedSrc)

-- Set THEME_REFACTOR in the DevFramework to false
local RefactorFlags = require(Plugin.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = false


local function getReporter()
	local TestEZ = nil
	if GetFFlagUseDeveloperFrameworkMigratedSrc() then 
		TestEZ = require(Plugin.Packages.Dev.TestEZ)
	else 
		TestEZ = require(Plugin.TestEZ)
	end
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local TextReporter = TestEZ.Reporters.TextReporter

	return _G["TEAMCITY"] and TeamCityReporter or TextReporter
end

local function runTests()
	local TestEZ = nil
	local tests = nil
	if GetFFlagUseDeveloperFrameworkMigratedSrc() then 
		TestEZ = require(Plugin.Packages.Dev.TestEZ)
		tests = Plugin.Src
	else 
		TestEZ = require(Plugin.TestEZ)
		tests = Plugin.SrcDeprecated
	end
	local TestBootstrap = TestEZ.TestBootstrap
	
	local reporter = getReporter()

	if GetFFlagUseDeveloperFrameworkMigratedSrc() then 
		TestBootstrap:run({tests}, reporter)
	else 
		TestBootstrap:run(tests, reporter)
	end
end

local function runRhodiumTests()
	local TestEZ = nil
	local TestHelpers = nil
	local tests = nil
	if GetFFlagUseDeveloperFrameworkMigratedSrc() then 
		TestEZ = require(Plugin.Packages.Dev.TestEZ)
		TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
		tests = Plugin.RhodiumTests
	else 
		TestEZ = require(Plugin.TestEZ)
		TestHelpers = require(Plugin.RhodiumTestsDeprecated.TestHelpers)
		tests = Plugin.RhodiumTestsDeprecated
	end
	local TestBootstrap = TestEZ.TestBootstrap

	local RigCreator = require(Plugin.RigCreator)

	local DummyRig = RigCreator.BuildAnthroRig("AnthroNormal")
	DummyRig.Name = "Dummy"
	DummyRig.HumanoidRootPart.Anchored = true
	
	local reporter = getReporter()

	TestHelpers.init(plugin)
	if GetFFlagUseDeveloperFrameworkMigratedSrc() then 
		TestBootstrap:run({tests}, reporter, false, true)
	else 
		TestBootstrap:run(tests, reporter, false, true)
	end
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
