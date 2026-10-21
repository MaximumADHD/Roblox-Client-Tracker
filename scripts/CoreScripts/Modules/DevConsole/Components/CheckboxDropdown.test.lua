local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local CheckboxDropdown = require(script.Parent.CheckboxDropdown)

it("should create and destroy without errors", function()
	local element = Roact.createElement(CheckboxDropdown, {
		elementHeight = 0,
		numElements = 0,
		dropdownTargetGui = Instance.new("ScreenGui"),
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
