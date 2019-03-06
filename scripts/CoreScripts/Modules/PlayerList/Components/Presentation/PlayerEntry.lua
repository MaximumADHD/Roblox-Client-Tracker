local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local EntryFrame = require(script.Parent.EntryFrame)
local PlayerIcon = require(script.Parent.PlayerIcon)
local SocialIcon = require(script.Parent.SocialIcon)
local PlayerNameTag = require(script.Parent.PlayerNameTag)
local StatEntry = require(script.Parent.StatEntry)

local PlayerEntry = Roact.PureComponent:extend("PlayerEntry")

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
				sizeX = layoutValues.EntrySizeX,
				sizeY = layoutValues.PlayerEntrySizeY,
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
					isSelected = false, -- TODO: get this from state.
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
			ZIndex = layoutValues.IsTenFoot and 2 or 1,
		}, playerEntryChildren)
	end)
end

return PlayerEntry