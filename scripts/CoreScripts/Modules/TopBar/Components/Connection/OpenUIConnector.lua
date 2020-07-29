local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local TopBar = Components.Parent

local SetBackpackOpen = require(TopBar.Actions.SetBackpackOpen)
local SetEmotesOpen = require(TopBar.Actions.SetEmotesOpen)
local SetLeaderboardOpen = require(TopBar.Actions.SetLeaderboardOpen)
local SetEmotesEnabled = require(TopBar.Actions.SetEmotesEnabled)

local EventConnection = require(TopBar.Parent.Common.EventConnection)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local BackpackModule = require(RobloxGui.Modules.BackpackScript)
local EmotesMenuMaster = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)

local OpenUIConnector = Roact.PureComponent:extend("OpenUIConnector")

OpenUIConnector.validateProps = t.strictInterface({
	setBackpackOpen = t.callback,
	setEmotesOpen = t.callback,
	setLeaderboardOpen = t.callback,

	setEmotesEnabled = t.callback,
})

function OpenUIConnector:didMount()
	self.props.setLeaderboardOpen(PlayerListMaster:GetSetVisible())

	self.props.setBackpackOpen(BackpackModule.IsOpen)
	self.props.setEmotesOpen(EmotesMenuMaster:isOpen())
	self.props.setEmotesEnabled(EmotesMenuMaster.MenuIsVisible)
end

function OpenUIConnector:render()
	local leaderboardEvent = PlayerListMaster:GetSetVisibleChangedEvent()

	return Roact.createFragment({
		LeaderboardOpenChangedConnection = Roact.createElement(EventConnection, {
			event = leaderboardEvent.Event,
			callback = function(open)
				self.props.setLeaderboardOpen(open)
			end,
		}),

		BackpackOpenChangedConnection = Roact.createElement(EventConnection, {
			event = BackpackModule.StateChanged.Event,
			callback = function(open)
				self.props.setBackpackOpen(open)
			end,
		}),

		EmotesOpenChangedConnection = Roact.createElement(EventConnection, {
			event = EmotesMenuMaster.EmotesMenuToggled.Event,
			callback = function(open)
				self.props.setEmotesOpen(open)
			end,
		}),

		EmotesEnabledChangedConnection = Roact.createElement(EventConnection, {
			event = EmotesMenuMaster.MenuVisibilityChanged.Event,
			callback = function(enabled)
				self.props.setEmotesEnabled(enabled)
			end,
		}),
	})
end

local function mapDispatchToProps(dispatch)
	return {
		setBackpackOpen = function(open)
			return dispatch(SetBackpackOpen(open))
		end,

		setEmotesOpen = function(open)
			return dispatch(SetEmotesOpen(open))
		end,

		setLeaderboardOpen = function(open)
			return dispatch(SetLeaderboardOpen(open))
		end,

		setEmotesEnabled = function(enabled)
			return dispatch(SetEmotesEnabled(enabled))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(OpenUIConnector)