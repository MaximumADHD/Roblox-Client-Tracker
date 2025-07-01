local CorePackages = game:GetService("CorePackages")
local Teams = game:GetService("Teams")

local PlayerList = script.Parent.Parent.Parent

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local createSignalMap = LeaderboardStore.createSignalMap

local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local TeamEntryView = require(PlayerList.Components.PresentationCommon.TeamEntryView)

type SignalMap<K, V> = LeaderboardStore.SignalMap<K, V>
type TeamId = LeaderboardStore.TeamId
type LeaderboardStore = LeaderboardStore.LeaderboardStore
type TeamEntry = LeaderboardStore.TeamEntry

local function TeamEntryContainer(props)
	local teamId: TeamId = React.useMemo(function()
		-- TODO: Team Instance should be passed in as a prop
		if props.teamName == nil then
			return LeaderboardStore.SpecialNeutralTeamName :: any
		end

		local teams = Teams:GetTeams()
		for _, team in teams do
			if team.Name == props.teamName then
				return team
			end
		end
		return LeaderboardStore.SpecialNeutralTeamName :: any
	end, { props.teamName })

	local leaderboardStore: LeaderboardStore? = useLeaderboardStore() :: any?
	local gameStats = if leaderboardStore then leaderboardStore.getGameStatsList() else createSignalMap()
	local teamList: SignalMap<TeamId, TeamEntry> = if leaderboardStore then leaderboardStore.getTeamList() else createSignalMap()
	local teamData = if teamList then teamList.getData(teamId, false) else nil
	local teamStats = if teamData then teamData.stats else createSignalMap()

	---- TODO: Add Leaderboard Signal connections
	local mergedProps = Cryo.Dictionary.join(props, {
		leaderstats = Cryo.None,
		gameStatNames = Cryo.None,

		-- Data from LeaderboardStore
		gameStats = gameStats,
		teamStats = teamStats,
	})
	return React.createElement(TeamEntryView, mergedProps :: any)
end

return React.memo(TeamEntryContainer)
