local CorePackages = game:GetService("CorePackages")
local PlayerList = script.Parent.Parent.Parent

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local createSignalMap = LeaderboardStore.createSignalMap
local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local TitleBarView = require(PlayerList.Components.PresentationCommon.TitleBarView)

type LeaderboardStore = LeaderboardStore.LeaderboardStore

local function TitleViewContainer(props)
	local leaderboardStore: LeaderboardStore? = useLeaderboardStore() :: any?
	local gameStats = if leaderboardStore then leaderboardStore.getGameStatsList() else createSignalMap()

	local mergedProps = Cryo.Dictionary.join(props, {
		gameStats = gameStats,
	})

	return React.createElement(TitleBarView, mergedProps)
end

return React.memo(TitleViewContainer)
