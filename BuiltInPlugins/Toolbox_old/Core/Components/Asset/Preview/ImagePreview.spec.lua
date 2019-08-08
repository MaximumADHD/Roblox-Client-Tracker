return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local ImagePreview = require(Plugin.Core.Components.Asset.Preview.ImagePreview)

	local function createTestAsset(container, name)
		local image = Instance.new("Image")
		local element = Roact.createElement(ImagePreview, {}, {
			imageContent = image,
			textContent = "ImagePreviewTest",
			position = UDim2.new(1, 0, 1, 0),
			size = UDim2.new(0, 100, 0, 20)
		})

		return Roact.mount(element, container or nil, name or "")
	end

	itSKIP("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end