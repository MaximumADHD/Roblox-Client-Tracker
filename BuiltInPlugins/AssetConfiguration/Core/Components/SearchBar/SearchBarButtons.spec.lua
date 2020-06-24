return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SearchBarButtons = require(Plugin.Core.Components.SearchBar.SearchBarButtons)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchBarButtons = Roact.createElement(SearchBarButtons)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
