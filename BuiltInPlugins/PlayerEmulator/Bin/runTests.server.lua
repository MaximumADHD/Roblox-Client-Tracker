local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local FFlagPlayerEmulatorDeduplicatePackages = game:GetFastFlag("PlayerEmulatorDeduplicatePackages")

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	local TestEZ = if FFlagPlayerEmulatorDeduplicatePackages then require(Plugin.Packages.Dev.TestEZ) else require(Plugin.Packages.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap

	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local reporter = TestEZ.Reporters.TextReporter
	if DebugFlags.LogTestsQuiet() then
		reporter = TestEZ.Reporters.TextReporterQuiet
	end

	reporter = _G["TEAMCITY"] and TeamCityReporter or reporter

	print("----- All " .. script.Parent.Parent.Name .. " Tests ------")
	require(script.Parent.defineLuaFlags)
	TestBootstrap:run({Plugin.Src}, reporter)
	print("----------------------------------")

	if DebugFlags.RunDeveloperFrameworkTests() then
		print("")
		print("----- All Developer Framework Tests ------")
		TestBootstrap:run({Plugin.Packages._Index.DeveloperFramework.DeveloperFramework}, reporter)
		print("----------------------------------")
	end
end

if DebugFlags.RunningUnderCLI() then
	pcall(function()
		game:GetService("ProcessService"):ExitAsync(0)
	end)
end