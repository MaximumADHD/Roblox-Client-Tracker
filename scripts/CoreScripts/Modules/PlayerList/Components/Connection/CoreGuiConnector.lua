local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local BlockedStatusChangedEvent = BlockingUtility:GetBlockedStatusChangedEvent()

local Components = script.Parent.Parent
local PlayerList = Components.Parent

-- Remove with FFlagPlayerListDontCreateUIWhenDisabled
local SetPlayerListEnabled = require(PlayerList.Actions.SetPlayerListEnabled)
local SetPerformanceStatsVisible = require(PlayerList.Actions.SetPerformanceStatsVisible)
local SetPlayerIsBlocked = require(PlayerList.Actions.SetPlayerIsBlocked)

local FFlagPlayerListDontCreateUIWhenDisabled = require(RobloxGui.Modules.Flags.FFlagPlayerListDontCreateUIWhenDisabled)

local EventConnection = require(script.Parent.EventConnection)

local function CoreGuiConnector(props)
	-- TODO: Clean this up when Fragments are released.
	return Roact.createElement("Folder", {}, {
		CoreGuiChangedConnection = (not FFlagPlayerListDontCreateUIWhenDisabled) and Roact.createElement(EventConnection, {
			event = StarterGui.CoreGuiChangedSignal,
			callback = function(coreGuiType, enabled)
				if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.PlayerList then
					props.setPlayerListEnabled(enabled)
				end
			end,
		}) or nil,

		PerformanceStatsChangedConnection = Roact.createElement(EventConnection, {
			event = GameSettings.PerformanceStatsVisibleChanged,
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

local function mapDispatchToProps(dispatch)
	return {
		setPerformanceStatsVisible = function(value)
			return dispatch(SetPerformanceStatsVisible(value))
		end,

		setPlayerListEnabled = (not FFlagPlayerListDontCreateUIWhenDisabled) and function(value)
			return dispatch(SetPlayerListEnabled(value))
		end or nil,

		setPlayerIsBlocked = function(player, isBlocked)
			return dispatch(SetPlayerIsBlocked(player, isBlocked))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(CoreGuiConnector)