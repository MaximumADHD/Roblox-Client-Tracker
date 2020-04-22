local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local AddPlayer = require(PlayerList.Actions.AddPlayer)
local RemovePlayer = require(PlayerList.Actions.RemovePlayer)

local MakePlayerInfoRequests = require(PlayerList.Thunks.MakePlayerInfoRequests)

local EventConnection = require(script.Parent.EventConnection)

local PlayerServiceConnector = Roact.PureComponent:extend("PlayerServiceConnector")

function PlayerServiceConnector:didMount()
	local players = Players:GetPlayers()
	for _, player in ipairs(players) do
		self.props.addPlayer(player)
		self.props.makePlayerInfoRequests(player)
	end
end

function PlayerServiceConnector:render()
	return Roact.createFragment({
		PlayerAddedConnection = Roact.createElement(EventConnection, {
			event = Players.PlayerAdded,
			callback = function(player)
				self.props.addPlayer(player)
				self.props.makePlayerInfoRequests(player)
			end,
		}),

		PlayerRemovingConnection = Roact.createElement(EventConnection, {
			event = Players.PlayerRemoving,
			callback = function(player)
				self.props.removePlayer(player)
			end,
		}),
	})
end

function PlayerServiceConnector:willUnmount()
	local players = Players:GetPlayers()
	for _, player in ipairs(players) do
		self.props.removePlayer(player)
	end
end

local function mapDispatchToProps(dispatch)
	return {
		addPlayer = function(player)
			return dispatch(AddPlayer(player))
		end,

		makePlayerInfoRequests = function(player)
			return dispatch(MakePlayerInfoRequests(player))
		end,

		removePlayer = function(player)
			return dispatch(RemovePlayer(player))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(PlayerServiceConnector)