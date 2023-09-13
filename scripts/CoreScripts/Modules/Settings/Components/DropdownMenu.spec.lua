local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local DropdownMenu = require(script.Parent.DropdownMenu)

return function()
	it("should mount and unmount without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			DropdownMenu = Roact.createElement(DropdownMenu, {
				buttonSize = UDim2.new(1, 0, 1, 0),
				dropdownList = {},
				selectedIndex = 1,
				onSelection = function() end,
				layoutOrder = 1,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end