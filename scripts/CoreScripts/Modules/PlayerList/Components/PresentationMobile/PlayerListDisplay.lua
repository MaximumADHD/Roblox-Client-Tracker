local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerEntry = require(script.Parent.PlayerEntry)
local TeamEntry = require(script.Parent.TeamEntry)
local TitleBar = require(script.Parent.TitleBar)

local PlayerListDisplay = Roact.PureComponent:extend("PlayerListDisplay")

PlayerListDisplay.validateProps = t.strictInterface({
	isVisible = t.boolean,
	isMinimized = t.boolean,
	isTenFootInterface = t.boolean,
	isUsingGamepad = t.boolean,

	screenSizeY = t.integer,
	entrySize = t.integer,

	sortedPlayers = t.array(t.instanceIsA("Player")),

	sortedTeams = t.optional(t.any),
	teamColorToPlayerMap = t.optional(t.map(t.integer, t.array(t.instanceIsA("Player")))),
	teamScores = t.optional(t.map(t.instanceIsA("Team"), t.map(t.string, t.any))),

	teamNames = t.map(t.instanceIsA("Team"), t.string),
	teamColors = t.map(t.instanceIsA("Team"), t.BrickColor),
	playerTeam = t.map(t.integer, t.instanceIsA("Team")),

	playerStats = t.map(t.integer, t.map(t.string, t.any)),
	gameStats = t.array(t.strictInterface({
		name = t.string,
		text = t.string,
		addId = t.integer,
		isPrimary = t.boolean,
		priority = t.number,
	})),

	playerIconInfo = t.map(t.integer, t.strictInterface({
		isPlaceOwner = t.boolean,
		avatarIcon = t.optional(t.table),
		specialGroupIcon = t.optional(t.table),
	})),

	playerRelationship = t.map(t.integer, t.strictInterface({
		isBlocked = t.boolean,
		friendStatus = t.enum(Enum.FriendStatus),
		isFollowing = t.boolean,
		isFollower = t.boolean,
	})),

	dropDownPlayer = t.optional(t.instanceIsA("Player")),
	dropDownVisible = t.boolean,
})

function PlayerListDisplay:init()
	self.scrollingFrameRef = Roact.createRef()
	self.firstPlayerRef = Roact.createRef()

	self.state = {
		lastCanvasPosition = Vector2.new(0, 0),
		contentsVisible = true,
	}
end

function PlayerListDisplay:getShowTitlePlayer()
	local enoughPlayers = self.props.sortedPlayers and #self.props.sortedPlayers > 1 or false
	local enoughTeams = self.props.sortedTeams and #self.props.sortedTeams > 0 or false
	local enoughStats = #self.props.gameStats > 0
	return enoughPlayers or enoughTeams or enoughStats
end

function PlayerListDisplay:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local layoutOrder = 0
			local function getLayoutOrder()
				layoutOrder += 1
				return layoutOrder
			end

			local childElements = {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
				}),
			}

			childElements.TitlePlayer = self:getShowTitlePlayer() and Roact.createElement(PlayerEntry, {
				player = LocalPlayer,
				playerStats = self.props.playerStats[LocalPlayer.UserId] or {},
				playerIconInfo = self.props.playerIconInfo[LocalPlayer.UserId] or {isPlaceOwner = false,},
				playerRelationship = self.props.playerRelationship[LocalPlayer.UserId] or {
					isBlocked = false,
					friendStatus = Enum.FriendStatus.NotFriend,
					isFollowing = false,
					isFollower = false,
				},
				titlePlayerEntry = true,
				gameStats = self.props.gameStats,
				entrySize = self.props.entrySize,
				topDiv = false,
				bottomDiv = true,
				layoutOrder = getLayoutOrder(),
			}) or nil

			childElements.TitleBar = Roact.createElement(TitleBar, {
				LayoutOrder = getLayoutOrder(),
				contentsVisible = self.state.contentsVisible,
				gameStats = self.props.gameStats,
				Size = UDim2.new(1, 0, 0, 24),
				entrySize = self.props.entrySize,
			})

			if self.props.sortedTeams then
				local firstPlayer = true
				for i, sortedTeam in ipairs(self.props.sortedTeams) do
					childElements["Team_" .. tostring(i)] = Roact.createElement(TeamEntry, {
						teamName = self.props.teamNames[sortedTeam.team],
						teamColor = self.props.teamColors[sortedTeam.team],
						leaderstats = self.props.teamScores[sortedTeam.team],
						gameStats = self.props.gameStats,
						entrySize = self.props.entrySize,
						layoutOrder = getLayoutOrder(),
					})

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

					for j, player in ipairs(teamPlayers) do
						local userId = player.UserId
						childElements["Player_" .. tostring(player.UserId)] = Roact.createElement(PlayerEntry, {
							player = player,
							playerStats = self.props.playerStats[userId],
							playerIconInfo = self.props.playerIconInfo[userId],
							playerRelationship = self.props.playerRelationship[userId],
							titlePlayerEntry = false,
							gameStats = self.props.gameStats,
							topDiv = true,
							bottomDiv = j == #teamPlayers,
							entrySize = self.props.entrySize,
							layoutOrder = getLayoutOrder(),

							[Roact.Ref] = firstPlayer and self.firstPlayerRef or nil,
						})
						firstPlayer = false
					end
				end
			else
				for i, player in ipairs(self.props.sortedPlayers) do
					childElements["Player_" .. tostring(player.UserId)] = Roact.createElement(PlayerEntry, {
						player = player,
						playerStats = self.props.playerStats[player.UserId],
						playerIconInfo = self.props.playerIconInfo[player.UserId],
						playerRelationship = self.props.playerRelationship[player.UserId],
						titlePlayerEntry = false,
						gameStats = self.props.gameStats,
						entrySize = self.props.entrySize,
						layoutOrder = getLayoutOrder(),
						topDiv = true,
						bottomDiv = false,

						[Roact.Ref] = i == 1 and self.firstPlayerRef or nil,
					})
				end
			end

			local scrollingFrameMaxSizeY = math.huge
			if #self.props.gameStats > 0 then
				scrollingFrameMaxSizeY = scrollingFrameMaxSizeY - layoutValues.TitleBarSizeY
			end

			return Roact.createElement("ScrollingFrame", {
				AutomaticCanvasSize = Enum.AutomaticSize.XY,
				Size = UDim2.new(1, 0, 1, 0),
				CanvasSize = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				ScrollBarImageColor3 = layoutValues.ScrollImageColor,
				ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
				BorderSizePixel = 0,
				ScrollBarThickness = layoutValues.ScrollBarSizeMobile,
				VerticalScrollBarInset = Enum.ScrollBarInset.None,
				HorizontalScrollBarInset = Enum.ScrollBarInset.None,
				ClipsDescendants = true,
				ScrollingEnabled = not self.props.dropDownVisible,
				ElasticBehavior = Enum.ElasticBehavior.Never,
				Selectable = false,
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
			if GuiService.SelectedCoreObject and
				GuiService.SelectedCoreObject:IsDescendantOf(self.scrollingFrameRef.current) then
				GuiService.SelectedCoreObject = nil
			end
		end
	end

	if self.props.isMinimized ~= prevProps.isMinimized and self.props.isMinimized then
		self:setState({
			contentsVisible = false,
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
