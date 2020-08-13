local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Otter = require(CorePackages.Otter)

local StatsUtils = require(RobloxGui.Modules.Stats.StatsUtils)

local Presentation = script.Parent.Presentation
local PlayerListSorter = require(Presentation.PlayerListSorter)
local PlayerEntry = require(Presentation.PlayerEntry)
local VoiceChatShield = require(Presentation.VoiceChatShield)
local TenFootSideBar = require(Presentation.TenFootSideBar)

local Connection = script.Parent.Connection
local EventConnections = require(Connection.EventConnections)
local ContextActionsBinder = require(Connection.ContextActionsBinder)
local TopStatConnector = require(Connection.TopStatConnector)
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local FFlagDisableAutoTranslateForKeyTranslatedContent = require(
	RobloxGui.Modules.Flags.FFlagDisableAutoTranslateForKeyTranslatedContent)

local PlayerList = script.Parent.Parent
local FFlagFixLeaderboardWaitingOnScreenSize = require(PlayerList.Flags.FFlagFixLeaderboardWaitingOnScreenSize)

local MOTOR_OPTIONS = {
    dampingRatio = 1,
    frequency = 7,
}

local OLD_PLAYERLIST_PLAYER_ENTRY_SIZE = 26
local OLD_PLAYERLIST_TEAM_ENTRY_SIZE = 20

local MIN_PLAYERS_HEIGHT_ADJUST = 6
local MAX_PLAYERS_HEIGHT_ADJUST = 12

local PlayerListApp = Roact.PureComponent:extend("PlayerListApp")

local function shouldShowNeutralTeam(players)
	for _, player in ipairs(players) do
		if player.Team == nil then
			return true
		end
	end
	return false
end

local function getTeamCount(teams, players)
	local uniqueTeams = {}
	local teamCount = 0
	for _, team in pairs(teams) do
		if not uniqueTeams[team.TeamColor.Number] then
			uniqueTeams[team.TeamColor.Number] = true
			teamCount = teamCount + 1
		end
	end
	if teamCount > 0 and shouldShowNeutralTeam(players) then
		teamCount = teamCount + 1
	end
	return teamCount
end

function PlayerListApp:init()
	self.state = {
		visible = true,
	}

	self.positionOffset, self.updatePositionOffset = Roact.createBinding(UDim2.new(0, 0, 0, 0))

	self.positionMotor = Otter.createSingleMotor(0)
	self.positionMotor:onStep(function(position)
		self.updatePositionOffset(UDim2.new(position, 0, 0, 0))
	end)
	self.positionMotor:onComplete(function(position)
		if not self.props.displayOptions.isVisible then
			self:setState({
				visible = false,
			})
		end
	end)
end

function PlayerListApp:render()
	return WithLayoutValues(function(layoutValues)
		local containerPosition = layoutValues.ContainerPosition
		local containerSize = layoutValues.ContainerSize
		local anchorPoint = layoutValues.AnchorPoint
		if not layoutValues.IsTenFoot and self.props.displayOptions.performanceStatsVisible then
			containerPosition = containerPosition + UDim2.new(0, 0, 0, StatsUtils.ButtonHeight)
		end

		local maxLeaderstats = layoutValues.MaxLeaderstats
		if FFlagFixLeaderboardWaitingOnScreenSize and self.props.displayOptions.isSmallTouchDevice then
			maxLeaderstats = layoutValues.MaxLeaderstatsSmallScreen
		end

		local leaderstatsCount = math.min(#self.props.gameStats, maxLeaderstats)
		if leaderstatsCount > 0 then
			local statOffsetX = layoutValues.StatEntrySizeX + layoutValues.EntryPadding
			containerSize = containerSize + UDim2.new(0, statOffsetX * leaderstatsCount, 0, 0)
		end

		local entrySize
		if layoutValues.IsTenFoot then
			entrySize = layoutValues.EntrySizeX
		else
			entrySize = layoutValues.EntryBaseSizeX + (math.min(4, leaderstatsCount) * layoutValues.EntrySizeIncreasePerStat)

			containerSize = containerSize + UDim2.new(0, layoutValues.ExtraContainerPadding, 0, 0)

			local dropDownSpace = layoutValues.PlayerDropDownSizeX + layoutValues.PlayerDropDownOffset
			local usedScreenSpace = containerSize.X.Offset + layoutValues.ContainerPadding * 2 + dropDownSpace

			if self.props.screenSizeX - usedScreenSpace < entrySize then
				entrySize = self.props.screenSizeX - usedScreenSpace
			end
			containerSize = containerSize + UDim2.new(0, entrySize, 0, 0)
		end

		local previousSizeBound = math.huge
		local doHeightAdjust = Players.MaxPlayers >= MIN_PLAYERS_HEIGHT_ADJUST
			and Players.MaxPlayers <= MAX_PLAYERS_HEIGHT_ADJUST
		if doHeightAdjust then
			previousSizeBound = Players.MaxPlayers * OLD_PLAYERLIST_PLAYER_ENTRY_SIZE
			local teamCount = getTeamCount(self.props.teams, self.props.players)
			previousSizeBound = previousSizeBound + teamCount * OLD_PLAYERLIST_TEAM_ENTRY_SIZE
		end

		local childElements = {}

		if layoutValues.IsTenFoot then
			for _, player in ipairs(self.props.players) do
				if player == Players.LocalPlayer then
					childElements["TitlePlayerEntry"] = Roact.createElement("Frame", {
						Position = UDim2.fromOffset(0, 0),
						Size = UDim2.new(1, layoutValues.EntryXOffset, 0, layoutValues.PlayerEntrySizeY),
						BackgroundTransparency = 1,
					}, {
						PlayerEntry = Roact.createElement(PlayerEntry, {
							player = player,
							playerStats = self.props.playerStats[player.UserId],
							playerIconInfo = self.props.playerIconInfo[player.UserId],
							playerRelationship = self.props.playerRelationship[player.UserId],
							titlePlayerEntry = true,
							hasDivider = false,
							gameStats = self.props.gameStats,
							entrySize = entrySize,
						})
					})
					break
				end
			end
		end

		childElements["PlayerScrollList"] = Roact.createElement(PlayerListSorter, {
			screenSizeY = self.props.screenSizeY,
			entrySize = entrySize,
		})
		childElements["EventConnections"] = Roact.createElement(EventConnections)
		childElements["ContextActionsBindings"] = Roact.createElement(ContextActionsBinder)
		childElements["TopStatConnector"] = Roact.createElement(TopStatConnector)
		if self.props.displayOptions.hasPermissionToVoiceChat then
			childElements["VoiceChatShield"] = Roact.createElement(VoiceChatShield)
		end
		if self.props.displayOptions.isTenFootInterface then
			childElements["TenFootSideBar"] = Roact.createElement(TenFootSideBar)
		end

		return Roact.createElement("Frame", {
			Position = containerPosition,
			AnchorPoint = anchorPoint,
			Size = containerSize,
			BackgroundTransparency = 1,
			Visible = self.state.visible,
			---Increase ZIndex on TenFootInferface to put this on front of the VoiceChatShield.
			ZIndex = layoutValues.IsTenFoot and 2 or 1,
			AutoLocalize = not FFlagDisableAutoTranslateForKeyTranslatedContent,

			[Roact.Ref] = self.rootRef,
		}, {
			OffsetFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = self.positionOffset,
				BackgroundTransparency = 1,
			}, childElements),

			UISizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = Vector2.new(0, 0),
				MaxSize = Vector2.new(math.huge, previousSizeBound)
			}) or nil,
		})
	end)
end

function PlayerListApp:didMount()
	self:setState({
		visible = self.props.displayOptions.isVisible,
	})
end

function PlayerListApp:didUpdate(previousProps, previousState)
	if self.props.displayOptions.isVisible ~= previousProps.displayOptions.isVisible  then
		if self.props.displayOptions.isTenFootInterface then
			self:setState({
				visible = self.props.displayOptions.isVisible,
			})
		else
			if self.props.displayOptions.isVisible then
				self:setState({
					visible = true,
				})
				self.positionMotor:setGoal(Otter.instant(0.2))
				self.positionMotor:step(0)
				self.positionMotor:setGoal(Otter.spring(0, MOTOR_OPTIONS))
			else
				self.positionMotor:setGoal(Otter.spring(1.1, MOTOR_OPTIONS))
			end
		end
	end
end

function PlayerListApp:willUnmount()
	self.positionMotor:destroy()
	self.positionMotor = nil
end

local function mapStateToProps(state)
	return {
		screenSizeX = state.screenSize.X,
		screenSizeY = state.screenSize.Y,

		displayOptions = state.displayOptions,
		players = state.players,
		playerStats = state.playerStats,
		playerIconInfo = state.playerIconInfo,
		playerRelationship = state.playerRelationship,
		gameStats = state.gameStats,

		teams = state.teams,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(PlayerListApp)