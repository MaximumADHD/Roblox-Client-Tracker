return function()
	local Players = game:GetService("Players")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)
	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)
	local Actions = PlayerList.Actions
	local SetTenFootInterface = require(Actions.SetTenFootInterface)

	local PlayerIcon = require(script.Parent.PlayerIcon)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(false)
			}, {
				PlayerIcon = Roact.createElement(PlayerIcon, {
					player = Players.LocalPlayer,
					layoutOrder = 1,

					playerIconInfo = {
						isPlaceOwner = false,
						avatarIcon = nil,
						specialGroupIcon = nil,
					},

					playerRelationship = {
						isBlocked = false,
						friendStatus = Enum.FriendStatus.FriendRequestReceived,
						isFollowing = false,
						isFollower = false,
					},
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})
		store:dispatch(SetTenFootInterface(true))

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(true)
			}, {
				PlayerIcon = Roact.createElement(PlayerIcon, {
					player = Players.LocalPlayer,
					layoutOrder = 1,

					playerIconInfo = {
						isPlaceOwner = false,
						avatarIcon = nil,
						specialGroupIcon = nil,
					},

					playerRelationship = {
						isBlocked = false,
						friendStatus = Enum.FriendStatus.Unknown,
						isFollowing = false,
						isFollower = false,
					},
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end