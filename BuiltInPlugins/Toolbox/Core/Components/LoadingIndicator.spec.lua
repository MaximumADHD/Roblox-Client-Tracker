return function()
	local Plugin = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local LoadingIndicator = require(Plugin.Core.Components.LoadingIndicator)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			LoadingIndicator = Roact.createElement(LoadingIndicator),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
