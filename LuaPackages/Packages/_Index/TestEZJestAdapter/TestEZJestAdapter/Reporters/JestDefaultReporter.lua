local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent
local DefaultReporter = require(Packages.JestReporters).DefaultReporter
local JestReporterAdapter = require(CurrentModule.JestReporterAdapter)

return JestReporterAdapter.createReporter(DefaultReporter.new({ rootDir = "", useStderr = false }))
