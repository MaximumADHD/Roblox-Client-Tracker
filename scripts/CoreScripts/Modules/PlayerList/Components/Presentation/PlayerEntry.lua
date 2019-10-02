local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local EntryFrame = require(script.Parent.EntryFrame)
local PlayerIcon = require(script.Parent.PlayerIcon)
local PlayerNameTag = require(script.Parent.PlayerNameTag)
local StatEntry = require(script.Parent.StatEntry)

local PlayerList = Components.Parent
local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local OpenPlayerDropDown = require(PlayerList.Actions.OpenPlayerDropDown)

local PlayerEntry = Roact.PureComponent:extend("PlayerEntry")

function PlayerEntry:init()
	self.state  = {
		isHovered = false,
	}
end

function PlayerEntry:getBackgroundStyle(layoutValues)
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

function PlayerEntry:getTextStyle(layoutValues)
	local isSelected = self.props.dropDownOpen and self.props.selectedPlayer == self.props.player
	local isLocalPlayer = self.props.player == Players.LocalPlayer
	local isHovered = self.state.isHovered

	if isLocalPlayer then
		if isSelected and layoutValues.TextStyle.LocalPlayerSelected then
			return layoutValues.TextStyle.LocalPlayerSelected
		elseif layoutValues.TextStyle.LocalPlayer then
			return layoutValues.TextStyle.LocalPlayer
		end
	end

	if isSelected and layoutValues.TextStyle.Selected then
		return layoutValues.TextStyle.Selected
	end

	if isHovered and layoutValues.TextStyle.Hovered then
		return layoutValues.TextStyle.Hovered
	end

	return layoutValues.TextStyle.Default
end

function PlayerEntry:render()
	return WithLayoutValues(function(layoutValues)
		local backgroundStyle = self:getBackgroundStyle(layoutValues)
		local textStyle = self:getTextStyle(layoutValues)

		local playerEntryChildren = {}

		playerEntryChildren["Layout"] = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, layoutValues.PlayerEntryPadding)
		})

		playerEntryChildren["NameFrame"] = Roact.createElement("Frame", {
			LayoutOrder = 0,
			Size = UDim2.new(0, layoutValues.EntrySizeX, 0, layoutValues.PlayerEntrySizeY),
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
				sizeX = layoutValues.EntrySizeX,
				sizeY = layoutValues.PlayerEntrySizeY,
				isTeamFrame = false,
				backgroundStyle = backgroundStyle,

				onActivated = function()
					if self.props.selectedPlayer == self.props.player and self.props.dropDownOpen then
						self.props.closeDropDown()
					else
						self.props.openDropDown(self.props.player)
					end
				end,

				onSelectionGained = function()
					self:setState({
						isHovered = true,
					})
				end,

				onSelectionLost = function()
					self:setState({
						isHovered = false,
					})
				end,

				onMouseEnter = function()
					self:setState({
						isHovered = true,
					})
				end,

				onMouseLeave = function()
					self:setState({
						isHovered = false,
					})
				end,

				[Roact.Ref] = self.props[Roact.Ref]
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, layoutValues.PlayerEntryPadding)
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

					textStyle = textStyle
				}),
			})
		})

		for i, gameStat in ipairs(self.props.gameStats) do
			if i > layoutValues.MaxLeaderstats then
				break
			end
			playerEntryChildren[gameStat.name] = Roact.createElement(StatEntry, {
				statName = gameStat.name,
				statValue = self.props.playerStats[gameStat.name],
				isTitleEntry = self.props.titlePlayerEntry,
				isTeamEntry = false,
				layoutOrder = i,

				backgroundStyle = backgroundStyle,
				textStyle = textStyle,
			})
		end

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			Size = UDim2.new(
				1,
				layoutValues.EntryXOffset,
				0,
				layoutValues.PlayerEntrySizeY
			),
			BackgroundTransparency = 1,
		}, playerEntryChildren)
	end)
end

local function mapStateToProps(state)
	return {
		selectedPlayer = state.playerDropDown.selectedPlayer,
		dropDownOpen = state.playerDropDown.isVisible,
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