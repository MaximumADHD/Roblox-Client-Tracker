local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local GlobalNav = require(script.Parent.GlobalNav)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(Packages.Dev.JestGlobals)
local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
local mockStyle = UnitTestHelpers.mockStyle
local render = ReactTestingLibrary.render
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("GlobalNav", function()
	it("should show the correct number of controls", function()
		local tabGroupItems = {
			{
				title = "tab 1",
				icon = "rbxassetid://icon1",
				onActivated = function() end,
				showRoundedBackground = false,
			},
			{
				title = "tab 2",
				icon = "rbxassetid://icon2",
				onActivated = function() end,
				showRoundedBackground = false,
			},
			{
				title = "tab 3",
				icon = "rbxassetid://icon3",
				onActivated = function() end,
				showRoundedBackground = false,
			},
		}
		local optionGroupItems = {
			{
				onActivated = function() end,
				icon = "rbxassetid://icon1",
				label = "option 1",
			},
			{
				onActivated = function() end,
				icon = "rbxassetid://icon2",
				label = "option 2",
			},
			{
				onActivated = function() end,
				icon = "rbxassetid://icon3",
				label = "option 3",
			},
		}
		local renderResult = render(mockStyle(React.createElement(GlobalNav, {
			tabGroupProps = {
				items = tabGroupItems,
			},
			optionGroupProps = {
				items = optionGroupItems,
			},
		})))

		local descendants = (renderResult.container :: GuiObject):GetDescendants()
		local buttons = Cryo.List.filter(descendants, function(descendant)
			return descendant:IsA("ImageButton")
		end)

		expect(#buttons).toBe(#tabGroupItems + #optionGroupItems)
	end)
end)
