return {
	Reporters = {
		JestReporterAdapter = require(script.Reporters.JestReporterAdapter),
		JestDefaultReporter = require(script.Reporters.JestDefaultReporter),
		JestVerboseReporter = require(script.Reporters.JestVerboseReporter),
		JestSummaryReporter = require(script.Reporters.JestSummaryReporter),
		pipe = require(script.Reporters.pipeReporters),
	},
}
