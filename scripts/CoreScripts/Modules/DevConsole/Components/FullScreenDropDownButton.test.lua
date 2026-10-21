local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local FullScreenDropDownButton = require(script.Parent.FullScreenDropDownButton)

it("should create and destroy without errors", function()
	local element = Roact.createElement(FullScreenDropDownButton, {
		dropDownList = {},
		portalTarget = Instance.new("ScreenGui"),
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
