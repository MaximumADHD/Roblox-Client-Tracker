return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)

	local EmotesModules = script.Parent.Parent
	local EmotesMenuReducer = require(EmotesModules.Reducers.EmotesMenuReducer)
	local EmoteBubble = require(script.Parent.EmoteBubble)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(EmotesMenuReducer, {}, {
				Rodux.thunkMiddleware,
			}),
		}, {
			EmoteBubble = Roact.createElement(EmoteBubble, {
				emoteName = "Dance",
				emoteAssetId = 1,
				slotIndex = 1,
				scrollingFrameRef = Roact.createRef(),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when given no scrollingFrameRef or slotIndex", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(EmotesMenuReducer, {}, {
				Rodux.thunkMiddleware,
			}),
		}, {
			EmoteBubble = Roact.createElement(EmoteBubble, {
				emoteName = "Dance",
				emoteAssetId = 1,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end