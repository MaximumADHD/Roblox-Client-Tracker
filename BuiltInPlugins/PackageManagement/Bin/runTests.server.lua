local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Src
local TestsFolderPackages = Plugin.Packages

local TestEZ = require(Plugin.Packages.TestEZ)
local TestBootstrap = TestEZ.TestBootstrap
local TextReporter = TestEZ.Reporters.TextReporterQuiet


local SHOULD_RUN_TESTS = false
if SHOULD_RUN_TESTS then
	print("----- All Package Management Tests ------")
	TestBootstrap:run({ TestsFolderPlugin, TestsFolderPackages }, TextReporter)
	print("----------------------------------")
end