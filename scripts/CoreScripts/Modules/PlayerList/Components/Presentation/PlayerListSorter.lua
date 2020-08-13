local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)
local t = require(CorePackages.Packages.t)

local Presentation = script.Parent
local PlayerListDisplay = require(Presentation.PlayerListDisplay)

local PlayerList = Presentation.Parent.Parent
local FAKE_NEUTRAL_TEAM = require(PlayerList.GetFakeNeutralTeam)

local isDisplayNameEnabled = require(PlayerList.isDisplayNameEnabled)

local FFlagLeaderboardDontWaitOnChinaPolicy = require(PlayerList.Flags.FFlagLeaderboardDontWaitOnChinaPolicy)

local PlayerListSorter = Roact.PureComponent:extend("PlayerListSorter")

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
			if game:GetEngineFeature("TeamChildOrderProperty") then
				sortedTeams[#sortedTeams + 1] = {
					team = team,
					originalPos = team.ChildOrder,
				}
			else
				sortedTeams[#sortedTeams + 1] = {
					team = team,
					originalPos = i,
				}
			end
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

local function buildSortedPlayers(primaryStat, players, playerStats, subjectToChinaPolicies)
	local sortedPlayers = {unpack(players)}

	local displayNameEnabled = isDisplayNameEnabled(subjectToChinaPolicies)

	table.sort(sortedPlayers, function(playerA, playerB)
		if not primaryStat then
			if displayNameEnabled then
				return playerA.DisplayName:upper() < playerB.DisplayName:upper()
			else
				return playerA.Name:upper() < playerB.Name:upper()
			end
		end

		local statA = playerStats[playerA.UserId][primaryStat]
		local statB = playerStats[playerB.UserId][primaryStat]
		if statA == statB then
			if displayNameEnabled then
				return playerA.DisplayName:upper() < playerB.DisplayName:upper()
			else
				return playerA.Name:upper() < playerB.Name:upper()
			end
		elseif statA == nil then
			return false
		elseif statB == nil then
			return true
		end
		statA = tonumber(statA) or statA
		statB = tonumber(statB) or statB
		if type(statA) ~= type(statB) then
			statA = tostring(statA)
			statB = tostring(statB)
		end
		return statA > statB
	end)

	return sortedPlayers
end

PlayerListSorter.validateProps = t.strictInterface({
	screenSizeY = t.integer,
	entrySize = t.integer,

	players = t.array(t.instanceIsA("Player")),
	teams = t.array(t.instanceIsA("Team")),
	playerTeam = t.map(t.integer, t.instanceIsA("Team")),

	playerStats = t.map(t.integer, t.map(t.string, t.any)),
	gameStats = t.array(t.strictInterface({
		name = t.string,
		text = t.string,
		addId = t.integer,
		isPrimary = t.boolean,
		priority = t.number,
	})),

	subjectToChinaPolicies = FFlagLeaderboardDontWaitOnChinaPolicy and t.boolean or nil,
})

function PlayerListSorter:render()
	local primaryStat = self.props.gameStats[1] and self.props.gameStats[1].name or nil
	local sortedPlayers = buildSortedPlayers(
		primaryStat, self.props.players, self.props.playerStats, self.props.subjectToChinaPolicies)

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

local function mapStateToProps(state)
	return {
		gameStats = state.gameStats,

		teams = state.teams,
		players = state.players,

		playerStats = state.playerStats,
		playerTeam = state.playerTeam,

		subjectToChinaPolicies = FFlagLeaderboardDontWaitOnChinaPolicy and state.displayOptions.subjectToChinaPolicies or nil,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(PlayerListSorter)