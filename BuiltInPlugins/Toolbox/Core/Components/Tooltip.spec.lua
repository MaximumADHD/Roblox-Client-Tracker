return function()
	local Plugin = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Tooltip = require(Plugin.Core.Components.Tooltip)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Tooltip = Roact.createElement(Tooltip),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
