return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local ScreenChooseGame = require(Plugin.Src.Components.ScreenChooseGame)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenChooseGame = Roact.createElement(ScreenChooseGame, {
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy with games without errors", function()
		local initial = {
			ExistingGame = {
				gameInfo = {
					games = {
						{name = "Game 1"},
						{name = "Not a game!"},
					},
					nextPageCursor = "024891203183",
				}
			}
		}
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = initial,
		}, {
			ScreenChooseGame = Roact.createElement(ScreenChooseGame),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
