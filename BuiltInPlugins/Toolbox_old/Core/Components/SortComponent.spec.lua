return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SortComponent = require(Plugin.Core.Components.SortComponent)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SortComponent = Roact.createElement(SortComponent),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
