local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Src
-- local TestsFolderPackages = Plugin.Packages -- Can be used to run packages' unit tests

local TestEZ = require(Plugin.Packages.TestEZ)
local TestBootstrap = TestEZ.TestBootstrap
local TextReporter = TestEZ.Reporters.TextReporter -- Add quiet to hide output.


local SHOULD_RUN_TESTS = false -- Do not check in as true!
if SHOULD_RUN_TESTS then
	print("----- All Package Management Tests ------")
	TestBootstrap:run({ TestsFolderPlugin }, TextReporter)
	print("----------------------------------")
end