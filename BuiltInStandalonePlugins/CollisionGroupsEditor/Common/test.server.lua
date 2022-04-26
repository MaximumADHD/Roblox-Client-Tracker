local Plugin = script.Parent.Parent
local TestsFolderPlugin = Plugin.Plugin

-- Do not check in as true!
local SHOULD_RUN_TESTS = false
if SHOULD_RUN_TESTS then
    local TestEZ = require(Plugin.Packages.Dev.TestEZ)
    local TestBootstrap = TestEZ.TestBootstrap
    local TextReporter = TestEZ.Reporters.TextReporterQuiet

    TestBootstrap:run({ TestsFolderPlugin }, TextReporter)
end
