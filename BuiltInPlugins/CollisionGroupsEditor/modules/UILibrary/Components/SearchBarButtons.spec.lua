return function()
	local Library = script.Parent.Parent
	local Roact = require(Library.Parent.Roact)

	local MockWrapper = require(Library.MockWrapper)

	local SearchBarButtons = require(Library.Components.SearchBar.SearchBarButtons)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchBarButtons = Roact.createElement(SearchBarButtons)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
