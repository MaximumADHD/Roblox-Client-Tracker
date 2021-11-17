local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	local commonInit = require(script.Parent.commonInit)
	commonInit()
	local Framework = require(Plugin.Packages.Framework)
	-- Requiring TestEZ initialises TestService, so we require it under the condition
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local TextReporter = TestEZ.Reporters.TextReporter
	local TextReporterQuiet = TestEZ.Reporters.TextReporterQuiet

	local reporter
	if _G["TEAMCITY"] then
		reporter = TeamCityReporter
	elseif DebugFlags.LogTestsQuiet() then
		reporter = TextReporterQuiet
	else
		reporter = TextReporter
	end

	local TestsFolderPlugin = Plugin.Src

	print("----- All " .. Plugin.Name .. " Tests ------")
	TestBootstrap:run({TestsFolderPlugin}, reporter)
	print("----------------------------------")

	if DebugFlags.RunDeveloperFrameworkTests() then
		print("")
		print("----- All DeveloperFramework Tests ------")
		Framework.TestHelpers.runFrameworkTests(TestEZ, reporter)
		print("----------------------------------")
	end
end

if DebugFlags.RunningUnderCLI() then
	pcall(function()
		game:GetService("ProcessService"):ExitAsync(0)
	end)
end
