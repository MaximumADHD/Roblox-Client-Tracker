local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GameTranslator = require(RobloxGui.Modules.GameTranslator)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local EntryFrame = require(script.Parent.EntryFrame)
local StatEntry = require(script.Parent.StatEntry)

local TeamEntry = Roact.PureComponent:extend("TeamEntry")

function TeamEntry:render()
	return WithLayoutValues(function(layoutValues)
		local teamName = layoutValues.NeutralTeamName
		local teamColor = layoutValues.NeutralTeamColor.Color
		if self.props.teamName then
			teamName = GameTranslator:TranslateGameText(CoreGui, self.props.teamName)
			teamColor = self.props.teamColor.Color
		end

		local teamEntryChildren = {}
		teamEntryChildren["Layout"] = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, layoutValues.PlayerEntryPadding)
		})

		teamEntryChildren["NameFrame"] = Roact.createElement("Frame", {
			LayoutOrder = 0,
			Size = UDim2.new(0, layoutValues.EntrySizeX, 0, layoutValues.TeamEntrySizeY),
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
				isTitleFrame = false,
				sizeX = layoutValues.EntrySizeX,
				sizeY = layoutValues.TeamEntrySizeY,
				teamColor = teamColor,
			}, {
				TeamName = Roact.createElement("TextLabel", {
					Position = UDim2.new(0, 5, 0, 0),
					Size = UDim2.new(1, -5, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Font = layoutValues.TeamEntryFont,
					TextSize = layoutValues.PlayerNameTextSize,
					TextColor3 = layoutValues.TextColor,
					TextStrokeTransparency = layoutValues.TextStrokeTransparency,
					TextStrokeColor3 = layoutValues.TextStrokeColor,
					BackgroundTransparency = 1,
					Text = teamName,
				})
			})
		})

		for i, gameStat in ipairs(self.props.gameStats) do
			if i > layoutValues.MaxLeaderstats then
				break
			end
			teamEntryChildren[gameStat.name] = Roact.createElement(StatEntry, {
				layoutOrder = i,
				isTitleEntry = self.props.titlePlayerEntry,
				statName = gameStat.name,
				statValue = self.props.leaderstats[gameStat.name],
				teamColor = teamColor,
			})
		end

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			Size = UDim2.new(
				1,
				layoutValues.EntryXOffset,
				0,
				layoutValues.TeamEntrySizeY
			),
			BackgroundTransparency = 1,
		}, teamEntryChildren)
	end)
end

return TeamEntry