--[[
	Runs tests for all components, or if a specific component is provided,
	runs tests for only the provided component.
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local TestEZ = require(Plugin.Packages.Dev.TestEZ)
local TestBootstrap = TestEZ.TestBootstrap
local TextReporter = TestEZ.TextReporter

return function(component)
	return function(store)
		local src
		if component then
			src = {component}
			TestBootstrap:run(src, TextReporter)
		else
			Framework.TestHelpers.runFrameworkTests(TestEZ)
		end
	end
end
