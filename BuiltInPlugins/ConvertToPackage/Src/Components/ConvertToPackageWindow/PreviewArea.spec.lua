return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local PreviewArea = require(Plugin.Src.Components.ConvertToPackageWindow.PreviewArea)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			PreviewArea = Roact.createElement(PreviewArea, {
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with showViewport set to true", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			PreviewArea = Roact.createElement(PreviewArea, {
				ShowViewport = true
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end