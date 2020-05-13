-- Fast flags
require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Core

local SHOULD_RUN_TESTS = false -- Do not check in as true!

if SHOULD_RUN_TESTS then
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quiet to see output

	print("----- All " ..Plugin.Name.. " Tests ------")
	TestBootstrap:run({TestsFolderPlugin}, TextReporter)
	print("----------------------------------")
end

