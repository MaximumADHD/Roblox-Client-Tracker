return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local PublishAsset = require(Plugin.Src.Components.ConvertToPackageWindow.PublishAsset)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			PublishAsset = Roact.createElement(PublishAsset, {
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when showing ownership field", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			PublishAsset = Roact.createElement(PublishAsset, {
				displayOwnership = true
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end