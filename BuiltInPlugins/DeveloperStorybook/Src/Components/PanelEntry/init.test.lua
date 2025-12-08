local Main = script.Parent.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local PanelEntry = require(script.Parent)
local MockWrap = require(Main.Src.Resources.MockWrap)

local ReactTestingLibrary = require(Main.Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("PanelEntry", function()
	it("should render a name and description", function()
		local result = render(MockWrap(Roact.createElement(PanelEntry, {
			Header = "Test",
			Description = "Test",
		})))
		expect(result.container:FindFirstChild("Element", true).Name).never.toBeNil()
		expect(result.container:FindFirstChild("Element", true).Description).never.toBeNil()
	end)
end)
