return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local ScreenPublishFail = require(Plugin.Src.Components.ScreenPublishFail)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenPublishFail = Roact.createElement(ScreenPublishFail, {
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
    end)
    
    it("should create and destroy with existing publish place failed without errors", function()
		local initial = {
			PublishedPlace = {
				publishInfo = {
                    id = 12,
					name = "yeet",
					parentGameName = "yote",
                    parentGameId = 13,
				}
			}
		}
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = initial,
		}, {
			ScreenPublishFail = Roact.createElement(ScreenPublishFail),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
    end)
    
    it("should create and destroy with new published place failed without errors", function()
		local initial = {
			PublishedPlace = {
				publishInfo = {
                    id = 12,
					name = "yeet",
					parentGameName = "yote",
                    parentGameId = 0,
				    settings = {name = "yeet", description = "yeet", genre = "yeet", playableDevices = { Computer = true, } },
				}
			}
		}
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = initial,
		}, {
			ScreenPublishFail = Roact.createElement(ScreenPublishFail),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end