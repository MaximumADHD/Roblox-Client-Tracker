return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local PlatformSelect = require(Plugin.Src.Components.PlatformSelect)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			PlatformSelect = Roact.createElement(PlatformSelect, {}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
