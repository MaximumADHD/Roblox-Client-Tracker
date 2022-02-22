return function()
	local Plugin = script.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local DropShadow = require(Plugin.Core.Components.DropShadow)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			DropShadow = Roact.createElement(DropShadow),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
