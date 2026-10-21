local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local LabeledCheckbox = require(script.Parent.LabeledCheckbox)

it("should create and destroy without errors", function()
	local element = Roact.createElement(LabeledCheckbox, {
		name = "",
		fontSize = 0,
		font = 0,
		frameHeight = 0,
		checkboxHeight = 0,
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
