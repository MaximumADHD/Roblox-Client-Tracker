return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SearchOptionsButton = require(Plugin.Core.Components.SearchOptions.SearchOptionsButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Button = Roact.createElement(SearchOptionsButton),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
