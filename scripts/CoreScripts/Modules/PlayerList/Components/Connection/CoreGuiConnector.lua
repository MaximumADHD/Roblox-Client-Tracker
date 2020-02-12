local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local UserGameSettings = UserSettings():GetService("UserGameSettings")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local BlockedStatusChangedEvent = BlockingUtility:GetBlockedStatusChangedEvent()

local Components = script.Parent.Parent
local PlayerList = Components.Parent

-- Remove with FFlagPlayerListPerformanceImprovements
local SetPlayerListEnabled = require(PlayerList.Actions.SetPlayerListEnabled)
local SetPerformanceStatsVisible = require(PlayerList.Actions.SetPerformanceStatsVisible)
local SetPlayerIsBlocked = require(PlayerList.Actions.SetPlayerIsBlocked)

local FFlagPlayerListPerformanceImprovements = require(RobloxGui.Modules.Flags.FFlagPlayerListPerformanceImprovements)
local FFlagPlayerListInitalizePerformanceStatsVisible = game:DefineFastFlag("PlayerListInitalizePerformanceStatsVisible", false)

local EventConnection = require(script.Parent.EventConnection)

local CoreGuiConnector

if FFlagPlayerListPerformanceImprovements then
	CoreGuiConnector = Roact.PureComponent:extend("CoreGuiConnector")

	if FFlagPlayerListInitalizePerformanceStatsVisible then
		function CoreGuiConnector:didMount()
			self.props.setPerformanceStatsVisible(UserGameSettings.PerformanceStatsVisible)
		end
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
else
	function CoreGuiConnector(props)
		-- TODO: Clean this up when Fragments are released.
		return Roact.createElement("Folder", {}, {
			CoreGuiChangedConnection = Roact.createElement(EventConnection, {
				event = StarterGui.CoreGuiChangedSignal,
				callback = function(coreGuiType, enabled)
					if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.PlayerList then
						props.setPlayerListEnabled(enabled)
					end
				end,
			}),

			PerformanceStatsChangedConnection = Roact.createElement(EventConnection, {
				event = UserGameSettings.PerformanceStatsVisibleChanged,
				callback = function(visible)
					props.setPerformanceStatsVisible(visible)
				end,
			}),

			BlockedStatusChangedConnection = Roact.createElement(EventConnection, {
				event = BlockedStatusChangedEvent,
				callback = function(userId, isBlocked)
					local player = Players:GetPlayerByUserId(userId)
					if player then
						props.setPlayerIsBlocked(player, isBlocked)
					end
				end,
			}),
		})
	end
end

local function mapDispatchToProps(dispatch)
	return {
		setPerformanceStatsVisible = function(value)
			return dispatch(SetPerformanceStatsVisible(value))
		end,

		setPlayerListEnabled = (not FFlagPlayerListPerformanceImprovements) and function(value)
			return dispatch(SetPlayerListEnabled(value))
		end or nil,

		setPlayerIsBlocked = function(player, isBlocked)
			return dispatch(SetPlayerIsBlocked(player, isBlocked))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(CoreGuiConnector)