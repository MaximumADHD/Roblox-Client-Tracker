local Plugin = script.Parent.Parent

local commonInit = require(script.Parent.commonInit)
commonInit()

local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local Framework = require(Plugin.Packages.Framework)

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	-- Requiring TestEZ initialises TestService, so we require it under the condition
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local TextReporter = TestEZ.Reporters.TextReporter

	local reporter = _G["TEAMCITY"] and TeamCityReporter or TextReporter
	local TestsFolderPlugin = Plugin.Src

	local testOptions = {
		showTimingInfo = false,
		testNamePattern = nil,
		extraEnvironment = {},
	}

	print("----- All " .. Plugin.Name .. " Tests ------")
	TestBootstrap:run({TestsFolderPlugin}, reporter, testOptions)
	print("----------------------------------")

	print("")
	print("----- All DeveloperFramework Tests ------")
	Framework.TestHelpers.runFrameworkTests(TestEZ, reporter)
	print("----------------------------------")
end

if DebugFlags.RunningUnderCLI() then
	pcall(function()
		game:GetService("ProcessService"):ExitAsync(0)
	end)
end
