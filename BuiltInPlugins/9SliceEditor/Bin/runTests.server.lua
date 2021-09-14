local Plugin = script.Parent.Parent

local ok, hasInternalPermission = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

if not ok or not hasInternalPermission then
	return
end

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

	local MouseCursorUtil = require(Plugin.Src.Util.MouseCursorUtil)
	MouseCursorUtil.setPluginObject(plugin) -- Needs to be set before any components are rendered.

	print("----- All " .. Plugin.Name .. " Tests ------")
	local startt = tick()
	TestBootstrap:run({TestsFolderPlugin}, reporter)
	print(string.format("Completed in %.3f s", tick()-startt))
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
