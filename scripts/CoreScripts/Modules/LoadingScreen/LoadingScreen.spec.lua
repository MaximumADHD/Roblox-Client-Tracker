return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)

	local LoadingScreenReducer = require(script.Parent.Reducers.LoadingScreenReducer)
	local LoadingScreen = require(script.Parent.LoadingScreen)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(LoadingScreenReducer, {}, {
				Rodux.thunkMiddleware,
			}),
		}, {
			LoadingScreen = Roact.createElement(LoadingScreen,{
				placeId = 0,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end