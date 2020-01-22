local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GameTranslator = require(RobloxGui.Modules.GameTranslator)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local EntryFrame = require(script.Parent.EntryFrame)
local StatEntry = require(script.Parent.StatEntry)
local CellExtender = require(script.Parent.CellExtender)

local FFlagPlayerListDesignUpdate = settings():GetFFlag("PlayerListDesignUpdate")

local TeamEntry = Roact.PureComponent:extend("TeamEntry")

function TeamEntry:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local teamName = layoutValues.NeutralTeamName
			local teamColor = layoutValues.NeutralTeamColor.Color
			if self.props.teamName then
				teamName = GameTranslator:TranslateGameText(CoreGui, self.props.teamName)
				teamColor = self.props.teamColor.Color
			end

			local backgroundStyle
			if FFlagPlayerListDesignUpdate and not layoutValues.IsTenFoot then
				if self.props.teamColor then
					backgroundStyle = {
						Color = self.props.teamColor.Color,
						Transparency = layoutValues.TeamEntryBackgroundTransparency,
					}
				else
					backgroundStyle = style.Theme.Divider
				end
			else
				backgroundStyle = {
					Color = teamColor,
					Transparency = layoutValues.BackgroundStyle.Default.Transparency,
				}
			end
			local overlayStyle
			if FFlagPlayerListDesignUpdate then
				overlayStyle = {
					Transparency = 1,
					Color = Color3.new(1, 1, 1),
				}
			end

			local textStyle
			if FFlagPlayerListDesignUpdate then
				if layoutValues.IsTenFoot then
					textStyle = layoutValues.DefaultTextStyle
				else
					textStyle = style.Theme.TextEmphasis
				end
			else
				textStyle = layoutValues.TextStyle.Default
			end

			local entrySizeX
			if FFlagPlayerListDesignUpdate then
				entrySizeX = self.props.entrySize
			else
				entrySizeX = layoutValues.EntrySizeX
			end

			local textSize, textFont
			if FFlagPlayerListDesignUpdate and not layoutValues.IsTenFoot then
				textSize = style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize
				textFont = style.Font.CaptionHeader.Font
			else
				textSize = layoutValues.PlayerNameTextSize
				textFont = layoutValues.TeamEntryFont
			end

			local teamEntryChildren = {}
			local padding = nil
			if not FFlagPlayerListDesignUpdate or layoutValues.IsTenFoot then
				padding = UDim.new(0, layoutValues.PlayerEntryPadding)
			end
			teamEntryChildren["Layout"] = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = padding
			})

			local doubleOverlay = nil
			if FFlagPlayerListDesignUpdate then
				doubleOverlay = false
			end

			teamEntryChildren["NameFrame"] = Roact.createElement("Frame", {
				LayoutOrder = 0,
				Size = UDim2.new(0, entrySizeX, 0, layoutValues.TeamEntrySizeY),
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
					sizeY = layoutValues.TeamEntrySizeY,
					isTeamFrame = true,

					backgroundStyle = backgroundStyle,
					overlayStyle = overlayStyle,
					doubleOverlay = doubleOverlay,
				}, {
					TeamName = Roact.createElement("TextLabel", {
						Position = FFlagPlayerListDesignUpdate and UDim2.new(0, 0, 0, 0) or UDim2.new(0, 5, 0, 0),
						Size = FFlagPlayerListDesignUpdate and UDim2.new(1, 0, 1, 0) or UDim2.new(1, -5, 1, 0),
						TextXAlignment = Enum.TextXAlignment.Left,
						Font = textFont,
						TextSize = textSize,
						TextColor3 = textStyle.Color,
						TextStrokeTransparency = textStyle.StrokeTransparency,
						TextStrokeColor3 = textStyle.StrokeColor,
						BackgroundTransparency = 1,
						Text = teamName,
					}, {
						FFlagPlayerListDesignUpdate and Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, layoutValues.TeamEntryTextPadding),
						}) or nil,
					})
				})
			})

			for i, gameStat in ipairs(self.props.gameStats) do
				if i > layoutValues.MaxLeaderstats then
					break
				end
				teamEntryChildren["gameStat_" ..gameStat.name] = Roact.createElement(StatEntry, {
					statName = gameStat.name,
					statValue = self.props.leaderstats[gameStat.name],
					isTitleEntry = false,
					isTeamEntry = true,
					layoutOrder = i,

					backgroundStyle = backgroundStyle,
					overlayStyle = overlayStyle,
					doubleOverlay = doubleOverlay,
					textStyle = textStyle
				})
			end

			if FFlagPlayerListDesignUpdate and not layoutValues.IsTenFoot then
				teamEntryChildren["BackgroundExtender"] = Roact.createElement(CellExtender, {
					layoutOrder = 100,
					size = UDim2.new(0, layoutValues.ExtraContainerPadding, 1, 0),
					backgroundStyle = backgroundStyle,
					overlayStyle = overlayStyle,
					doubleOverlay = doubleOverlay,
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
	end)
end

return TeamEntry