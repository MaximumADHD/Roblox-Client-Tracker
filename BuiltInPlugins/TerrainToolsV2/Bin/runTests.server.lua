local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap

	local TextReporter = TestEZ.Reporters.TextReporter
	if DebugFlags.LogTestsQuiet() then
		TextReporter = TestEZ.Reporters.TextReporterQuiet
	end

	print("----- All " .. script.Parent.Parent.Name .. " Tests ------")
	require(script.Parent.defineLuaFlags)
	TestBootstrap:run({Plugin.Src}, TextReporter)
	print("----------------------------------")

	if DebugFlags.RunDeveloperFrameworkTests() then
		print("")
		print("----- All Developer Framework Tests ------")
		TestBootstrap:run({Plugin.Packages.Framework}, TextReporter)
		print("----------------------------------")
	end
end

if DebugFlags.RunningUnderCLI() then
	pcall(function()
		game:GetService("ProcessService"):ExitAsync(0)
	end)
end
