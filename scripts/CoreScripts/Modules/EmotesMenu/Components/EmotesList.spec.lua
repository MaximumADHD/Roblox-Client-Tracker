return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)

	local EmotesModules = script.Parent.Parent
	local EmotesMenuReducer = require(EmotesModules.Reducers.EmotesMenuReducer)
	local EmotesList = require(script.Parent.EmotesList)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(EmotesMenuReducer, {}, {
				Rodux.thunkMiddleware,
			}),
		}, {
			EmotesList = Roact.createElement(EmotesList),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end