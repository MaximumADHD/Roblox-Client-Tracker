return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local PreviewLoading = require(Plugin.Core.Components.Asset.Preview.PreviewLoading)

	local function createTestAsset(container, name)
		local element = Roact.createElement(PreviewLoading)

		return Roact.mount(element, container or nil, name or "")
	end

	itSKIP("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end