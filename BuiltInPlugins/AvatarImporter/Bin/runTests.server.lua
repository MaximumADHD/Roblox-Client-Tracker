--!nocheck

local CorePackages = game:GetService("CorePackages")

local tests = script.Parent.Parent.src

local SHOULD_RUN_TESTS = false -- Do not check in as true!

if SHOULD_RUN_TESTS then
	local TestEZ = require(CorePackages.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quiet to see output


	print("----- All " ..script.Parent.Parent.Name.. " Tests ------")
	TestBootstrap:run({ tests }, TextReporter)
	print("----------------------------------")
end
