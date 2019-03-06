return function()
	local CorePackages = game:GetService("CorePackages")
	local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)

	local PlayerList = script.Parent.Parent
	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)

	local Connection = PlayerList.Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local Actions = PlayerList.Actions
	local SetTenFootInterface = require(Actions.SetTenFootInterface)

	--Create dummy events in RobloxReplicatedStorage:
	local NewPlayerGroupDetails = Instance.new("RemoteEvent")
	NewPlayerGroupDetails.Name = "NewPlayerGroupDetails"
	NewPlayerGroupDetails.Parent = RobloxReplicatedStorage

	local FollowRelationshipChanged = Instance.new("RemoteEvent")
	FollowRelationshipChanged.Name = "FollowRelationshipChanged"
	FollowRelationshipChanged.Parent = RobloxReplicatedStorage

	local PlayerListApp = require(script.Parent.PlayerListApp)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(Reducer)
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(false, false)
			}, {
				PlayerListApp = Roact.createElement(PlayerListApp),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local store = Rodux.Store.new(Reducer)
		store:dispatch(SetTenFootInterface(true))

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(true, false)
			}, {
				PlayerListApp = Roact.createElement(PlayerListApp),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end