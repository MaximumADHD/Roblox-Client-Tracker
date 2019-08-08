return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

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
