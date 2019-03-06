return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)

	local Components = script.Parent.Parent
	local PlayerList = Components.Parent
	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)

	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local PlayerScrollList = require(script.Parent.PlayerScrollList)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(Reducer)
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(false, false)
			}, {
				PlayerScrollList = Roact.createElement(PlayerScrollList),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(Reducer)
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(true, false)
			}, {
				PlayerScrollList = Roact.createElement(PlayerScrollList),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end