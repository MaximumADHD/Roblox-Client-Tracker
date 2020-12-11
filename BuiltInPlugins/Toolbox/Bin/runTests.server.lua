
-- Fast flags
require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent

--[[
	RefactorFlags needs to be required and updated directly; before Framework's init
	is required (so that any files that Framework's init requires get the correct values).
]]
local RefactorFlags = require(Plugin.Libs.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = game:GetFastFlag("EnableToolboxStylizer")

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

