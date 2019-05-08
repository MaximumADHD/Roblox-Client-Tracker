return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local InspectAndBuyFolder = script.Parent.Parent
	local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)

	local PlayerNameLabel = require(script.Parent.PlayerNameLabel)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestContainer, nil, {
			Roact.createElement(PlayerNameLabel, {})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end