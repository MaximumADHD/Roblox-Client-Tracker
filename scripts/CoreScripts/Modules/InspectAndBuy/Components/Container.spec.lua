return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local InspectAndBuyFolder = script.Parent.Parent
	local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)

	local Container = require(script.Parent.Container)

	local mockModel = require(InspectAndBuyFolder.Test.getMockModel)()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestContainer, nil, {
			Roact.createElement(Container, {
				humanoidDescription = Instance.new("HumanoidDescription"),
				inspectingModel = mockModel,
				localPlayerModel = mockModel,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end