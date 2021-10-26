local Main = script.Parent.Parent

require(script.Parent.defineLuaFlags)
local FFlagImprovePluginSpeed_DeveloperStorybook = game:GetFastFlag("ImprovePluginSpeed_DeveloperStorybook")

local DebugFlags = require(Main.Src.Util.DebugFlags)

local Framework = nil
if not FFlagImprovePluginSpeed_DeveloperStorybook then
	local commonInit = require(Main.Src.Util.commonInit)
	commonInit()

	Framework = require(Main.Packages.Framework)
end

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	if FFlagImprovePluginSpeed_DeveloperStorybook then
		local commonInit = require(Main.Src.Util.commonInit)
		commonInit()

		Framework = require(Main.Packages.Framework)
	end
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
