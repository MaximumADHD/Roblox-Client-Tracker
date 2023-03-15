local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local React = require(Packages.React)
local GlobalNavOptionTooltip = require(script.Parent.GlobalNavOptionTooltip)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(Packages.Dev.JestGlobals)
local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
local mockStyle = UnitTestHelpers.mockStyle
local render = ReactTestingLibrary.render
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("GlobalNavOptionTooltip", function()
	it("should display the provided text", function()
		local label = "test"
		local renderResult =
			render(mockStyle(React.createElement(GlobalNavOptionTooltip, { label = label, xOffset = 0, yOffset = 0 })))
		local element = renderResult.getByText(label)
		expect(element).toHaveProperty("Name", "TextLabel")
	end)

	it("should display at the appropriate position", function()
		local xOffset = 10
		local yOffset = 15
		local renderResult = render(
			mockStyle(
				React.createElement(GlobalNavOptionTooltip, { label = "test", xOffset = xOffset, yOffset = yOffset })
			)
		)
		local element = (renderResult.container :: GuiObject):FindFirstChild("Frame", true)
		expect(element).toHaveProperty("Position", UDim2.fromOffset(xOffset, yOffset))
	end)
end)
