local Main = script.Parent.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local Window = require(script.Parent)
local MockWrap = require(Main.Src.Resources.MockWrap)

local ReactTestingLibrary = require(Main.Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("Window", function()
	it("should create and destroy Window without errors", function()
		local result = render(MockWrap(Roact.createElement(Window, {})))
		expect(result.container:FindFirstChild("Element", true)).never.toBeNil()
	end)
end)
