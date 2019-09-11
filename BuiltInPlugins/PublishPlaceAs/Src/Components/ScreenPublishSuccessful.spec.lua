return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local ScreenCreateNewGame = require(Plugin.Src.Components.ScreenPublishSuccessful)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenPublishSuccessful = Roact.createElement(ScreenPublishSuccessful, {
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
    end)
    
    it("should create and destroy with published place without errors", function()
		local initial = {
			PublishedPlace = {
				publishInfo = {
                    id = 12,
                    name = "yeet",
                    parentGameName = "yote",
				}
			}
		}
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = initial,
		}, {
			ScreenPublishSuccessful = Roact.createElement(ScreenPublishSuccessful),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end