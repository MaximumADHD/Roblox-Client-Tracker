local Plugin = script.Parent.Parent

--[[
	RefactorFlags needs to be required and updated directly; before Framework's init
	is required (so that any files that Framework's init requires get the correct values).
]]
local RefactorFlags = require(Plugin.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = true

local TestsFolderPlugin = Plugin.Src
local TestsFolderPackages = Plugin.Packages -- Can be used to run package's unit tests

local SHOULD_RUN_TESTS = false -- Do not check in as true!
if SHOULD_RUN_TESTS then
	local TestEZ = require(Plugin.Packages.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quite to see output

	print("----- All " .. Plugin.Name .. " Tests ------")
	TestBootstrap:run({ TestsFolderPlugin, TestsFolderPackages }, TextReporter)
	print("----------------------------------")
end
