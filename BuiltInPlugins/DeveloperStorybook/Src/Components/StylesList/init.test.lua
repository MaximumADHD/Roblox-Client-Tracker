local Main = script.Parent.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local StylesList = require(script.Parent)
local MockWrap = require(Main.Src.Resources.MockWrap)

local ReactTestingLibrary = require(Main.Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("StylesList", function()
	it("should render correctly when there are no non-default styles", function()
		local result = render(MockWrap(Roact.createElement(StylesList, {
			Header = "Test",
			ComponentName = "TextLabel",
			Styles = {
				Default = {},
			},
		})))

		expect(result.container:FindFirstChild("Element", true).Content).never.toBeNil()
	end)

	it("should render correctly when there are styles", function()
		local result = render(MockWrap(Roact.createElement(StylesList, {
			Header = "Test",
			-- This can be any DeveloperFramework component with a '&' style override
			ComponentName = "Button",
			Styles = {
				Default = {},
				Item = {},
			},
		})))
		expect(result.container:FindFirstChild("Element", true).Content.Styles).never.toBeNil()
	end)
end)
