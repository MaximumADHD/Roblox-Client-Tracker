return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local InspectAndBuyFolder = script.Parent.Parent
	local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)

	local AssetCard = require(script.Parent.AssetCard)

	local assetInfoProp = {
		assetId = "1",
		name = "mock",
	}

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestContainer, nil, {
			Roact.createElement(AssetCard, {
				assetInfo = assetInfoProp,
				assetCardSizeX = 10,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end