return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)

	local PlayerList = script.Parent.Parent.Parent
	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local AddGameStat = require(PlayerList.Actions.AddGameStat)

	local TopBarLeaderstats = require(script.Parent.TopBarLeaderstats)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(Reducer)
		store:dispatch(AddGameStat("test", true, 0))

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(false, false)
			}, {
				TopBarLeaderstats = Roact.createElement(TopBarLeaderstats),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end