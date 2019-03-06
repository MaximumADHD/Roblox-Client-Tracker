local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local SetPlayerFriendStatus = require(PlayerList.Actions.SetPlayerFriendStatus)
local SetPlayerFollowRelationship = require(PlayerList.Actions.SetPlayerFollowRelationship)

local EventConnection = require(script.Parent.EventConnection)

-- We do this to surpress warnings when a client is slow to load the game.
-- We only wait 5 minutes because we want warnings/errors if the event actually doesn't exist.
local FollowRelationshipChanged = RobloxReplicatedStorage:WaitForChild("FollowRelationshipChanged", 300)

local function SocialConnector(props)
	-- TODO: Clean this up when Fragments are released.
	return Roact.createElement("Folder", {}, {
		FriendStatusChangedConnection = Roact.createElement(EventConnection, {
			event = Players.LocalPlayer.FriendStatusChanged,
			callback = function(player, friendStatus)
				props.setPlayerFriendStatus(player, friendStatus)
			end,
		}),

		FollowRelationshipChangedConnection = Roact.createElement(EventConnection, {
			event = FollowRelationshipChanged.OnClientEvent,
			callback = function(followingInfo)
				for userIdStr, relationship in pairs(followingInfo) do
					local player = Players:GetPlayerByUserId(tonumber(userIdStr))
					if player then
						local isFollower = relationship.IsMutual or relationship.IsFollower
						local isFollowing = relationship.IsMutual or relationship.IsFollowing
						props.setPlayerFollowRelationship(player, isFollower, isFollowing)
					end
				end
			end,
		}),
	})
end

local function mapDispatchToProps(dispatch)
	return {
		setPlayerFriendStatus = function(player, friendStatus)
			return dispatch(SetPlayerFriendStatus(player, friendStatus))
		end,

		setPlayerFollowRelationship = function(player, isFollower, isFollowing)
			return dispatch(SetPlayerFollowRelationship(player, isFollower, isFollowing))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(SocialConnector)