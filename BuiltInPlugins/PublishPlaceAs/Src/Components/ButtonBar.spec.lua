return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local ButtonBar = require(Plugin.Src.Components.ButtonBar)

	it("should create and destroy with buttons without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ButtonBar = Roact.createElement(ButtonBar, {
				Buttons = {
					{ Name = "a name", },
					{ Name = "not a name", },
				},
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ButtonBar = Roact.createElement(ButtonBar, {
				Buttons = {},
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
