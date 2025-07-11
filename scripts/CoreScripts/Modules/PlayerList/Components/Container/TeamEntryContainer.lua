local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local PlayerList = script.Parent.Parent.Parent

local React = require(CorePackages.Packages.React)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local GameTranslator = require(RobloxGui.Modules.GameTranslator)

local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local TeamEntryView = require(PlayerList.Components.PresentationCommon.TeamEntryView)

type TeamEntryViewProps = TeamEntryView.TeamEntryViewProps

type LeaderboardStore = LeaderboardStore.LeaderboardStore
type GameStatList = LeaderboardStore.GameStatList
type StatList = LeaderboardStore.StatList
type TeamEntry = LeaderboardStore.TeamEntry
type TeamId = LeaderboardStore.TeamId
type TeamList = LeaderboardStore.TeamList

export type TeamEntryContainerProps = {
	-- Layout options
	size: UDim2,
	entrySizeX: number,
	layoutOrder: number?,

	-- Store data
	teamData: TeamEntry,

	-- Device type
	isSmallTouchDevice: boolean?,
	isDirectionalPreferred: boolean?,
 }

local function TeamEntryContainer(props: TeamEntryContainerProps)
	local leaderboardStore: LeaderboardStore = useLeaderboardStore() :: LeaderboardStore

	local gameStats: GameStatList = leaderboardStore.getGameStatsList()
	local teamStats: StatList = props.teamData.stats

	local teamName: React.Binding<string> = SignalsReact.useSignalBinding(function(scope)
		return GameTranslator:TranslateGameText(CoreGui, props.teamData.name(scope))
	end)
	-- TODO: Replace with binding (APPEXP-2920)
	local teamColor: Color3 = SignalsReact.useSignalState(props.teamData.color)
	local gameStatsCount: number = SignalsReact.useSignalState(gameStats.getCount)
	local teamStatsCount: number = SignalsReact.useSignalState(teamStats.getCount)

	return React.createElement(TeamEntryView, {
		teamName = teamName,
		teamColor = teamColor,
		gameStatsCount = gameStatsCount,
		teamStatsCount = teamStatsCount,
		gameStats = gameStats,
		teamStats = teamStats,

		size = props.size,
		entrySizeX = props.entrySizeX,
		layoutOrder = props.layoutOrder,
		isSmallTouchDevice = props.isSmallTouchDevice,
		isDirectionalPreferred = props.isDirectionalPreferred,
	})
end

return React.memo(TeamEntryContainer)
