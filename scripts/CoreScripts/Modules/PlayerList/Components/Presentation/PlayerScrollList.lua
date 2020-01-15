local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerEntry = require(script.Parent.PlayerEntry)
local TeamEntry = require(script.Parent.TeamEntry)
local PlayerDropDown = require(script.Parent.PlayerDropDown)
local TitleBar = require(script.Parent.TitleBar)

local FAKE_NEUTRAL_TEAM = Instance.new("Team")

local FFlagPlayerListDontSortTeamsByScore = game:DefineFastFlag("PlayerListDontSortTeamsByScore", false)
local FFlagPlayerListDontSinkTouchUnnecessarily = game:DefineFastFlag("PlayerListDontSinkTouchUnnecessarily", false)
local FFlagPlayerListDesignUpdate = settings():GetFFlag("PlayerListDesignUpdate")

local PlayerScrollList = Roact.Component:extend("PlayerScrollList")

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
				originalPos = i,
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
		if not FFlagPlayerListDontSortTeamsByScore then
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

function PlayerScrollList:init()
	self.scrollingFrameRef = Roact.createRef()
	self.firstPlayerRef = Roact.createRef()

	self.state = {
		containerSizeY = 100,
		scrollingFramePositionY = 0,
	}
end

function PlayerScrollList:calculateDropDownAbsPosition(dropDownPosition, playerEntrySizeY)
	local scrollingFrame = self.scrollingFrameRef.current
	if scrollingFrame then
		dropDownPosition = dropDownPosition - scrollingFrame.CanvasPosition.Y
		if dropDownPosition + playerEntrySizeY >= scrollingFrame.AbsoluteSize.Y then
			local offset = dropDownPosition + playerEntrySizeY - scrollingFrame.AbsoluteSize.Y
			return dropDownPosition - offset, Vector2.new(0, scrollingFrame.CanvasPosition.Y + offset)
		end
		return dropDownPosition, nil
	end
	return dropDownPosition, nil
end

function PlayerScrollList:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local entryPadding = layoutValues.EntryPadding
			local teamEntrySizeY = layoutValues.TeamEntrySizeY
			local playerEntrySizeY = layoutValues.PlayerEntrySizeY

			local childElements = {}

			childElements["Layout"] = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Padding = UDim.new(0, entryPadding)
			})

			local canvasSizeY = 0
			local dropDownPosition = 0

			local primaryStat = self.props.gameStats[1] and self.props.gameStats[1].name or nil
			local sortedPlayers = buildSortedPlayers(primaryStat, self.props.players, self.props.playerStats)
			if not Cryo.isEmpty(self.props.teams) then
				local teamScores = buildTeamScores(
					self.props.gameStats, self.props.teams, self.props.players, self.props.playerStats
				)
				local showNeutralTeam = shouldShowNeutralTeam(self.props.players)
				local sortedTeams = buildSortedTeams(teamScores, primaryStat, self.props.teams, showNeutralTeam)

				if FFlagPlayerListDesignUpdate then
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

					--hasDivider = not (addedPlayersCount == #sortedPlayers)
					local addedEntriesCount = 0
					local firstPlayer = true
					for i, sortedTeam in ipairs(sortedTeams) do
						childElements[i] = Roact.createElement(TeamEntry, {
							teamName = self.props.teamNames[sortedTeam.team],
							teamColor = self.props.teamColors[sortedTeam.team],
							layoutOrder = addedEntriesCount + 1,
							leaderstats = teamScores[sortedTeam.team],
							gameStats = self.props.gameStats,
							overrideEntrySize = self.props.overrideEntrySize,
						})
						addedEntriesCount = addedEntriesCount + 1
						canvasSizeY = canvasSizeY + teamEntrySizeY + entryPadding

						local teamPlayers
						if sortedTeam.team == FAKE_NEUTRAL_TEAM then
							teamPlayers = {}
							for _, player in ipairs(sortedPlayers) do
								if self.props.playerTeam[player.UserId] == nil then
									table.insert(teamPlayers, player)
								end
							end
						else
							teamPlayers = teamColorToPlayerMap[sortedTeam.team.TeamColor.Number] or {}
						end

						for j, player in ipairs(teamPlayers) do
							local userId = player.UserId
							childElements[player.Name] = Roact.createElement(PlayerEntry, {
								player = player,
								playerStats = self.props.playerStats[userId],
								playerIconInfo = self.props.playerIconInfo[userId],
								playerRelationship = self.props.playerRelationship[userId],
								layoutOrder = addedEntriesCount + 1,
								titlePlayerEntry = false,
								gameStats = self.props.gameStats,
								hasDivider = not (j == #teamPlayers),
								overrideEntrySize = self.props.overrideEntrySize,

								[Roact.Ref] = firstPlayer and self.firstPlayerRef or nil,
							})
							firstPlayer = false

							if player == self.props.dropDownPlayer then
								dropDownPosition = canvasSizeY
							end

							canvasSizeY = canvasSizeY + playerEntrySizeY + entryPadding
							addedEntriesCount = addedEntriesCount + 1
						end
					end
				else
					local addedEntriesCount = 0
					local firstPlayer = true
					for i, sortedTeam in ipairs(sortedTeams) do
						childElements[i] = Roact.createElement(TeamEntry, {
							teamName = self.props.teamNames[sortedTeam.team],
							teamColor = self.props.teamColors[sortedTeam.team],
							layoutOrder = addedEntriesCount + 1,
							leaderstats = teamScores[sortedTeam.team],
							gameStats = self.props.gameStats,
							overrideEntrySize = self.props.overrideEntrySize,
						})
						addedEntriesCount = addedEntriesCount + 1
						canvasSizeY = canvasSizeY + teamEntrySizeY + entryPadding

						for _, player in ipairs(sortedPlayers) do
							local userId = player.UserId
							local inTeam = player.TeamColor == sortedTeam.team.TeamColor
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
									overrideEntrySize = self.props.overrideEntrySize,

									[Roact.Ref] = firstPlayer and self.firstPlayerRef or nil,
								})
								firstPlayer = false

								if player == self.props.dropDownPlayer then
									dropDownPosition = canvasSizeY
								end

								canvasSizeY = canvasSizeY + playerEntrySizeY + entryPadding
								addedEntriesCount = addedEntriesCount + 1
							end
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
						hasDivider = i ~= #sortedPlayers,
						overrideEntrySize = self.props.overrideEntrySize,

						[Roact.Ref] = i == 1 and self.firstPlayerRef or nil,
					})

					if player == self.props.dropDownPlayer then
						dropDownPosition = canvasSizeY
					end

					canvasSizeY = canvasSizeY + playerEntrySizeY + entryPadding
				end
			end

			local absDropDownPosition, canvasPositionOverride = self:calculateDropDownAbsPosition(
				dropDownPosition, playerEntrySizeY)

			if FFlagPlayerListDesignUpdate then
				if layoutValues.IsTenFoot then
					return Roact.createElement("Frame", {
						Position = layoutValues.PlayerScrollListPosition,
						Size = layoutValues.PlayerScrollListSize,
						BackgroundTransparency = 1,
					}, {
						ScollingFrame = Roact.createElement("ScrollingFrame", {
							Position = UDim2.new(0, 0, 0, 0),
							Size = UDim2.new(1, 0, 1, 0),
							CanvasSize = UDim2.new(0, 0, 0, canvasSizeY),
							BackgroundTransparency = 1,
							ScrollBarImageColor3 = layoutValues.ScrollImageColor,
							ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
							BorderSizePixel = 0,
							ScrollBarThickness = 6,
							ScrollingEnabled = not self.props.dropDownVisible,
							Selectable = false,
							CanvasPosition = self.props.dropDownVisible and canvasPositionOverride or self.lastCanvasPosition,

							[Roact.Change.CanvasPosition] = function()
								if self.scrollingFrameRef.current then
									self.lastCanvasPosition = self.scrollingFrameRef.current.CanvasPosition
								end
							end,

							[Roact.Ref] = self.scrollingFrameRef,
						}, childElements),
					})
				else
					local scrollingFrameMaxSizeY = self.state.containerSizeY - 8
					if #self.props.gameStats > 0 then
						scrollingFrameMaxSizeY = scrollingFrameMaxSizeY - layoutValues.TitleBarSizeY
					end

					return Roact.createElement("Frame", {
						Position = layoutValues.PlayerScrollListPosition,
						Size = layoutValues.PlayerScrollListSize,
						BackgroundTransparency = 1,

						[Roact.Change.AbsoluteSize] = function(rbx)
							self:setState({
								containerSizeY = rbx.AbsoluteSize.Y,
							})
						end,
					}, {
						UIListLayout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Vertical,
							VerticalAlignment = Enum.VerticalAlignment.Top,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
						}),

						TopRoundedRect = Roact.createElement("ImageLabel", {
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							Image = "rbxasset://textures/ui/TopRoundedRect8px.png",
							ImageColor3 = style.Theme.BackgroundContrast.Color,
							ImageTransparency = layoutValues.OverrideBackgroundTransparency,
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = Rect.new(8, 8, 24, 16),
							SliceScale = 0.5,
							Size = UDim2.new(1, 0, 0, 4),
						}),

						TitleBar = #self.props.gameStats > 0 and Roact.createElement(TitleBar, {
							LayoutOrder = 2,
							gameStats = self.props.gameStats,
							Size = UDim2.new(1, 0, 0, layoutValues.TitleBarSizeY),
							overrideEntrySize = self.props.overrideEntrySize,
						}),

						ScrollingFrameContainer = Roact.createElement("Frame", {
							LayoutOrder = 3,
							Position = UDim2.new(0, 0, 0, 0),
							Size = UDim2.new(1, 0, 0, math.min(canvasSizeY, scrollingFrameMaxSizeY)),
							BackgroundColor3 = style.Theme.BackgroundContrast.Color,
							BackgroundTransparency = layoutValues.OverrideBackgroundTransparency,
							BorderSizePixel = 0,

							[Roact.Change.AbsolutePosition] = function(rbx)
								self:setState({
									scrollingFramePositionY = rbx.AbsolutePosition.Y,
								})
							end,
						}, {
							PlayerDropDown = Roact.createElement(PlayerDropDown, {
								positionY = absDropDownPosition,
								minPositionBoundY = -self.state.scrollingFramePositionY + layoutValues.DropDownScreenSidePadding,
								maxPositionBoundY = (self.props.screenSizeY -
									self.state.scrollingFramePositionY - layoutValues.DropDownScreenSidePadding),
							}),

							ScrollingFrameClippingFrame = Roact.createElement("Frame", {
								Size = UDim2.new(1, 0, 1, 0),
								BackgroundTransparency = 1,
								ClipsDescendants = true,
							}, {
								ScollingFrame = Roact.createElement("ScrollingFrame", {
									Size = UDim2.new(1, -layoutValues.ScrollBarOffset, 1, 0),
									CanvasSize = UDim2.new(0, 0, 0, canvasSizeY),
									BackgroundTransparency = 1,
									ScrollBarImageColor3 = layoutValues.ScrollImageColor,
									ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
									BorderSizePixel = 0,
									ScrollBarThickness = layoutValues.ScrollBarSize,
									VerticalScrollBarInset = Enum.ScrollBarInset.Always,
									ClipsDescendants = false,
									ScrollingEnabled = not self.props.dropDownVisible,
									Selectable = false,
									CanvasPosition = self.props.dropDownVisible and canvasPositionOverride or self.lastCanvasPosition,

									[Roact.Change.CanvasPosition] = function()
										if self.scrollingFrameRef.current then
											self.lastCanvasPosition = self.scrollingFrameRef.current.CanvasPosition
										end
									end,

									[Roact.Ref] = self.scrollingFrameRef,
								}, {
									OffsetUndoFrame = Roact.createElement("Frame", {
										Size = UDim2.new(1, layoutValues.ScrollBarOffset + layoutValues.ScrollBarSize, 0, canvasSizeY),
										BackgroundTransparency = 1,
									}, childElements)
								}),
							})
						}),

						BottomRoundedRect = Roact.createElement("ImageLabel", {
							LayoutOrder = 4,
							BackgroundTransparency = 1,
							Image = "rbxasset://textures/ui/BottomRoundedRect8px.png",
							ImageColor3 = style.Theme.BackgroundContrast.Color,
							ImageTransparency = layoutValues.OverrideBackgroundTransparency,
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = Rect.new(8, 8, 24, 16),
							SliceScale = 0.5,
							Size = UDim2.new(1, 0, 0, 4),
						}),
					})
				end
			else
				local scrollingFrameSize = UDim2.new(1, 0, 1, 0)
				if FFlagPlayerListDontSinkTouchUnnecessarily then
					scrollingFrameSize = UDim2.new(1, 0, 0, math.min(canvasSizeY, self.state.containerSizeY))
				end

				return Roact.createElement("Frame", {
					Position = layoutValues.PlayerScrollListPosition,
					Size = layoutValues.PlayerScrollListSize,
					BackgroundTransparency = 1,

					[Roact.Change.AbsoluteSize] = FFlagPlayerListDontSinkTouchUnnecessarily and function(rbx)
						self:setState({
							containerSizeY = rbx.AbsoluteSize.Y,
						})
					end or nil,
				}, {
					PlayerDropDown = Roact.createElement(PlayerDropDown, {
						positionY = absDropDownPosition,
					}),

					ScollingFrame = Roact.createElement("ScrollingFrame", {
						Position = UDim2.new(0, 0, 0, 0),
						Size = scrollingFrameSize,
						CanvasSize = UDim2.new(0, 0, 0, canvasSizeY),
						BackgroundTransparency = 1,
						ScrollBarImageColor3 = layoutValues.ScrollImageColor,
						ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
						BorderSizePixel = 0,
						ScrollBarThickness = 6,
						ScrollingEnabled = not self.props.dropDownVisible,
						Selectable = false,
						CanvasPosition = self.props.dropDownVisible and canvasPositionOverride or self.lastCanvasPosition,

						[Roact.Change.CanvasPosition] = function()
							if self.scrollingFrameRef.current then
								self.lastCanvasPosition = self.scrollingFrameRef.current.CanvasPosition
							end
						end,

						[Roact.Ref] = self.scrollingFrameRef,
					}, childElements),
				})
			end
		end)
	end)
end

function PlayerScrollList:didUpdate(prevProps)
	if self.props.displayOptions.isVisible ~= prevProps.displayOptions.isVisible then
		if self.props.displayOptions.isVisible then
			if self.props.displayOptions.isTenFootInterface and self.props.displayOptions.isUsingGamepad then
				GuiService.SelectedCoreObject = self.firstPlayerRef.current
				UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
			end
			GuiService:AddSelectionParent("PlayerlistGuiSelection", self.scrollingFrameRef.current)
		else
			if self.props.displayOptions.isTenFootInterface and self.props.displayOptions.isUsingGamepad then
				UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
			end
			if GuiService.SelectedCoreObject and
				GuiService.SelectedCoreObject:IsDescendantOf(self.scrollingFrameRef.current) then
				GuiService.SelectedCoreObject = nil
			end
			GuiService:RemoveSelectionGroup("PlayerlistGuiSelection")
		end
	end
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

		dropDownPlayer = state.playerDropDown.selectedPlayer,
		dropDownVisible = state.playerDropDown.isVisible,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(PlayerScrollList)