local Plugin = script.Parent.Parent
local commonInit = require(Plugin.Src.Util.commonInit)
commonInit()

local Framework = require(Plugin.Packages.Framework)
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then

	-- Requiring TestEZ initialises TestService, so we require it under the condition
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local TextReporter = TestEZ.Reporters.TextReporter

	local reporter = _G["TEAMCITY"] and TeamCityReporter or TextReporter
	local TestsFolderPlugin = Plugin.Src

	if THEME_REFACTOR then
		print("----- All " .. Plugin.Name .. " Tests ------")
		TestBootstrap:run({TestsFolderPlugin}, reporter)
		print("----------------------------------")

		if DebugFlags.RunDeveloperFrameworkTests() then
			print("")
			print("----- All DeveloperFramework Tests ------")
			Framework.TestHelpers.runFrameworkTests(TestEZ, reporter)
			print("----------------------------------")
		end
	else
		--[[
			We do not support mocking the old theme system. Skip tests rather than refactoring it
			due to its impending removal.
		]]
		print("Skipping tests due to run without Developer Framework theme refactor")
	end
end

if DebugFlags.RunningUnderCLI() then
	pcall(function()
		game:GetService("ProcessService"):ExitAsync(0)
	end)
end
