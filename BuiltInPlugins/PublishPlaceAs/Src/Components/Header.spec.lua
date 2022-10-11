return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local Header = require(Plugin.Src.Components.Header)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			Header = Roact.createElement(Header, {}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
