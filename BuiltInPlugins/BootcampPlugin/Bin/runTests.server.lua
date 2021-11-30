local Plugin = script.Parent.Parent

local ImprovePluginSpeed_BootcampPlugin = game:GetFastFlag("ImprovePluginSpeed_BootcampPlugin")

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local Framework
if not ImprovePluginSpeed_BootcampPlugin then
	local commonInit = require(script.Parent.commonInit)
	commonInit()

	Framework = require(Plugin.Packages.Framework)
end

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	if ImprovePluginSpeed_BootcampPlugin then
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
