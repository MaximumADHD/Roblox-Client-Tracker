return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local ModelPreview = require(Plugin.Core.Components.Asset.Preview.ModelPreview)

	local function createTestAsset(container, name)
		local testModel = Instance.new("Model")
		local camera = Instance.new("Camera")
		local element = Roact.createElement(ModelPreview, {}, {
			previewModel = testModel,
			modelPreviewCamera = camera,

			position = UDim2.new(1, 0, 1, 0),
			size = UDim2.new(1, 0, 1, 0),
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end