local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent

local SetFriendStatus = require(InGameMenu.Actions.SetFriendStatus)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local FriendStatusConnector = Roact.PureComponent:extend("FriendStatusConnector")

function FriendStatusConnector:init()
	self.state = {
		localPlayer = Players.LocalPlayer,
	}
end

function FriendStatusConnector:render()
	local connections = {
		PlayerAdded = Roact.createElement(ExternalEventConnection, {
			event = Players.PlayerAdded,
			callback = function(player)
				if player == Players.LocalPlayer then
					self:setState({
						localPlayer = player,
					})
				else
					self.props.setFriendStatus(player.UserId, Enum.FriendStatus.Unknown)
				end
			end,
		}),

		PlayerRemoving = Roact.createElement(ExternalEventConnection, {
			event = Players.PlayerRemoving,
			callback = function(player)
				self.props.setFriendStatus(player.UserId, nil)
			end,
		}),
	}

	if self.state.localPlayer then
		connections.FriendStatusChanged = Roact.createElement(ExternalEventConnection, {
			event = Players.LocalPlayer.FriendStatusChanged,
			callback = function(player, friendStatus)
				self.props.setFriendStatus(player.UserId, friendStatus)
			end,
		})
	end

	return Roact.createFragment(connections)
end


return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		setFriendStatus = function(player, friendStatus)
			return dispatch(SetFriendStatus(player, friendStatus))
		end,
	}
end)(FriendStatusConnector)