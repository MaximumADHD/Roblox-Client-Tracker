local Main = script.Parent.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local Controls = require(script.Parent)
local MockWrap = require(Main.Src.Resources.MockWrap)

local ReactTestingLibrary = require(Main.Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("Controls", function()
	it("should render correctly", function()
		local result = render(MockWrap(Roact.createElement(Controls, {
			LayoutOrder = 1,
			Controls = {
				simpleToggle = true,
			},
			ControlState = {
				simpleToggle = true,
			},
			SetControls = function() end,
		})))
		expect(result.container:FindFirstChild("simpleToggle", true)).never.toBeNil()
	end)
end)
