return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local DropdownItemsList = require(Plugin.Core.Components.DropdownItemsList)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			DropdownItemsList = Roact.createElement(DropdownItemsList, {
				left = 100,
				top = 100,
				dropDownWidth = 100,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
