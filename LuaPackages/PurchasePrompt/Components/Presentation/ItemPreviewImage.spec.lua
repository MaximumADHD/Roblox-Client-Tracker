return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local UnitTestContainer = require(script.Parent.Parent.Parent.Test.UnitTestContainer)

	local ItemPreviewImage = require(script.Parent.ItemPreviewImage)

	ItemPreviewImage = ItemPreviewImage.getUnconnected()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(ItemPreviewImage, {
				layoutOrder = 1,
				imageUrl = "",
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end