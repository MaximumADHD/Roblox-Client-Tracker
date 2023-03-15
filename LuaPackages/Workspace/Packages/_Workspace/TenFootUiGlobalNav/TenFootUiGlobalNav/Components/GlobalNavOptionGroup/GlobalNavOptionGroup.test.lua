--!nonstrict
local GuiService = game:GetService("GuiService")
local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local React = require(Packages.React)
local GlobalNavOptionGroup = require(script.Parent.GlobalNavOptionGroup)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(Packages.Dev.JestGlobals)
local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
local mockStyle = UnitTestHelpers.mockStyle
local render = ReactTestingLibrary.render
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("GlobalNavOptionGroup", function()
	it("should show the appropriate amount of options given a list of items", function()
		local items = {
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
		local renderResult = render(mockStyle(React.createElement(GlobalNavOptionGroup, { items = items })))
		local optionsChildren = (renderResult.container :: GuiObject):FindFirstChild("Options", true):GetChildren()
		-- Note that the child count is items + 1 here because there is also a Layout component within
		expect(#optionsChildren).toBe(#items + 1)
	end)

	it.each({
		{ idx = 1 },
		{ idx = 2 },
		{ idx = 3 },
	})("should display the appropriate label when an option is selected", function(args)
		local idx = args.idx
		local items = {
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
		local renderResult = render(mockStyle(React.createElement(GlobalNavOptionGroup, { items = items })))
		local targetText = items[idx].label

		local selectionTargetName = targetText .. "-" .. idx
		local selectionTarget = (renderResult.container :: GuiObject):FindFirstChild(
			selectionTargetName,
			true
		) :: GuiObject
		GuiService.SelectedCoreObject = selectionTarget

		local element = renderResult.getByText(targetText)
		expect(element).toBeDefined()
	end)
end)
