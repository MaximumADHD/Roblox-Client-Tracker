local Main = script.Parent.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local makeInstanceHost = require(script.Parent)
local MockWrap = require(Main.Src.Resources.MockWrap)

local ReactTestingLibrary = require(Main.Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("InstanceHost", function()
	it("should create and destroy without errors", function()
		local InstanceHost = makeInstanceHost(Roact)
		local result = render(MockWrap(Roact.createElement(InstanceHost)))
		expect(result.container:FindFirstChild("Element", true)).never.toBeNil()
	end)
end)
