local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local React = require(Packages.React)
local GlobalNavOption = require(script.Parent.GlobalNavOption)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(Packages.Dev.JestGlobals)
local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
local mockStyle = UnitTestHelpers.mockStyle
local render = ReactTestingLibrary.render
local fireEvent = ReactTestingLibrary.fireEvent
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

describe("GlobalNavOption", function()
	it("should call the onActivated callback when clicked", function()
		local onActivated = jest.fn()
		local renderResult =
			render(mockStyle(React.createElement(GlobalNavOption, { icon = "", onActivated = onActivated })))
		local element = (renderResult.container :: GuiObject):FindFirstChild("ImageButton", true)
		fireEvent.click(element)
		expect(onActivated).toHaveBeenCalled()
	end)

	it("should display the appropriate image", function()
		local icon = "rbxassetid://test"
		local renderResult =
			render(mockStyle(React.createElement(GlobalNavOption, { icon = icon, onActivated = function() end })))
		-- Note: Usually in TestingLibrary one would find an image by it's alt text, we don't have that here
		-- so we're querying like this instead.
		local element = (renderResult.container :: GuiObject):FindFirstChild("ImageLabel", true)
		expect(element).toHaveProperty("Image", icon)
	end)
end)
