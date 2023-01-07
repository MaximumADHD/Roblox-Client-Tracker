--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)
local t = require(CorePackages.Packages.t)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local Presentation = script.Parent
local PlayerListDisplay = require(Presentation.PlayerListDisplay)

local PlayerList = Presentation.Parent.Parent
local FAKE_NEUTRAL_TEAM = require(PlayerList.GetFakeNeutralTeam)
local PlayerSorting = require(PlayerList.PlayerSorting)

local PlayerListSorter = Roact.PureComponent:extend("PlayerListSorter")

function PlayerListSorter:init()
	self.state = {
		sortedPlayers = {},
		playerKeys = {},
	}
end

local function playerInTeam(player, team)
	if team == nil then
		return player.Team == nil
	end
	return player.TeamColor == team.TeamColor
end

local function getTeamScores(gameStats, players, playerStats, team)
	local teamScores = {}
	for _, gameStat in ipairs(gameStats) do
		for _, player in ipairs(players) do
			if playerInTeam(player, team) then
				local statValue = playerStats[player.UserId][gameStat.name]
				if type(statValue) == "number" then
					teamScores[gameStat.name] = teamScores[gameStat.name] or 0
					teamScores[gameStat.name] = teamScores[gameStat.name] + statValue
				end
			end
		end
	end
	return teamScores
end

local function buildTeamScores(gameStats, teams, players, playerStats)
	local teamScoreTable = {}
	for _, team in ipairs(teams) do
		teamScoreTable[team] = getTeamScores(gameStats, players, playerStats, team)
	end
	teamScoreTable[FAKE_NEUTRAL_TEAM] = getTeamScores(gameStats, players, playerStats, nil)
	return teamScoreTable
end

local function shouldShowNeutralTeam(players)
	for _, player in ipairs(players) do
		if player.Team == nil then
			return true
		end
	end
	return false
end

local function buildSortedTeams(teamScores, primaryStat, teams, showNeutralTeam)
	local sortedTeams = {}
	-- Only one team of each team color should be displayed
	local usedTeamColors = {}
	for i, team in ipairs(teams) do
		if usedTeamColors[team.TeamColor.Number] == nil then
			usedTeamColors[team.TeamColor.Number] = true
			sortedTeams[#sortedTeams + 1] = {
				team = team,
				originalPos = team.ChildOrder,
			}
		end
	end
	if showNeutralTeam then
		sortedTeams[#sortedTeams + 1] = {
			team = FAKE_NEUTRAL_TEAM,
			originalPos = #sortedTeams + 1,
		}
	end

	table.sort(sortedTeams, function(a, b)
		if a.team == FAKE_NEUTRAL_TEAM then
			return false
		elseif b.team == FAKE_NEUTRAL_TEAM then
			return true
		end
		return a.originalPos < b.originalPos
	end)

	return sortedTeams
end

PlayerListSorter.validateProps = t.strictInterface({
	screenSizeY = t.integer,
	entrySize = t.integer,

	players = t.array(playerInterface),
	teams = t.array(t.instanceIsA("Team")),
	playerTeam = t.map(t.integer, t.instanceIsA("Team")),

	playerKeys = t.strictInterface({
		keys = t.map(playerInterface, t.strictInterface({
			name = t.string,
			stat = t.union(t.number, t.string, t.none),
		})),
		primaryStat = t.optional(t.string),
	}),

	playerStats = t.map(t.integer, t.map(t.string, t.any)),
	gameStats = t.array(t.strictInterface({
		name = t.string,
		text = t.string,
		addId = t.integer,
		isPrimary = t.boolean,
		priority = t.number,
	})),
})

function PlayerListSorter:render()
	local primaryStat = self.props.gameStats[1] and self.props.gameStats[1].name or nil
	local sortedPlayers = self.state.sortedPlayers

	if not Cryo.isEmpty(self.props.teams) then
		local teamScores = buildTeamScores(
			self.props.gameStats, self.props.teams, self.props.players, self.props.playerStats
		)
		local showNeutralTeam = shouldShowNeutralTeam(self.props.players)
		local sortedTeams = buildSortedTeams(teamScores, primaryStat, self.props.teams, showNeutralTeam)

		local teamColorToPlayerMap = {}
		for _, player in ipairs(sortedPlayers) do
			if player.TeamColor and self.props.playerTeam[player.UserId] ~= nil then
				if teamColorToPlayerMap[player.TeamColor.Number] then
					table.insert(teamColorToPlayerMap[player.TeamColor.Number], player)
				else
					teamColorToPlayerMap[player.TeamColor.Number] = {player}
				end
			end
		end

		return Roact.createElement(PlayerListDisplay, {
			sortedPlayers = sortedPlayers,

			sortedTeams = sortedTeams,
			teamColorToPlayerMap = teamColorToPlayerMap,
			teamScores = teamScores,

			screenSizeY = self.props.screenSizeY,
			entrySize = self.props.entrySize,
		})
	end

	return Roact.createElement(PlayerListDisplay, {
		sortedPlayers = sortedPlayers,

		sortedTeams = nil,
		teamColorToPlayerMap = nil,
		teamScores = nil,

		screenSizeY = self.props.screenSizeY,
		entrySize = self.props.entrySize,
	})
end

PlayerListSorter.getDerivedStateFromProps = PlayerSorting.getDerivedStateFromProps

local function mapStateToProps(state)
	return {
		gameStats = state.gameStats,

		teams = state.teams,
		players = state.players,
		playerKeys = state.playerKeys,

		playerStats = state.playerStats,
		playerTeam = state.playerTeam,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(PlayerListSorter)
