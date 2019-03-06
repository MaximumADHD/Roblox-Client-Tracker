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

	local PlayerEntry = require(script.Parent.PlayerEntry)

	local function getFakeRelationship()
		return {
			isBlocked = false,
			friendStatus = Enum.FriendStatus.FriendRequestSent,
			isFollowing = false,
			isFollower = false,
		}
	end

	local function getFakeIconInfo()
		return {
			isPlaceOwner = true,
			avatarIcon = "",
			specialGroupIcon = "",
		}
	end

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(false, false)
		}, {
			PlayerEntry = Roact.createElement(PlayerEntry, {
				player = Players.LocalPlayer,
				playerStats = {},
				playerIconInfo = getFakeIconInfo(),
				playerRelationship = getFakeRelationship(),
				titlePlayerEntry = false,
				gameStats = {},
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(true, false)
		}, {
			PlayerEntry = Roact.createElement(PlayerEntry, {
				player = Players.LocalPlayer,
				playerStats = {},
				playerIconInfo = getFakeIconInfo(),
				playerRelationship = getFakeRelationship(),
				titlePlayerEntry = true,
				gameStats = {},
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end