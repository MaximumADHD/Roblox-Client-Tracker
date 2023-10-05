return function()
	local Players = game:GetService("Players")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local PlayerList = script.Parent.Parent.Parent

	local TestProviders = require(PlayerList.TestProviders)
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
			avatarIcon = nil,
			specialGroupIcon = nil,
		}
	end

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestProviders, {}, {
			PlayerEntry = Roact.createElement(PlayerEntry, {
				player = Players.LocalPlayer,
				playerStats = {},
				playerIconInfo = getFakeIconInfo(),
				playerRelationship = getFakeRelationship(),
				entrySize = 50,
				titlePlayerEntry = false,
				gameStats = {},
				layoutOrder = 0,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local element = Roact.createElement(TestProviders, {
			layoutValues = CreateLayoutValues(true)
		}, {
			PlayerEntry = Roact.createElement(PlayerEntry, {
				player = Players.LocalPlayer,
				playerStats = {},
				playerIconInfo = getFakeIconInfo(),
				playerRelationship = getFakeRelationship(),
				entrySize = 150,
				titlePlayerEntry = true,
				gameStats = {},
				layoutOrder = 0,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
