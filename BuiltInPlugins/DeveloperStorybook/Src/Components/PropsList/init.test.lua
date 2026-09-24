local Main = script.Parent.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local PropsList = require(script.Parent)
local MockWrap = require(Main.Src.Resources.MockWrap)

local ReactTestingLibrary = require(Main.Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("PropsList", function()
	it("should render the props in the list", function()
		local result = render(MockWrap(Roact.createElement(PropsList, {
			Header = "Test",
			Props = {
				{
					Type = "number",
					Name = "TestProp",
					Comment = "Test",
				},
			},
		})))
		expect(result.container:FindFirstChild("Element", true).Content.TestProp.Comment).never.toBeNil()
	end)
end)
