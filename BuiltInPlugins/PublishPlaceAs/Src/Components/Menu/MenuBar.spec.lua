return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local MenuBar = require(Plugin.Src.Components.Menu.MenuBar)

	it("should create and destroy with entires without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			MenuBar = Roact.createElement(MenuBar, {
				Entries = { "a name", "not a name" },
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			MenuBar = Roact.createElement(MenuBar, {
				Entries = {},
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
