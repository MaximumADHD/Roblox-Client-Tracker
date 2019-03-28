return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Preview = Plugin.Core.Components.Asset.Preview
	local PreviewController = require(Preview.PreviewController)

	local PreviewModelGetter = require(Plugin.Core.Util.PreviewModelGetter)
	local AssetType = require(Plugin.Core.Types.AssetType)

	-- PineTree
	-- rbxassetid://183435411
	local function createTestAsset(container, name)
		local assetId = 183435411
		local currentPreview, previewModel = PreviewModelGetter(assetId)

		local element = Roact.createElement(PreviewController, {
			width = 40,

			currentPreview = currentPreview,
			previewModel = previewModel,
			assetPreviewType = AssetType.TYPES.ModelType,
			assetId = assetId,
			putTreeviewOnBottom = true,
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end