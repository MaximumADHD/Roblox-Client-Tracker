return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local InspectAndBuyFolder = script.Parent.Parent
	local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)

	local Notification = require(script.Parent.Notification)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestContainer, nil, {
			Roact.createElement(Notification, {
				noticeKey = "InGame.InspectMenu.Description.SingleBundleNotice",
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end