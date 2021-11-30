--[[
	New Plugin Setup: Add your plugin to Client/BuildScripts/rotest/config.json
	in order to run unit tests in gated commit.
]]
local Plugin = script.Parent.Parent

local FFlagImprovePluginSpeed_AssetImporter = game:GetFastFlag("ImprovePluginSpeed_AssetImporter")

local DebugFlags = require(Plugin.Src.Utility.DebugFlags)
local Framework
if not FFlagImprovePluginSpeed_AssetImporter then
	local commonInit = require(script.Parent.commonInit)
	commonInit()
	Framework = require(Plugin.Packages.Framework)
end

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	if FFlagImprovePluginSpeed_AssetImporter then
		local commonInit = require(script.Parent.commonInit)
		commonInit()
		Framework = require(Plugin.Packages.Framework)
	end

	-- Requiring TestEZ initialises TestService, so we require it under the condition
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local TextReporter = TestEZ.Reporters.TextReporter

	local reporter = _G["TEAMCITY"] and TeamCityReporter or TextReporter
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
