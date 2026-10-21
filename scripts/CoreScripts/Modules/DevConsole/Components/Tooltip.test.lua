local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local Tooltip = require(script.Parent.Tooltip)

it("should create and destroy without errors", function()
	local element = Roact.createElement(Tooltip, {
		text = "This is a tooltip",
		pos = UDim2.fromOffset(0, 0),
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
