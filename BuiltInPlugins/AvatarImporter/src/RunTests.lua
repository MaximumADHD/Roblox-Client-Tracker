local CorePackages = game:GetService("CorePackages")

local root = script.Parent.Parent

local TestEZ = require(CorePackages.TestEZ)
local TestBootstrap = TestEZ.TestBootstrap
local TextReporter = TestEZ.Reporters.TextReporter

return function()
	print("Running AvatarImporter tests")
	TestBootstrap:run({ root.src }, TextReporter)
end
