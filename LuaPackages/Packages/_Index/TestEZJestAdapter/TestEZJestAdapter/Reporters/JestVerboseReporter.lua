local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent
local VerboseReporter = require(Packages.JestReporters).VerboseReporter
local JestReporterAdapter = require(CurrentModule.JestReporterAdapter)

return JestReporterAdapter.createReporter(VerboseReporter.new({ rootDir = "", useStderr = false }))
