local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local EntryFrame = require(script.Parent.EntryFrame)
local PlayerIcon = require(script.Parent.PlayerIcon)
local SocialIcon = require(script.Parent.SocialIcon)
local PlayerNameTag = require(script.Parent.PlayerNameTag)
local StatEntry = require(script.Parent.StatEntry)

local PlayerList = Components.Parent
local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local OpenPlayerDropDown = require(PlayerList.Actions.OpenPlayerDropDown)

local PlayerEntry = Roact.PureComponent:extend("PlayerEntry")

function PlayerEntry:init()
	self.state  = {
		isGamepadSelected = false,
	}
end

function PlayerEntry:render()
	return WithLayoutValues(function(layoutValues)
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
				isTitleFrame = self.props.titlePlayerEntry,
				hasOpenDropDown =  self.props.selectedPlayer == self.props.player and self.props.dropDownOpen,
				sizeX = layoutValues.EntrySizeX,
				sizeY = layoutValues.PlayerEntrySizeY,
				onActivated = function()
					if self.props.selectedPlayer == self.props.player and self.props.dropDownOpen then
						self.props.closeDropDown()
					else
						self.props.openDropDown(self.props.player)
					end
				end,

				onSelectionGained = function()
					self:setState({
						isGamepadSelected = true,
					})
				end,

				onSelectionLost = function()
					self:setState({
						isGamepadSelected = true,
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
					layoutOrder = 1,
				}),

				SocialIcon = Roact.createElement(SocialIcon, {
					playerRelationship = self.props.playerRelationship,
					layoutOrder = 2,
				}),

				PlayerName = Roact.createElement(PlayerNameTag, {
					player = self.props.player,
					isTitleEntry = self.props.titlePlayerEntry,
					isSelected = self.state.isGamepadSelected,
					layoutOrder = 3,
				}),
			})
		})

		for i, gameStat in ipairs(self.props.gameStats) do
			if i > layoutValues.MaxLeaderstats then
				break
			end
			playerEntryChildren[gameStat.name] = Roact.createElement(StatEntry, {
				layoutOrder = i,
				isTitleEntry = self.props.titlePlayerEntry,
				statName = gameStat.name,
				statValue = self.props.playerStats[gameStat.name],
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