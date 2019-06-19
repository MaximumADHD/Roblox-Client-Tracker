return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Images = require(Plugin.Core.Util.Images)

	local AssetPreview = require(Plugin.Core.Components.Asset.Preview.AssetPreview)

	local function createTestAsset(container, name)
		local testModel = Instance.new("Model")
		local element = Roact.createElement(AssetPreview, {
			previewModel = testModel,

			assetName = "Pine Tree",

			robux = "1000",
			robuxColor = Color3.fromRGB(86, 201, 140),
			robuxImage = Images.RODUX_GREEN,

			assetLikes = "1,325",
			likeImage = Images.LIKES_GREY,
			likesColor = Color3.fromRGB(193, 193, 193),

			leftContent = "Category Place Holder",
			rightContent = "Content Place Holder",

			previewWidth = 250,
			previewHeight = 400,

			zIndex = 0,
		})

		return Roact.mount(element, container or nil, name or "")
	end

	itSKIP("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end