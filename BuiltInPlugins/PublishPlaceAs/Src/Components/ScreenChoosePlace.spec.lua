return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local ScreenChoosePlace = require(Plugin.Src.Components.ScreenChoosePlace)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenChoosePlace = Roact.createElement(ScreenChoosePlace, {
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy with places without errors", function()
		 local initial = {
			 ExistingGame = {
				 placeInfo = {
					 places = {
						 {name = "Def not a place!"},
						 {name = "Place 2"},
					 },
					 nextPageCursor = "024891203183",
				 }
			 }
		 }
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = initial,
		}, {
			ScreenChoosePlace = Roact.createElement(ScreenChoosePlace),
		})
		 local instance = Roact.mount(mockServiceWrapper)
		 Roact.unmount(instance)
	end)
end
