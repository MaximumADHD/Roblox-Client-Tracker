local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Src

local TestEZ = require(Plugin.Packages.TestEZ)
local TestBootstrap = TestEZ.TestBootstrap
local TextReporter = TestEZ.Reporters.TextReporterQuiet

local SHOULD_RUN_TESTS = false

if SHOULD_RUN_TESTS then
	print("----- All Terrain Tools Tests ------")
	require(script.Parent.defineLuaFlags)
	TestBootstrap:run({ TestsFolderPlugin }, TextReporter)
	print("----------------------------------")
end
