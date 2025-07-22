--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Otter = require(CorePackages.Packages.Otter)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local TopBarConstants = require(Modules.TopBar.Constants)
local ChromeEnabled = require(Modules.Chrome.Enabled)()

local Presentation = script.Parent
local PlayerList = Presentation.Parent.Parent

local FFlagPlayerListClosedNoRender = require(PlayerList.Flags.FFlagPlayerListClosedNoRender)

local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)

local PlayerListDisplayContainer = require(PlayerList.Components.Container.PlayerListDisplayContainer)
local PlayerDropDown = require(Presentation.PlayerDropDown)
local PlayerListSorter = require(Presentation.PlayerListSorter)

local Connection = PlayerList.Components.Connection
local EventConnections = require(Connection.EventConnections)
local ContextActionsBinder = require(Connection.ContextActionsBinder)
local TopStatConnector = require(Connection.TopStatConnector)
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local FFlagPlayerListFixMobileScrolling = require(PlayerList.Flags.FFlagPlayerListFixMobileScrolling)
local GetFFlagFixDropDownVisibility = require(PlayerList.Flags.GetFFlagFixDropDownVisibility)
local FFlagUseNewPlayerList = PlayerListPackage.Flags.FFlagUseNewPlayerList
local FFlagAddNewPlayerListFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListFocusNav

local MOTOR_OPTIONS = {
	dampingRatio = 1,
	frequency = 4,
}

local OLD_PLAYERLIST_PLAYER_ENTRY_SIZE = 26
local OLD_PLAYERLIST_TEAM_ENTRY_SIZE = 20

local MIN_PLAYERS_HEIGHT_ADJUST = 6
local MAX_PLAYERS_HEIGHT_ADJUST = 12
local HEADER_SIZE_Y = 44
local BORDER_SIZE = 24

local function map(x, inMin, inMax, outMin, outMax)
	return (x - inMin) * (outMax - outMin) / (inMax - inMin) + outMin
end

local PlayerListApp = Roact.PureComponent:extend("PlayerListApp")

local function playerListSizeFromViewportSize(viewportSize)
	-- Turn x/y into min/max to stay independent of aspect ratio
	local vMin = math.min(viewportSize.x, viewportSize.y)
	local vMax = math.max(viewportSize.x, viewportSize.y)

	-- Map the viewport sizes to the frame sizes
	-- Min axis: Viewport size 320 -> Frame size 270
	-- Min axis: Viewport size 375 -> Frame size 330
	local sMin = map(vMin, 320, 375, 270, 330)

	-- Max axis: Viewport size 480 -> Frame size 434
	-- Max axis: Viewport size 670 -> Frame size 480
	local sMax = map(vMax, 480, 670, 434, 480)

	-- Clamp the max size to (500, 600)
	-- Clamp the min size to 270x434, but always keep a 12px border on the edges
	sMin = math.clamp(sMin, math.min(270, vMin - BORDER_SIZE), 500)
	sMax = math.clamp(sMax, math.min(434, vMax - BORDER_SIZE), 600)

	-- Remap from min/max to x/y
	local sX = viewportSize.x > viewportSize.y and sMax or sMin
	local sY = viewportSize.y > viewportSize.x and sMax or sMin

	-- Increase y-axis border to avoid chrome overlap on landscape
	if ChromeEnabled and viewportSize.y < viewportSize.x then
		sY -= (TopBarConstants.TopBarHeight - BORDER_SIZE)
	end

	return UDim2.fromOffset(sX, sY)
end

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
		visible = false,
	}

	self.bodyTransparency, self.updateBodyTransparency = Roact.createBinding(0.5)
	self.bodyTransparencyMotor = Otter.createSingleMotor(1)
	self.bodyTransparencyMotor:onStep(function(transparency)
		self.updateBodyTransparency(transparency)
		if not FFlagPlayerListClosedNoRender then
			if transparency < 0.5 and self.props.displayOptions.isVisible then
				if not self.state.visible then
					self:setState({
						visible = true,
					})
				end
			elseif self.state.visible then
				self:setState({
					visible = false,
				})
			end
		end
		self.props.setLayerCollectorEnabled(transparency < 0.99 or self.props.displayOptions.isVisible)
	end)
	if FFlagPlayerListClosedNoRender then
		self.bodyTransparencyMotor:onComplete(function()
			if not self.props.displayOptions.isVisible then
				self:setState({
					visible = false,
				})
			end
		end)
	end

	self.bgTransparency, self.updateBgTransparency = Roact.createBinding(0)
	self.bgTransparencyMotor = Otter.createSingleMotor(1)
	self.bgTransparencyMotor:onStep(self.updateBgTransparency)

	self.frameScale, self.updateFrameScale = Roact.createBinding(1)
	self.frameScaleMotor = Otter.createSingleMotor(0)
	self.frameScaleMotor:onStep(function(scale)
		self.updateFrameScale(scale)
	end)

	self.titleRef = Roact.createRef()
	self.closeRef = Roact.createRef()
end

function PlayerListApp:renderBodyChildren(previousSizeBound, childElements)
	local contentVisible = self.state.visible
	local dropDownVisible = self.props.isDropDownVisible

	return {
		UIScale = Roact.createElement("UIScale", {
			Scale = self.frameScale,
		}),

		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 6),
		}),

		TitleText = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, HEADER_SIZE_Y),
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 1,
			Font = AppFonts.default:getBold(),
			Visible = contentVisible and not dropDownVisible,
			TextSize = 22,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			Text = RobloxTranslator:FormatByKey("InGame.PlayerList.Leaderboard"),
			[Roact.Ref] = self.titleRef,
		}),

		CloseButton = Roact.createElement("ImageButton", {
			Image = "rbxasset://textures/ui/InspectMenu/x.png",
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.fromOffset(22, 22),
			Position = UDim2.fromOffset(11, 22),
			BackgroundTransparency = 1,
			Visible = contentVisible and not dropDownVisible,
			ZIndex = 0,

			[Roact.Ref] = self.closeRef,
			[Roact.Event.Activated] = function()
				self.props.setPlayerListVisible(false)
			end,
		}),

		ContentFrame = Roact.createElement("Frame", {
			Position = UDim2.new(0.5, 0, 1, 0),
			AnchorPoint = Vector2.new(0.5, 1),
			Size = UDim2.new(1, 0, 1, -HEADER_SIZE_Y),
			BackgroundTransparency = 1,
			Visible = contentVisible and not dropDownVisible,
			AutoLocalize = false,
		}, childElements),
	}
end

function PlayerListApp:render()
	if FFlagPlayerListClosedNoRender and not self.state.visible then
		return Roact.createElement(ContextActionsBinder)
	end
	return WithLayoutValues(function(layoutValues)
		local entrySize
		if layoutValues.IsTenFoot then
			entrySize = layoutValues.EntrySizeX
		else
			entrySize = layoutValues.EntryBaseSizeX + (4 * layoutValues.EntrySizeIncreasePerStat)

			local dropDownSpace = layoutValues.PlayerDropDownSizeXMobile + layoutValues.PlayerDropDownOffset
			local usedScreenSpace = layoutValues.ContainerPadding * 2 + dropDownSpace

			if self.props.screenSizeX - usedScreenSpace < entrySize then
				entrySize = self.props.screenSizeX - usedScreenSpace
			end
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

		if self.state.visible then
			childElements["PlayerScrollList"] = Roact.createElement(if FFlagUseNewPlayerList then PlayerListDisplayContainer else PlayerListSorter, {
				screenSizeY = self.props.screenSizeY,
				entrySize = entrySize,
				isVisible = if FFlagAddNewPlayerListFocusNav then self.props.displayOptions.isVisible else nil,
			})
		end
		childElements["EventConnections"] = Roact.createElement(EventConnections)
		childElements["ContextActionsBindings"] = Roact.createElement(ContextActionsBinder)
		childElements["TopStatConnector"] = Roact.createElement(TopStatConnector)

		return Roact.createElement("ImageButton", {
			Active = self.props.displayOptions.isVisible,
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundColor3 = Color3.fromRGB(17, 18, 20),
			BackgroundTransparency = self.bgTransparency,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			AutoLocalize = false,
			AutoButtonColor = false,
			Selectable = not FFlagPlayerListFixMobileScrolling,
			Image = "",
			[Roact.Event.Activated] = function()
				self.props.setPlayerListVisible(false)
			end,
		}, {
			PlayerDropDown = Roact.createElement(PlayerDropDown, {
				contentsVisible = true,
				selectedPlayer = self.props.dropDownPlayer,
			}),
			-- Push menu down when chrome enabled to below topbarheight
			BodyPadding = if ChromeEnabled
					and self.props.screenSizeY < self.props.screenSizeX
				then Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, TopBarConstants.TopBarHeight),
				})
				else nil,
			BodyBackground = Roact.createElement("Frame", {
				Size = playerListSizeFromViewportSize(Vector2.new(self.props.screenSizeX, self.props.screenSizeY)),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundColor3 = Color3.fromRGB(17, 18, 20),
				BackgroundTransparency = self.bodyTransparency,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
			}, self:renderBodyChildren(previousSizeBound, childElements)),
		})
	end)
end

function PlayerListApp:didMount()
	self.props.setLayerCollectorEnabled(false)
	self:setState({
		visible = self.props.displayOptions.isVisible,
	})
end

function PlayerListApp:willUnmount()
	self.props.setLayerCollectorEnabled(true)
end

function PlayerListApp:didUpdate(previousProps, previousState)
	local isVisible = self.props.displayOptions.isVisible
	local isDropDownVisible = self.props.isDropDownVisible

	if not FFlagPlayerListClosedNoRender and isVisible ~= previousProps.displayOptions.isVisible and not isVisible then
		self:setState({
			visible = isVisible,
		})
	end

	if FFlagPlayerListClosedNoRender then
		if isVisible then
			self:setState({
				visible = true,
			})
		end
	end

	local backgroundTransparency = (isDropDownVisible or isVisible) and 0.7 or 1
	self.bgTransparencyMotor:setGoal(Otter.spring(backgroundTransparency, MOTOR_OPTIONS))

	local isDropDownEnabled = if GetFFlagFixDropDownVisibility
		then isDropDownVisible and isVisible
		else isDropDownVisible

	local bodyScale = 1.25
	if isDropDownEnabled then
		bodyScale = 0.95
	elseif isVisible then
		bodyScale = 1
	end

	self.frameScaleMotor:setGoal(Otter.spring(bodyScale, MOTOR_OPTIONS))

	local bodyTransparency = 1
	if isDropDownEnabled then
		bodyTransparency = 0.8 * self.props.preferredTransparency
	elseif isVisible then
		bodyTransparency = 0.2 * self.props.preferredTransparency
	end

	self.bodyTransparencyMotor:setGoal(Otter.spring(bodyTransparency, MOTOR_OPTIONS))
end

local function mapStateToProps(state)
	return {
		isDropDownVisible = state.playerDropDown.isVisible,

		screenSizeX = state.screenSize.X,
		screenSizeY = state.screenSize.Y,

		preferredTransparency = state.settings.preferredTransparency,

		displayOptions = state.displayOptions,
		players = state.players,
		playerStats = state.playerStats,
		playerIconInfo = state.playerIconInfo,
		playerRelationship = state.playerRelationship,
		gameStats = state.gameStats,

		teams = state.teams,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setPlayerListVisible = function(visible)
			return dispatch(SetPlayerListVisibility(visible))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerListApp)
