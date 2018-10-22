return function()
	local Plugin = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local InfoBanner = require(Plugin.Core.Components.InfoBanner)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			InfoBanner = Roact.createElement(InfoBanner),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
