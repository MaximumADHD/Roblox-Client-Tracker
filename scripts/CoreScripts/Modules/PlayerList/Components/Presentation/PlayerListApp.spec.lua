return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)

	local PlayerList = script.Parent.Parent.Parent
	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local Actions = PlayerList.Actions
	local SetTenFootInterface = require(Actions.SetTenFootInterface)


	local TestProviders = require(PlayerList.TestProviders)

	local PlayerListApp = require(script.Parent.PlayerListApp)


	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestProviders, {
			store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})
		}, {
			PlayerListApp = Roact.createElement(PlayerListApp, {
				setLayerCollectorEnabled = function() end,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	describe("PlayerListTenFoot", function()
		it("should create and destroy without errors tenfoot", function()
			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})
			store:dispatch(SetTenFootInterface(true))

			local element = Roact.createElement(TestProviders, {
				store = store,
				layoutValues = CreateLayoutValues(true)
			}, {
				PlayerListApp = Roact.createElement(PlayerListApp, {
					setLayerCollectorEnabled = function() end,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
