-- Note: Make sure this boolean is false for production code.
-- Code reviewer: if you see this variable as true, say something!
local SHOULD_RUN_TESTS = false

if SHOULD_RUN_TESTS then
	local Plugin = script.Parent.Parent
	local TestsFolderPlugin = Plugin.Src

	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporter

	print("----- All Event Emulator Tests ------")
	require(script.Parent.defineLuaFlags)
	TestBootstrap:run(TestsFolderPlugin, TextReporter)
	print("----------------------------------")
end
