local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local SetPlayerFriendStatus = require(PlayerList.Actions.SetPlayerFriendStatus)
local SetPlayerFollowRelationship = require(PlayerList.Actions.SetPlayerFollowRelationship)

local EventConnection = require(script.Parent.EventConnection)

local GetFFlagRemoveInGameFollowingEvents = require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameFollowingEvents)

local FollowRelationshipChanged
local GetFollowRelationships
if not GetFFlagRemoveInGameFollowingEvents() then
	-- We do this to surpress warnings when a client is slow to load the game.
	-- We only wait 5 minutes because we want warnings/errors if the event actually doesn't exist.
	FollowRelationshipChanged = RobloxReplicatedStorage:WaitForChild("FollowRelationshipChanged", 300)
	GetFollowRelationships = RobloxReplicatedStorage:WaitForChild("GetFollowRelationships", 300)
end

local SocialConnector = Roact.PureComponent:extend("SocialConnector")

function SocialConnector:didMount()
	self.mounted = true

	if not TenFootInterface:IsEnabled() and not GetFFlagRemoveInGameFollowingEvents() then
		coroutine.wrap(function()
			local followingInfo = GetFollowRelationships:InvokeServer()
			if self.mounted then
				for userIdStr, relationship in pairs(followingInfo) do
					local player = Players:GetPlayerByUserId(tonumber(userIdStr))
					if player then
						local isFollower = relationship.IsMutual or relationship.IsFollower
						local isFollowing = relationship.IsMutual or relationship.IsFollowing
						self.props.setPlayerFollowRelationship(player, isFollower, isFollowing)
					end
				end
			end
		end)()
	end
end

function SocialConnector:render()
	return Roact.createFragment({
		FriendStatusChangedConnection = Roact.createElement(EventConnection, {
			event = Players.LocalPlayer.FriendStatusChanged,
			callback = function(player, friendStatus)
				self.props.setPlayerFriendStatus(player, friendStatus)
			end,
		}),
		FollowRelationshipChangedConnection = (not GetFFlagRemoveInGameFollowingEvents()) and
			Roact.createElement(EventConnection, {
				event = FollowRelationshipChanged.OnClientEvent,
				callback = function(followingInfo)
					for userIdStr, relationship in pairs(followingInfo) do
						local player = Players:GetPlayerByUserId(tonumber(userIdStr))
						if player then
							local isFollower = relationship.IsMutual or relationship.IsFollower
							local isFollowing = relationship.IsMutual or relationship.IsFollowing
							self.props.setPlayerFollowRelationship(player, isFollower, isFollowing)
						end
					end
				end,
			}),
	})
end

function SocialConnector:willUnmount()
	self.mounted = false
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
