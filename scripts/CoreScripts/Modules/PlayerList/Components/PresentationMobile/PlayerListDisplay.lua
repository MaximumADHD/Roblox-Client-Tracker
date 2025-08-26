--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)

local withStyle = UIBlox.Style.withStyle

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local Presentation = script.Parent
local Components = Presentation.Parent
local PlayerList = Presentation.Parent.Parent

local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerEntry = require(script.Parent.PlayerEntry)
local TeamEntry = require(script.Parent.TeamEntry)
local TitleBar = require(script.Parent.TitleBar)

local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)
local FFlagPlayerListFixMobileScrolling = require(PlayerList.Flags.FFlagPlayerListFixMobileScrolling)
local FAKE_NEUTRAL_TEAM = require(PlayerList.GetFakeNeutralTeam)

local RENDER_OUTSIDE_WINDOW_ELEMENTS = 3

local PlayerListDisplay = Roact.PureComponent:extend("PlayerListDisplay")

PlayerListDisplay.validateProps = t.strictInterface({
	isVisible = t.boolean,
	isMinimized = t.boolean,
	isTenFootInterface = t.boolean,
	isUsingGamepad = t.boolean,

	screenSizeY = t.integer,
	entrySize = t.integer,

	sortedPlayers = t.array(playerInterface),

	sortedTeams = t.optional(t.any),
	teamColorToPlayerMap = t.optional(t.map(t.integer, t.array(playerInterface))),
	teamScores = t.optional(t.map(t.instanceIsA("Team"), t.map(t.string, t.any))),

	teamNames = t.map(t.instanceIsA("Team"), t.string),
	teamColors = t.map(t.instanceIsA("Team"), t.BrickColor),
	playerTeam = t.map(t.integer, t.instanceIsA("Team")),

	playerStats = t.map(t.integer, t.map(t.string, t.any)),
	gameStats = t.array(t.strictInterface({
		name = t.string,
		text = t.string,
		addId = t.integer,
		serverAddId = t.integer,
		isPrimary = t.boolean,
		priority = t.number,
	})),

	playerIconInfo = t.map(
		t.integer,
		t.strictInterface({
			isPlaceOwner = t.boolean,
			avatarIcon = t.optional(t.table),
			specialGroupIcon = t.optional(t.table),
		})
	),

	playerRelationship = t.map(
		t.integer,
		t.strictInterface({
			isBlocked = t.boolean,
			friendStatus = t.enum(Enum.FriendStatus),
			isFollowing = t.boolean,
			isFollower = t.boolean,
		})
	),

	dropDownPlayer = t.optional(playerInterface),
	dropDownVisible = t.boolean,
})

function PlayerListDisplay:init()
	self.scrollingFrameRef = Roact.createRef()
	self.firstPlayerRef = Roact.createRef()

	self.state = {
		lastCanvasPosition = Vector2.new(0, 0),
		containerSizeY = 100,
		contentsVisible = true,
	}

	self.absoluteSizeChanged = function(rbx)
		self:setState({
			containerSizeY = rbx.AbsoluteSize.Y,
		})
	end

	self.canvasPositionChanged = function(rbx)
		self:setState({
			lastCanvasPosition = rbx.CanvasPosition,
		})
	end
end

function PlayerListDisplay:getShowTitlePlayer()
	local enoughPlayers = self.props.sortedPlayers and #self.props.sortedPlayers > 1 or false
	local enoughTeams = self.props.sortedTeams and #self.props.sortedTeams > 0 or false
	local enoughStats = #self.props.gameStats > 0
	return enoughPlayers or enoughTeams or enoughStats
end

function PlayerListDisplay:inVerticalScrollWindow(position, size)
	local lowerBound = position + size + (size * RENDER_OUTSIDE_WINDOW_ELEMENTS)
	if lowerBound < self.state.lastCanvasPosition.Y then
		return false
	end

	local upperBound = position - (size * RENDER_OUTSIDE_WINDOW_ELEMENTS)
	if upperBound > self.state.lastCanvasPosition.Y + self.state.containerSizeY then
		return false
	end

	return true
end

function PlayerListDisplay:isPastEndOfContent(position, size)
	local upperBound = position - (size * RENDER_OUTSIDE_WINDOW_ELEMENTS)
	if upperBound > self.state.lastCanvasPosition.Y + self.state.containerSizeY then
		return true
	end

	return false
end

function PlayerListDisplay:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local entryPadding: number = layoutValues.EntryPadding
			local teamEntrySizeY: number = layoutValues.TeamEntrySizeY
			local playerEntrySizeY: number = layoutValues.PlayerEntrySizeY

			local layoutOrder = 0
			local function getLayoutOrder()
				layoutOrder += 1
				return layoutOrder
			end

			local childElements = {}

			local penPositionY = 0

			local gameStatNames = nil
			if FFlagPlayerListReduceRerenders then
				gameStatNames = {}
				for _, gameStat in self.props.gameStats do
					table.insert(gameStatNames, gameStat.name)
				end
			end

			if self:getShowTitlePlayer() then
				childElements.TitlePlayer = Roact.createElement(PlayerEntry, {
					player = LocalPlayer,
					playerStats = self.props.playerStats[LocalPlayer.UserId] or {},
					playerIconInfo = self.props.playerIconInfo[LocalPlayer.UserId] or { isPlaceOwner = false },
					playerRelationship = self.props.playerRelationship[LocalPlayer.UserId] or {
						isBlocked = false,
						friendStatus = Enum.FriendStatus.NotFriend,
						isFollowing = false,
						isFollower = false,
					},
					titlePlayerEntry = true,
					gameStats = if FFlagPlayerListReduceRerenders then nil else self.props.gameStats,
					gameStatNames = gameStatNames,
					entrySize = self.props.entrySize,
					topDiv = false,
					bottomDiv = true,
					Position = UDim2.fromOffset(0, penPositionY),
				})
				penPositionY += playerEntrySizeY + entryPadding
			end

			childElements.TitleBar = Roact.createElement(TitleBar, {
				contentsVisible = self.state.contentsVisible,
				gameStats = self.props.gameStats,
				Size = UDim2.new(1, 0, 0, 24),
				entrySize = self.props.entrySize,
				Position = UDim2.fromOffset(0, penPositionY),
				isSmallTouchDevice = true,
			})
			penPositionY += teamEntrySizeY + entryPadding

			-- Uses a simpler calculation to figure out the scrolling frame
			-- CanvasSize, allowing the loop to be broken out of early.
			local canvasSizeY = penPositionY

			if self.props.sortedTeams then
				local firstPlayer = true
				for i, sortedTeam in ipairs(self.props.sortedTeams) do
					local teamPlayers
					if sortedTeam.team == FAKE_NEUTRAL_TEAM then
						teamPlayers = {}
						for _, player in ipairs(self.props.sortedPlayers) do
							if self.props.playerTeam[player.UserId] == nil then
								table.insert(teamPlayers, player)
							end
						end
					else
						teamPlayers = self.props.teamColorToPlayerMap[sortedTeam.team.TeamColor.Number] or {}
					end

					canvasSizeY += teamEntrySizeY + (playerEntrySizeY + entryPadding) * #teamPlayers

					if self:inVerticalScrollWindow(penPositionY, teamEntrySizeY) then
						childElements["Team_" .. tostring(i)] = Roact.createElement(TeamEntry, {
							teamName = self.props.teamNames[sortedTeam.team],
							teamColor = self.props.teamColors[sortedTeam.team],
							leaderstats = self.props.teamScores[sortedTeam.team],
							gameStats = if FFlagPlayerListReduceRerenders then nil else self.props.gameStats,
							gameStatNames = gameStatNames,
							entrySize = self.props.entrySize,
							layoutOrder = getLayoutOrder(),
							Position = UDim2.fromOffset(0, penPositionY),
						})
					end
					penPositionY += teamEntrySizeY + entryPadding

					for j, player in ipairs(teamPlayers) do
						if not firstPlayer and self:isPastEndOfContent(penPositionY, teamEntrySizeY) then
							break
						end
						if firstPlayer or self:inVerticalScrollWindow(penPositionY, playerEntrySizeY) then
							local userId = player.UserId
							childElements["Player_" .. tostring(player.UserId)] = Roact.createElement(PlayerEntry, {
								player = player,
								playerStats = self.props.playerStats[userId],
								playerIconInfo = self.props.playerIconInfo[userId],
								playerRelationship = self.props.playerRelationship[userId],
								titlePlayerEntry = false,
								gameStats = if FFlagPlayerListReduceRerenders then nil else self.props.gameStats,
								gameStatNames = gameStatNames,
								topDiv = true,
								bottomDiv = j == #teamPlayers,
								entrySize = self.props.entrySize,
								Position = UDim2.fromOffset(0, penPositionY),

								[Roact.Ref] = firstPlayer and self.firstPlayerRef or nil,
							})
							firstPlayer = false
						end
						penPositionY += playerEntrySizeY + entryPadding
					end
				end
			else
				canvasSizeY += (playerEntrySizeY + entryPadding) * #self.props.sortedPlayers

				for i, player in ipairs(self.props.sortedPlayers) do
					if i ~= 1 and self:isPastEndOfContent(penPositionY, playerEntrySizeY) then
						break
					end
					if i == 1 or self:inVerticalScrollWindow(penPositionY, playerEntrySizeY) then
						local userId = player.UserId
						childElements["Player_" .. tostring(userId)] = Roact.createElement(PlayerEntry, {
							player = player,
							playerStats = self.props.playerStats[userId],
							playerIconInfo = self.props.playerIconInfo[userId],
							playerRelationship = self.props.playerRelationship[userId],
							titlePlayerEntry = false,
							gameStats = if FFlagPlayerListReduceRerenders then nil else self.props.gameStats,
							gameStatNames = gameStatNames,
							entrySize = self.props.entrySize,
							layoutOrder = getLayoutOrder(),
							topDiv = true,
							bottomDiv = false,
							Position = UDim2.fromOffset(0, penPositionY),

							[Roact.Ref] = i == 1 and self.firstPlayerRef or nil,
						})
					end
					penPositionY += playerEntrySizeY + entryPadding
				end
			end

			local scrollingFrameMaxSizeY = math.huge
			if #self.props.gameStats > 0 then
				scrollingFrameMaxSizeY = scrollingFrameMaxSizeY - layoutValues.TitleBarSizeY
			end

			local scrollingEnabled = true
			if not FFlagPlayerListFixMobileScrolling then
				scrollingEnabled = not self.props.dropDownVisible
			end

			return Roact.createElement("ScrollingFrame", {
				Active = FFlagPlayerListFixMobileScrolling,
				Size = UDim2.fromScale(1, 1),
				CanvasSize = UDim2.fromOffset(0, canvasSizeY),
				BackgroundTransparency = 1,
				ScrollBarImageColor3 = layoutValues.ScrollImageColor,
				ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
				BorderSizePixel = 0,
				ScrollBarThickness = layoutValues.ScrollBarSizeMobile,
				VerticalScrollBarInset = Enum.ScrollBarInset.None,
				HorizontalScrollBarInset = Enum.ScrollBarInset.None,
				ClipsDescendants = true,
				ScrollingEnabled = scrollingEnabled,
				ElasticBehavior = Enum.ElasticBehavior.Never,
				Selectable = false,
				ScrollingDirection = Enum.ScrollingDirection.Y,

				[Roact.Change.CanvasPosition] = self.canvasPositionChanged,
				[Roact.Change.AbsoluteSize] = self.absoluteSizeChanged,
			}, childElements)
		end)
	end)
end

function PlayerListDisplay:didUpdate(prevProps)
	if self.props.isVisible ~= prevProps.isVisible then
		if self.props.isVisible then
			if self.props.isTenFootInterface and self.props.isUsingGamepad then
				GuiService.SelectedCoreObject = self.firstPlayerRef.current
				UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
			end
		else
			if self.props.isTenFootInterface and self.props.isUsingGamepad then
				UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
			end
			if
				GuiService.SelectedCoreObject
				and GuiService.SelectedCoreObject:IsDescendantOf(self.scrollingFrameRef.current)
			then
				GuiService.SelectedCoreObject = nil
			end
		end
	end

	if self.props.isMinimized ~= prevProps.isMinimized then
		self:setState({
			contentsVisible = not self.props.isMinimized,
		})
	end
end

local function mapStateToProps(state)
	return {
		isVisible = state.displayOptions.isVisible,
		isMinimized = state.displayOptions.isMinimized,
		isTenFootInterface = state.displayOptions.isTenFootInterface,
		isUsingGamepad = state.displayOptions.isUsingGamepad,

		gameStats = state.gameStats,

		teamNames = state.teamNames,
		teamColors = state.teamColors,

		playerStats = state.playerStats,
		playerIconInfo = state.playerIconInfo,
		playerRelationship = state.playerRelationship,
		playerTeam = state.playerTeam,

		dropDownPlayer = state.playerDropDown.selectedPlayer,
		dropDownVisible = state.playerDropDown.isVisible,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(PlayerListDisplay)
