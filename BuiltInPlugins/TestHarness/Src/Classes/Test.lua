--[[
	Encapsulation of a test's data.

	Test.new(testScript: Instance, pathToTest: string) provided
	by Dash requires a module script instance and optionally a path to the scripts'
	location, returning an instance of Test

	Test.mock() creates a mock instance for testing

	Test:getID() returns testID generated at instance creation

	Test:getScript returns testScript set at createLogInfo
	Test:getPath returns path set at createLogInfo

	Test:updateTest
	TODO: RIDE-3502, Watch test scripts for changes and update the TestCache when they happen

	Test:run
	TODO: RIDE-3508 Time tests and display the result
]]
local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local Dash = Framework.Dash
local class = Dash.class

local Test = class("Test", function (name: string, testScript, pathToTest: string)
	assert(name, "name must not be nil")
	assert(testScript, "testScript must not be nil")
	return {
		Name = name,
		Source = testScript,
		Path = pathToTest or "",
		Dirty = false,
	}
end)

function Test.mock(name: string)
	return Test.new(name, Instance.new("ModuleScript"))
end

function Test:updateTest()

end

function Test:run()

end

return Test
