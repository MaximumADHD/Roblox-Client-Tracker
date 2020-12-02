return function()
	local Root = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact

	local UnitTestContainer = require(Root.Test.UnitTestContainer)

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
