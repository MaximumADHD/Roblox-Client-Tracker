local Framework = script.Parent.Parent

--[[
	Framework is not a buildable plugin itself, so it cannot specify its
	own dev dependencies because they will not be installed by Rotriever, so
	dependency inject TestEZ here.

	FrameworkCompanion should be the only plugin that needs to run
	DeveloperFramework tests.
]]
local function runFrameworkTests(TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.TextReporter
	return TestBootstrap:run({Framework}, TextReporter)
end

return runFrameworkTests