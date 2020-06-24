return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

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
