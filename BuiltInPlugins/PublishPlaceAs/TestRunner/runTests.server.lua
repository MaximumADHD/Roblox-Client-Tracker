require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Src
--local TestsFolderPackages = Plugin.Packages -- Can be used to run package's unit tests

local TestEZ = require(Plugin.Packages.TestEZ)
local TestBootstrap = TestEZ.TestBootstrap
local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quite to see output

local SHOULD_RUN_TESTS = false -- Do not check in as true!
if SHOULD_RUN_TESTS then
	print("----- All Template Tests ------")
	-- You can also run the unit tests for the packages by adding TestsFolderPackages
	-- to the table. Some of them might be broken though.
	TestBootstrap:run({ TestsFolderPlugin }, TextReporter)
	print("----------------------------------")
end
