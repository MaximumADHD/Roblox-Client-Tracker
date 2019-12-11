-- Fast flags
require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Src
--local TestsFolderPackages = Plugin.Packages -- Can be used to run package's unit tests


local SHOULD_RUN_TESTS = false -- Do not check in as true!

if SHOULD_RUN_TESTS then
	local TestEZ = require(Plugin.Packages.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet

	-- You can also run the unit tests for the packages by adding TestsFolderPackages
	-- to the table. Some of them might be broken though.
	print("----- All " ..script.Parent.Parent.Name.. " Tests ------")
	TestBootstrap:run({ TestsFolderPlugin}, TextReporter)
	print("----------------------------------")
end