local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local FlashingDot = require(script.Parent.FlashingDotV2)

return function()
	it("should mount and unmount without errors", function()
		local element = Roact.createElement(FlashingDot)

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end