--[[
	Runs tests for all components, or if a specific component is provided,
	runs tests for only the provided component.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local TestEZ = require(Plugin.Packages.TestEZ)
local TestBootstrap = TestEZ.TestBootstrap
local TextReporter = TestEZ.TextReporter

return function(component)
	return function(store)
		local src
		if component then
			src = require(component)
		else
			src = Plugin.Packages.Framework
		end

		Roact.setGlobalConfig({
			propValidation = true,
		})

		TestBootstrap:run(src, TextReporter)
	end
end
