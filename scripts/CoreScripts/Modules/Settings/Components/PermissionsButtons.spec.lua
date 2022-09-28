local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local PermissionsButtons = require(script.Parent.PermissionsButtons)

return function()
	it("should mount and unmount without errors", function()
		local element = Roact.createElement(PermissionsButtons, {
			isPortrait = true,
			isSmallTouchScreen = true,
			isTenFootInterface = false,
			ZIndex = -1,
			LayoutOrder = 1,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end