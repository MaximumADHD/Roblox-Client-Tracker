-- Fast flags
require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Plugin

local TestEZ = require(Plugin.modules.TestEZ)
local TestBootstrap = TestEZ.TestBootstrap
local TextReporter = TestEZ.Reporters.TextReporterQuiet

-- Do not check in as true!
local SHOULD_RUN_TESTS = false

if SHOULD_RUN_TESTS then
	print("----- All CollisionGroupsEditor Tests ------")
    TestBootstrap:run({ TestsFolderPlugin }, TextReporter)
    print("----------------------------------")
end