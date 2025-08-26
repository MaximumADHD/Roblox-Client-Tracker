--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local InExperienceCapabilities =
	require(CorePackages.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities

local SharedFlags = CorePackages.Workspace.Packages.SharedFlags

local withStyle = UIBlox.Style.withStyle

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerIcon = require(Components.PresentationCommon.PlayerIcon)
local PlayerNameTag = require(script.Parent.PlayerNameTag)

local StatEntry = require(script.Parent.StatEntry)

local PlayerList = Components.Parent
local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local OpenPlayerDropDown = require(PlayerList.Actions.OpenPlayerDropDown)
local GetFFlagGateLeaderboardPlayerDropdownViaGUAC = require(SharedFlags).GetFFlagGateLeaderboardPlayerDropdownViaGUAC
local createShallowEqualAndTables = require(PlayerList.createShallowEqualAndTables)
local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)

local PlayerEntry = Roact.PureComponent:extend("PlayerEntry")

PlayerEntry.validateProps = t.strictInterface({
	topDiv = t.optional(t.boolean),
	bottomDiv = t.optional(t.boolean),
	player = playerInterface,
	titlePlayerEntry = t.boolean,
	entrySize = t.integer,
	layoutOrder = t.optional(t.integer),

	playerStats = t.map(t.string, t.any),

	playerIconInfo = t.strictInterface({
		isPlaceOwner = t.boolean,
		avatarIcon = t.optional(t.table),
		specialGroupIcon = t.optional(t.table),
	}),

	playerRelationship = t.strictInterface({
		isBlocked = t.boolean,
		friendStatus = t.enum(Enum.FriendStatus),
		isFollowing = t.boolean,
		isFollower = t.boolean,
	}),

	gameStats = if FFlagPlayerListReduceRerenders
		then nil
		else t.array(t.strictInterface({
			name = t.string,
			text = t.string,
			addId = t.integer,
			serverAddId = t.integer,
			isPrimary = t.boolean,
			priority = t.number,
		})),

	gameStatNames = if FFlagPlayerListReduceRerenders then t.array(t.string) else nil,

	[Roact.Ref] = t.optional(t.table),

	selectedPlayer = t.optional(t.instanceIsA("Player")),
	dropDownOpen = t.boolean,

	isSmallTouchDevice = t.boolean,

	closeDropDown = t.callback,
	openDropDown = t.callback,

	Position = t.optional(t.UDim2),
})

function PlayerEntry:init()
	self.state = {
		isHovered = false,
		isPressed = false,
	}

	self.onActivated = function()
		if self.props.dropDownOpen then
			self.props.closeDropDown()
		else
			if GetFFlagGateLeaderboardPlayerDropdownViaGUAC() then
				if InExperienceCapabilities.canViewPlayerDropdownInLeaderboard then
					self.props.openDropDown(self.props.player)
				end
			else
				self.props.openDropDown(self.props.player)
			end
		end
	end

	self.onSelectionGained = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onSelectionLost = function()
		self:setState({
			isHovered = false,
		})
	end

	self.onMouseEnter = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
			isPressed = false,
		})
	end

	self.onMouseDown = function()
		self:setState({
			isPressed = true,
		})
	end

	self.onInputEnded = function()
		self:setState({
			isPressed = false,
		})
	end
end

function PlayerEntry:getBackgroundColor(layoutValues)
	local isActive = self.state.isHovered or self.state.isPressed
	return isActive and layoutValues.RowHoverColor or layoutValues.RowDefaultColor
end

function PlayerEntry:getTextStyle(layoutValues, style)
	if layoutValues.IsTenFoot then
		if self.state.isHovered then
			return layoutValues.HoveredTextStyle, layoutValues.PlayerNameTextSizeMobile
		end
		return layoutValues.DefaultTextStyle, layoutValues.PlayerNameTextSizeMobile
	end

	local isLocalPlayer = self.props.player == LocalPlayer
	if isLocalPlayer then
		return style.Theme.TextEmphasis
	end

	return style.Theme.TextDefault
end

function PlayerEntry:getPlayerNameFont(layoutValues, style)
	local isLocalPlayer = self.props.player == LocalPlayer
	if isLocalPlayer then
		return {
			Font = AppFonts.default:getMedium(),
			Size = style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize,
			MinSize = style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
		}
	end

	return {
		Font = AppFonts.default:getDefault(),
		Size = style.Font.CaptionBody.RelativeSize * style.Font.BaseSize,
		MinSize = style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
	}
end

function PlayerEntry:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local textStyle = self:getTextStyle(layoutValues, style)
			local playerNameFont = self:getPlayerNameFont(layoutValues, style)

			local children = {}

			children.Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			})

			children.NameFrame = Roact.createElement("Frame", {
				LayoutOrder = 0,
				Size = UDim2.new(0, layoutValues.PlayerNameSizeXMobile, 0, layoutValues.PlayerEntrySizeY),
				BackgroundTransparency = 1,
			}, {
				PlayerIcon = Roact.createElement(PlayerIcon, {
					player = self.props.player,
					playerIconInfo = self.props.playerIconInfo,
					playerRelationship = self.props.playerRelationship,
				}),

				PlayerName = Roact.createElement(PlayerNameTag, {
					player = self.props.player,
					isTitleEntry = self.props.titlePlayerEntry,
					isHovered = self.state.isHovered,

					textStyle = textStyle,
					textFont = playerNameFont,
				}),
			})

			if FFlagPlayerListReduceRerenders then
				for i, gameStatName in self.props.gameStatNames do
					if i > layoutValues.MaxLeaderstats then
						break
					end
					children["GameStat_" .. gameStatName] = Roact.createElement(StatEntry, {
						statValue = self.props.playerStats[gameStatName],
						isTitleEntry = self.props.titlePlayerEntry,
						isTeamEntry = false,
						layoutOrder = i,
						textStyle = textStyle,
					})
				end
			else
				for i, gameStat in ipairs(self.props.gameStats) do
					if i > layoutValues.MaxLeaderstats then
						break
					end
					children["GameStat_" .. gameStat.name] = Roact.createElement(StatEntry, {
						statValue = self.props.playerStats[gameStat.name],
						isTitleEntry = self.props.titlePlayerEntry,
						isTeamEntry = false,
						layoutOrder = i,
						textStyle = textStyle,
					})
				end
			end

			local topDiv = self.props.topDiv or false
			local bottomDiv = self.props.bottomDiv or false

			return Roact.createElement("ImageButton", {
				Position = self.props.Position,
				Size = UDim2.new(1, layoutValues.EntryXOffset, 0, layoutValues.PlayerEntrySizeY),
				AutoButtonColor = false,
				BackgroundColor3 = self:getBackgroundColor(layoutValues),
				BackgroundTransparency = 0.8,
				BorderSizePixel = 0,
				Image = "",
				LayoutOrder = self.props.layoutOrder,

				[Roact.Event.Activated] = self.onActivated,
				[Roact.Event.SelectionGained] = self.onSelectionGained,
				[Roact.Event.SelectionLost] = self.onSelectionLost,
				[Roact.Event.MouseButton1Down] = self.onMouseDown,
				[Roact.Event.InputEnded] = self.onInputEnded,
			}, {
				ChildrenFrame = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
					Position = UDim2.new(0, 0, 0, 0),
					BackgroundTransparency = 1,
				}, children),

				TopDiv = topDiv and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 0, 0),
					AnchorPoint = Vector2.new(0, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 0.8,
				}) or nil,

				BottomDiv = bottomDiv and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 0.8,
				}) or nil,
			})
		end)
	end)
end

local function mapStateToProps(state)
	return {
		selectedPlayer = state.playerDropDown.selectedPlayer,
		dropDownOpen = state.playerDropDown.isVisible,

		isSmallTouchDevice = state.displayOptions.isSmallTouchDevice,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeDropDown = function()
			return dispatch(ClosePlayerDropDown())
		end,
		openDropDown = function(player)
			return dispatch(OpenPlayerDropDown(player))
		end,
	}
end

if FFlagPlayerListReduceRerenders then
	return React.memo(
		RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerEntry),
		createShallowEqualAndTables({ "gameStatNames" })
	)
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerEntry)
