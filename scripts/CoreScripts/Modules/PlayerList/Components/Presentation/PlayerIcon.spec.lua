return function()
	local Players = game:GetService("Players")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local PlayerIcon = require(script.Parent.PlayerIcon)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LayoutValuesProvider, {
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
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local element = Roact.createElement(LayoutValuesProvider, {
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
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end