local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerEntry = require(script.Parent.PlayerEntry)
local TeamEntry = require(script.Parent.TeamEntry)

local FAKE_NEUTRAL_TEAM = Instance.new("Team")

local PlayerScrollList = Roact.Component:extend("PlayerScrollList")

local function getTeamScores(gameStats, players, playerStats, team)
	local teamScores = {}
	for _, gameStat in ipairs(gameStats) do
		for _, player in ipairs(players) do
			if player.Team == team then
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
	for i, team in ipairs(teams) do
		sortedTeams[i] = {
			team = team,
			originalPos = i,
		}
	end
	if showNeutralTeam then
		sortedTeams[#sortedTeams + 1] = {
			team = FAKE_NEUTRAL_TEAM,
			originalPos = #sortedTeams + 1,
		}
	end

	table.sort(sortedTeams, function(a, b)
		if primaryStat ~= nil then
			local statA = teamScores[a.team][primaryStat]
			local statB = teamScores[b.team][primaryStat]
			if statA ~= statB then
				if statA == nil then
					return false
				elseif statB == nil then
					return true
				end
				-- Much less complicated than sorting player scores as these
				-- are always numbers
				return statA > statB
			end
		end
		if a.team == FAKE_NEUTRAL_TEAM then
			return false
		elseif b.team == FAKE_NEUTRAL_TEAM then
			return true
		end
		return a.originalPos < b.originalPos
	end)

	return sortedTeams
end

local function buildSortedPlayers(primaryStat, players, playerStats)
	local sortedPlayers = {unpack(players)}

	table.sort(sortedPlayers, function(playerA, playerB)
		if not primaryStat then
			return playerA.Name:upper() < playerB.Name:upper()
		end

		local statA = playerStats[playerA.UserId][primaryStat]
		local statB = playerStats[playerB.UserId][primaryStat]
		if statA == statB then
			return playerA.Name:upper() < playerB.Name:upper()
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

function PlayerScrollList:render()
	return WithLayoutValues(function(layoutValues)
		local entryPadding = layoutValues.EntryPadding
		local teamEntrySizeY = layoutValues.TeamEntrySizeY
		local playerEntrySizeY = layoutValues.PlayerEntrySizeY

		local childElements = {}

		childElements["Layout"] = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, entryPadding)
		})

		local canvasSizeY = 0

		local primaryStat = self.props.gameStats[1] and self.props.gameStats[1].name or nil
		local sortedPlayers = buildSortedPlayers(primaryStat, self.props.players, self.props.playerStats)
		if not  Cryo.isEmpty(self.props.teams) then
			local teamScores = buildTeamScores(
				self.props.gameStats, self.props.teams, self.props.players, self.props.playerStats
			)
			local showNeutralTeam = shouldShowNeutralTeam(self.props.players)
			local sortedTeams = buildSortedTeams(teamScores, primaryStat, self.props.teams, showNeutralTeam)

			local addedEntriesCount = 0
			for i, sortedTeam in ipairs(sortedTeams) do
				childElements[i] = Roact.createElement(TeamEntry, {
					teamName = self.props.teamNames[sortedTeam.team],
					teamColor = self.props.teamColors[sortedTeam.team],
					layoutOrder = addedEntriesCount + 1,
					leaderstats = teamScores[sortedTeam.team],
					gameStats = self.props.gameStats,
				})
				addedEntriesCount = addedEntriesCount + 1
				canvasSizeY = canvasSizeY + teamEntrySizeY + entryPadding

				for _, player in ipairs(sortedPlayers) do
					local userId = player.UserId
					local inTeam = self.props.playerTeam[userId] == sortedTeam.team
					if sortedTeam.team == FAKE_NEUTRAL_TEAM then
						inTeam = self.props.playerTeam[userId] == nil
					end
					if inTeam then
						childElements[player.Name] = Roact.createElement(PlayerEntry, {
							player = player,
							playerStats = self.props.playerStats[userId],
							playerIconInfo = self.props.playerIconInfo[userId],
							playerRelationship = self.props.playerRelationship[userId],
							layoutOrder = addedEntriesCount + 1,
							titlePlayerEntry = false,
							gameStats = self.props.gameStats,
						})

						canvasSizeY = canvasSizeY + playerEntrySizeY + entryPadding
						addedEntriesCount = addedEntriesCount + 1
					end
				end
			end
		else
			for i, player in ipairs(sortedPlayers) do
				childElements[player.Name] = Roact.createElement(PlayerEntry, {
					player = player,
					playerStats = self.props.playerStats[player.UserId],
					playerIconInfo = self.props.playerIconInfo[player.UserId],
					playerRelationship = self.props.playerRelationship[player.UserId],
					layoutOrder = i,
					titlePlayerEntry = false,
					gameStats = self.props.gameStats,
				})
				canvasSizeY = canvasSizeY + playerEntrySizeY + entryPadding
			end
		end

		return Roact.createElement("ScrollingFrame", {
			Position = layoutValues.PlayerScrollListPosition,
			Size = layoutValues.PlayerScrollListSize,
			CanvasSize = UDim2.new(0, 0, 0, canvasSizeY),
			BackgroundTransparency = 1,
			ScrollBarImageColor3 = layoutValues.ScrollImageColor,
			ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
			BorderSizePixel = 0,
			ScrollBarThickness = 6,
			ScrollingEnabled = true,
			Selectable = false,
		}, childElements)
	end)
end

local function mapStateToProps(state)
	return {
		displayOptions = state.displayOptions,
		gameStats = state.gameStats,

		teams = state.teams,
		teamNames = state.teamNames,
		teamColors = state.teamColors,

		players = state.players,
		playerStats = state.playerStats,
		playerIconInfo = state.playerIconInfo,
		playerRelationship = state.playerRelationship,
		playerTeam = state.playerTeam,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(PlayerScrollList)