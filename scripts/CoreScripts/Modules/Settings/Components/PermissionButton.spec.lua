local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local PermissionButton = require(script.Parent.PermissionButton)

return function()
	it("should mount and unmount without errors", function()
		local element = Roact.createElement(PermissionButton, {
			LayoutOrder = 1,
			callback = function() end,
			image = {},
			useNewMenuTheme = false,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end