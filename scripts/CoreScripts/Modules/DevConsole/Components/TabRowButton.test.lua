local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local TabRowButton = require(script.Parent.TabRowButton)

it("should create and destroy without errors", function()
	local element = Roact.createElement(TabRowButton, {
		textWidth = 0,
		padding = 0,
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
