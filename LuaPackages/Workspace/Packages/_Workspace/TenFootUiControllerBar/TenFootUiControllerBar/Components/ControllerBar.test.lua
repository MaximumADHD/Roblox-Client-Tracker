local Packages = script:FindFirstAncestor("TenFootUiControllerBar").Parent
local React = require(Packages.React)
local ControllerBar = require(script.Parent.ControllerBar)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(Packages.Dev.JestGlobals)
local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
local mockStyle = UnitTestHelpers.mockStyle
local render = ReactTestingLibrary.render
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("ControllerBar", function()
	it("should pass through items to be displayed", function()
		local items = {
			{
				icon = "",
				text = "item 1",
			},
			{
				icon = "",
				text = "item 2",
			},
			{
				icon = "",
				text = "item 3",
			},
		}

		local renderResult = render(mockStyle(React.createElement(ControllerBar, {
			items = items,
		})))

		for _, item in ipairs(items) do
			expect(renderResult.getByText(item.text)).toBeDefined()
		end
	end)
end)
