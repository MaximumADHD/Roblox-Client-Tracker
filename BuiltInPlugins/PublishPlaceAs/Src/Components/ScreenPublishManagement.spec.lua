return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local ScreenPublishManagement = require(Plugin.Src.Components.ScreenPublishManagement)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenPublishManagement = Roact.createElement(ScreenPublishManagement, {}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy with place without errors", function()
		local initial = {
			PublishedPlace = {
				publishInfo = {
					id = 7884012802,
					name = "Test",
					parentGameId = 2,
					parentGameName = "TestParent",
				},
			},
			ExistingGame = {
				placeInfo = {
					places = {},
					parentGame = {
						universeId = "2",
					},
				},
				gameConfiguration = {
					optInRegions = {},
				},
			},
		}
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = initial,
		}, {
			ScreenPublishManagement = Roact.createElement(ScreenPublishManagement),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
