return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local InspectAndBuyFolder = script.Parent.Parent
	local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)

	local AvatarViewport = require(script.Parent.AvatarViewport)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestContainer, nil, {
			Roact.createElement(AvatarViewport, {})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end