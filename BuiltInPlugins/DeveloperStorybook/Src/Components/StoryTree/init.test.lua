local Main = script.Parent.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local StoryTree = require(script.Parent)
local MockWrap = require(Main.Src.Resources.MockWrap)

local ReactTestingLibrary = require(Main.Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("StoryTree", function()
	it("should render correctly", function()
		local result = render(MockWrap(Roact.createElement(StoryTree)))
		expect(result.container:FindFirstChild("Element", true)).never.toBeNil()
	end)
end)
