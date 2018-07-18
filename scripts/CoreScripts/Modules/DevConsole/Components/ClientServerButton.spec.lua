return function()
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ClientServerButton = require(script.Parent.ClientServerButton)

it("should create and destroy without errors", function()
	local element = Roact.createElement(ClientServerButton
		)
	local instance = Roact.mount(element)
	Roact.unmount(instance)
	end)
end