local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local UserGameSettings = UserSettings():GetService("UserGameSettings")

local BlockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility)
local BlockedStatusChangedEvent = BlockingUtility:GetBlockedStatusChangedEvent()

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local SetPerformanceStatsVisible = require(PlayerList.Actions.SetPerformanceStatsVisible)
local SetPlayerIsBlocked = require(PlayerList.Actions.SetPlayerIsBlocked)

local EventConnection = require(script.Parent.EventConnection)

local CoreGuiConnector = Roact.PureComponent:extend("CoreGuiConnector")

function CoreGuiConnector:didMount()
	self.props.setPerformanceStatsVisible(UserGameSettings.PerformanceStatsVisible)
end

function CoreGuiConnector:render()
	return Roact.createFragment({
		PerformanceStatsChangedConnection = Roact.createElement(EventConnection, {
			event = UserGameSettings.PerformanceStatsVisibleChanged,
			callback = function(visible)
				self.props.setPerformanceStatsVisible(visible)
			end,
		}),

		BlockedStatusChangedConnection = Roact.createElement(EventConnection, {
			event = BlockedStatusChangedEvent,
			callback = function(userId, isBlocked)
				local player = Players:GetPlayerByUserId(userId)
				if player then
					self.props.setPlayerIsBlocked(player, isBlocked)
				end
			end,
		}),
	})
end

local function mapDispatchToProps(dispatch)
	return {
		setPerformanceStatsVisible = function(value)
			return dispatch(SetPerformanceStatsVisible(value))
		end,

		setPlayerIsBlocked = function(player, isBlocked)
			return dispatch(SetPlayerIsBlocked(player, isBlocked))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(CoreGuiConnector)
