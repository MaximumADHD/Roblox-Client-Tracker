local Main = script.Parent.Parent

require(script.Parent.defineLuaFlags)

local DebugFlags = require(Main.Src.Util.DebugFlags)

local Framework = nil

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	_G.__DEV__ = true
	_G.__ROACT_17_MOCK_SCHEDULER__ = true
	_G.__ROACT_17_INLINE_ACT__ = true
	
	local commonInit = require(Main.Src.Util.commonInit)
	commonInit()

	Framework = require(Main.Packages.Framework)
	-- Requiring TestEZ initialises TestService, so we require it under the condition
	local TestEZ = require(Main.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local TextReporter = TestEZ.Reporters.TextReporter

	local reporter = _G["TEAMCITY"] and TeamCityReporter or TextReporter
	local TestsFolderPlugin = Main.Src

	print("----- All " .. Main.Name .. " Tests ------")
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
