local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent
local SummaryReporter = require(Packages.JestReporters).SummaryReporter
local JestReporterAdapter = require(CurrentModule.JestReporterAdapter)

return JestReporterAdapter.createReporter(SummaryReporter.new({ rootDir = "", useStderr = false }))
