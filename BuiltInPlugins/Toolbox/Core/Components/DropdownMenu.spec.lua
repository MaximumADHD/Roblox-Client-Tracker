return function()
	local Plugin = script.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local DropdownMenu = require(Plugin.Core.Components.DropdownMenu)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			DropdownMenu = Roact.createElement(DropdownMenu, {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(0, 100, 0, 20),
				selectedIndex = 1,
				items = {},
				onItemClicked = function() end,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
