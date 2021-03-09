return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)

	local EmotesModules = script.Parent.Parent
	local EmotesMenuReducer = require(EmotesModules.Reducers.EmotesMenuReducer)
	local EmotesMenu = require(script.Parent.EmotesMenu)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(EmotesMenuReducer, {}, {
				Rodux.thunkMiddleware,
			}),
		}, {
			EmotesMenu = Roact.createElement(EmotesMenu),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end