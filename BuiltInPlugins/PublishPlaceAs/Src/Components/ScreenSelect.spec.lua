return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local ScreenSelect = require(Plugin.Src.Components.ScreenSelect)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenSelect = Roact.createElement(ScreenSelect, {}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
