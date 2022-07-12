--[[
	New Plugin Setup: Add your plugin to Client/BuildScripts/rotest/config.json
	in order to run unit tests in gated commit.
]]
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
	require(script.Parent.defineLuaFlags)
	TestBootstrap:run({TestsFolderPlugin}, reporter, testOptions)
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
