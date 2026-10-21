--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local DropDown = require(script.Parent.DropDown)

it("should create and destroy without errors", function()
	local element = Roact.createElement(DropDown, {
		dropDownList = {},
		dropDownTargetParent = Instance.new("ScreenGui"),
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

-- The multi-select branch (onToggle-driven, summaryText label) is gated behind
-- FFlagDevConsoleDropdownMultiSelect. When the flag is off the same props must fall
-- back to the original single-select behavior, where the button shows the selected item.
describe("multi-select flag gating", function()
	local dropDownList = { "Alpha", "Beta" }
	local summaryText = "2 selected"

	it("shows summaryText when enabled, selected item when disabled", function()
		local container = Instance.new("ScreenGui")
		local instance = Roact.mount(
			Roact.createElement(DropDown, {
				dropDownList = dropDownList,
				dropDownTargetParent = container,
				selectedIndex = 1,
				selectedSet = { [1] = true, [2] = true },
				onToggle = function() end,
				summaryText = summaryText,
			}),
			container
		)
		local button = container:FindFirstChildWhichIsA("TextButton")
		local buttonText = button and button.Text
		Roact.unmount(instance)

		if game:GetFastFlag("DevConsoleDropdownMultiSelect") then
			expect(buttonText).toBe(summaryText)
		else
			expect(buttonText).toBe(dropDownList[1])
		end
	end)
end)
