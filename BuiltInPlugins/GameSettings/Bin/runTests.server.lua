-- Fast flags
require(script.Parent.defineLuaFlags)

-- Do not check in as true!
local SHOULD_RUN_TESTS = false

if SHOULD_RUN_TESTS then
	local tests = script.Parent.Parent.Tests
	--local allTests = script.Parent.Parent -- Can be used to run all unit tests including unit tests for the packages

	local TestEZ = require(script.Parent.Parent.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quiet to see output

	-- You can also run both unit tests for the source code and the packages by replacing allTests
	-- to the table. Some of them might be broken though.
	print("----- All " ..script.Parent.Parent.Name.. " Tests ------")
	TestBootstrap:run({ tests }, TextReporter)
	print("----------------------------------")
end