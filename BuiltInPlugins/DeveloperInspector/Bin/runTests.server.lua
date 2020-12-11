local main = script.Parent.Parent
local commonInit = require(main.Src.Util.commonInit)
commonInit()

local DebugFlags = require(main.Src.Util.DebugFlags)

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	local TestEZ = require(main.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap

	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local reporter = TestEZ.Reporters.TextReporter
	if DebugFlags.LogTestsQuiet() then
		reporter = TestEZ.Reporters.TextReporterQuiet
	end

	reporter = _G["TEAMCITY"] and TeamCityReporter or reporter

	print("----- All " .. script.Parent.Parent.Name .. " Tests ------")
	require(script.Parent.defineFlags)
	TestBootstrap:run({main.Src}, reporter)
	print("----------------------------------")
end

if DebugFlags.RunningUnderCLI() then
	pcall(function()
		game:GetService("ProcessService"):ExitAsync(0)
	end)
end
