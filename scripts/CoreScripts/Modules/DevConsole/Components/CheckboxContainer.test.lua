local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local CheckboxContainer = require(script.Parent.CheckboxContainer)

it("should create and destroy without errors", function()
	local element = Roact.createElement(CheckboxContainer, {
		orderedCheckboxState = {},
		frameWidth = 0,
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
