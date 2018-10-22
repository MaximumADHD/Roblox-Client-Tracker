if workspace:FindFirstChild("RunGameSettingsTests") and workspace.RunGameSettingsTests.Value then
	local TestEZ = script.Parent.Parent.TestEZ
	local tests = script.Parent

	local TestBootstrap = require(TestEZ.TestBootstrap)
	local TextReporter = require(TestEZ.Reporters.TextReporter)

	TestBootstrap:run(tests, TextReporter)
end