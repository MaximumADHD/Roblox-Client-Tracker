local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local ClientServerButton = require(script.Parent.ClientServerButton)

it("should create and destroy without errors", function()
	local element = Roact.createElement(ClientServerButton)
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
