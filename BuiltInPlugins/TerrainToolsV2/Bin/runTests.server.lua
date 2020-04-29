local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

if DebugFlags.RunningUnderCLI() or DebugFlags.RunTests() then
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = DebugFlags.RunningUnderCLI()
		and TestEZ.Reporters.TextReporter
		or TestEZ.Reporters.TextReporterQuiet-- Remove Quiet to see output

	print("----- All " .. script.Parent.Parent.Name .. " Tests ------")

	require(script.Parent.defineLuaFlags)
	TestBootstrap:run({Plugin.Src}, TextReporter)

	print("----------------------------------")
end

if DebugFlags.RunningUnderCLI() then
	game:GetService("ProcessService"):Exit(0)
end
