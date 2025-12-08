local Main = script.Parent.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local InfoPanel = require(script.Parent)
local MockWrap = require(Main.Src.Resources.MockWrap)

local ReactTestingLibrary = require(Main.Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("InfoPanel", function()
	it("should render correctly", function()
		local result = render(MockWrap(Roact.createElement(InfoPanel)))
		expect(result.container:FindFirstChild("Element", true).Prompt).never.toBeNil()
	end)
end)
