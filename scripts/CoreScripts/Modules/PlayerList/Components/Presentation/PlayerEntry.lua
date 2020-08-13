local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local EntryFrame = require(script.Parent.EntryFrame)
local PlayerIcon = require(script.Parent.PlayerIcon)
local PlayerNameTag = require(script.Parent.PlayerNameTag)
local StatEntry = require(script.Parent.StatEntry)
local CellExtender = require(script.Parent.CellExtender)

local PlayerList = Components.Parent
local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local OpenPlayerDropDown = require(PlayerList.Actions.OpenPlayerDropDown)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FFlagPlayerListFormattingUpdates = require(RobloxGui.Modules.Flags.FFlagPlayerListFormattingUpdates)
local FFlagFixLeaderboardWaitingOnScreenSize = require(PlayerList.Flags.FFlagFixLeaderboardWaitingOnScreenSize)

local PlayerEntry = Roact.PureComponent:extend("PlayerEntry")

PlayerEntry.validateProps = t.strictInterface({
	player = t.instanceIsA("Player"),
	titlePlayerEntry = t.boolean,
	hasDivider = t.boolean,
	entrySize = t.integer,

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

	gameStats = t.array(t.strictInterface({
		name = t.string,
		text = t.string,
		addId = t.integer,
		isPrimary = t.boolean,
		priority = t.number,
	})),

	[Roact.Ref] = t.optional(t.table),

	selectedPlayer = t.optional(t.instanceIsA("Player")),
	dropDownOpen = t.boolean,

	isSmallTouchDevice = FFlagFixLeaderboardWaitingOnScreenSize and t.boolean or nil,

	closeDropDown = t.callback,
	openDropDown = t.callback,
})

function PlayerEntry:init()
	self.state  = {
		isHovered = false,
		isPressed = false,
	}

	self.onActivated = function()
		if self.props.selectedPlayer == self.props.player and self.props.dropDownOpen then
			self.props.closeDropDown()
		else
			self.props.openDropDown(self.props.player)
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

function PlayerEntry:getBackgroundStyle(layoutValues, style)
	if not layoutValues.IsTenFoot then
		return {
			Color = style.Theme.BackgroundContrast.Color,
			Transparency = 1,
		}
	end

	local isSelected = self.props.dropDownOpen and self.props.selectedPlayer == self.props.player
	local isHovered = self.state.isHovered

	if self.props.titlePlayerEntry then
		if isHovered and layoutValues.BackgroundStyle.HoveredTitle then
			return layoutValues.BackgroundStyle.HoveredTitle
		elseif layoutValues.BackgroundStyle.Title then
			return layoutValues.BackgroundStyle.Title
		end
	end

	if isSelected and layoutValues.BackgroundStyle.Selected then
		return layoutValues.BackgroundStyle.Selected
	end

	if isHovered and layoutValues.BackgroundStyle.Hovered then
		return layoutValues.BackgroundStyle.Hovered
	end

	return layoutValues.BackgroundStyle.Default
end

function PlayerEntry:getOverlayStyle(layoutValues, style)
	if not layoutValues.IsTenFoot then
		local isSelected = self.props.dropDownOpen and self.props.selectedPlayer == self.props.player
		if self.state.isPressed then
			return style.Theme.BackgroundOnPress
		elseif isSelected then
			return style.Theme.BackgroundOnPress
		elseif self.state.isHovered then
			return style.Theme.BackgroundOnHover
		end
	end

	return {
		Transparency = 1,
		Color = Color3.new(1, 1, 1),
	}
end

function PlayerEntry:getTextStyle(layoutValues, style)
	if layoutValues.IsTenFoot then
		if self.state.isHovered then
			return layoutValues.HoveredTextStyle, layoutValues.PlayerNameTextSize
		end
		return layoutValues.DefaultTextStyle, layoutValues.PlayerNameTextSize
	end

	local isLocalPlayer = self.props.player == Players.LocalPlayer
	if isLocalPlayer then
		return style.Theme.TextEmphasis
	end

	return style.Theme.TextMuted
end

function PlayerEntry:getPlayerNameFont(layoutValues, style)
	if layoutValues.IsTenFoot then
		if self.props.titlePlayerEntry then
			return {
				Font = layoutValues.TitlePlayerEntryFont,
				Size = layoutValues.PlayerNameTextSize,
				MinSize = layoutValues.PlayerNameTextSize,
			}
		end
		return {
			Font = layoutValues.PlayerEntryFont,
			Size = layoutValues.PlayerNameTextSize,
			MinSize = layoutValues.PlayerNameTextSize,
		}
	end

	local isLocalPlayer = self.props.player == Players.LocalPlayer
	if isLocalPlayer then
		return {
			Font = style.Font.CaptionHeader.Font,
			Size = style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize,
			MinSize = style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
		}
	end

	return {
		Font = style.Font.CaptionBody.Font,
		Size = style.Font.CaptionBody.RelativeSize * style.Font.BaseSize,
		MinSize = style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
	}
end

function PlayerEntry:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local backgroundStyle = self:getBackgroundStyle(layoutValues, style)
			local textStyle = self:getTextStyle(layoutValues, style)
			local playerNameFont = self:getPlayerNameFont(layoutValues, style)
			local overlayStyle = self:getOverlayStyle(layoutValues, style)

			local entrySizeX = self.props.entrySize

			local playerEntryChildren = {}

			local padding = nil
			if layoutValues.IsTenFoot then
				padding = UDim.new(0, layoutValues.PlayerEntryPadding)
			end
			playerEntryChildren["Layout"] = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = padding,
			})

			local doubleOverlay = self.state.isPressed

			playerEntryChildren["NameFrame"] = Roact.createElement("Frame", {
				LayoutOrder = 0,
				Size = UDim2.new(0, entrySizeX, 0, layoutValues.PlayerEntrySizeY),
				BackgroundTransparency = 1,
			}, {
				Shadow = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Image = layoutValues.ShadowImage,
					Position = UDim2.new(0, -layoutValues.ShadowSize, 0, 0),
					Size = UDim2.new(1, layoutValues.ShadowSize * 2, 1, layoutValues.ShadowSize),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = layoutValues.ShadowSliceRect,
					Visible = layoutValues.IsTenFoot,
				}),

				BGFrame = Roact.createElement(EntryFrame, {
					sizeX = entrySizeX,
					sizeY = layoutValues.PlayerEntrySizeY,
					isTeamFrame = false,
					backgroundStyle = backgroundStyle,
					overlayStyle = overlayStyle,
					doubleOverlay = doubleOverlay,

					onActivated = self.onActivated,
					onSelectionGained = self.onSelectionGained,
					onSelectionLost = self.onSelectionLost,

					onMouseEnter = self.onMouseEnter,
					onMouseLeave = self.onMouseLeave,

					onMouseDown = self.onMouseDown,
					onInputEnded = self.onInputEnded,

					[Roact.Ref] = self.props[Roact.Ref]
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						Padding = UDim.new(0, FFlagPlayerListFormattingUpdates
							and layoutValues.PlayerEntryNamePadding
							or layoutValues.PlayerEntryPadding)
					}),

					InitalPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, layoutValues.InitalPlayerEntryPadding)
					}),

					PlayerIcon = Roact.createElement(PlayerIcon, {
						player = self.props.player,
						playerIconInfo = self.props.playerIconInfo,
						playerRelationship = self.props.playerRelationship,
						layoutOrder = 1,
					}),

					PlayerName = Roact.createElement(PlayerNameTag, {
						player = self.props.player,
						isTitleEntry = self.props.titlePlayerEntry,
						isHovered = self.state.isHovered,
						layoutOrder = 3,

						textStyle = textStyle,
						textFont = playerNameFont,
					}),
				})
			})

			local maxLeaderstats = layoutValues.MaxLeaderstats
			if FFlagFixLeaderboardWaitingOnScreenSize and self.props.isSmallTouchDevice then
				maxLeaderstats = layoutValues.MaxLeaderstatsSmallScreen
			end

			for i, gameStat in ipairs(self.props.gameStats) do
				if i > maxLeaderstats then
					break
				end
				playerEntryChildren["GameStat_" ..gameStat.name] = Roact.createElement(StatEntry, {
					statName = gameStat.name,
					statValue = self.props.playerStats[gameStat.name],
					isTitleEntry = self.props.titlePlayerEntry,
					isTeamEntry = false,
					layoutOrder = i,

					backgroundStyle = backgroundStyle,
					overlayStyle = overlayStyle,
					doubleOverlay = doubleOverlay,
					textStyle = textStyle,

					onActivated = self.onActivated,
					onSelectionGained = self.onSelectionGained,
					onSelectionLost = self.onSelectionLost,

					onMouseEnter = self.onMouseEnter,
					onMouseLeave = self.onMouseLeave,

					onMouseDown = self.onMouseDown,
					onInputEnded = self.onInputEnded,
				})
			end

			if not layoutValues.IsTenFoot then
				playerEntryChildren["BackgroundExtender"] = Roact.createElement(CellExtender, {
					layoutOrder = 100,
					size = UDim2.new(0, layoutValues.ExtraContainerPadding, 1, 0),
					backgroundStyle = backgroundStyle,
					overlayStyle = overlayStyle,
					doubleOverlay = doubleOverlay,
				})
			end

			return Roact.createFragment({
				ChildrenFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, playerEntryChildren),

				Divider = not layoutValues.IsTenFoot and self.props.hasDivider and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = style.Theme.Divider.Transparency,
					BackgroundColor3 = style.Theme.Divider.Color,
					BorderSizePixel = 0,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state)
	return {
		selectedPlayer = state.playerDropDown.selectedPlayer,
		dropDownOpen = state.playerDropDown.isVisible,

		isSmallTouchDevice = FFlagFixLeaderboardWaitingOnScreenSize and state.displayOptions.isSmallTouchDevice or nil,
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
return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(PlayerEntry)
